package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.collection.ArraySet;
import androidx.core.util.DebugUtils;
import androidx.core.util.LogWriter;
import androidx.core.view.OneShotPreDrawListener;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

final class FragmentManagerImpl extends FragmentManager implements LayoutInflater.Factory2 {
  static final int ANIM_DUR = 220;
  
  public static final int ANIM_STYLE_CLOSE_ENTER = 3;
  
  public static final int ANIM_STYLE_CLOSE_EXIT = 4;
  
  public static final int ANIM_STYLE_FADE_ENTER = 5;
  
  public static final int ANIM_STYLE_FADE_EXIT = 6;
  
  public static final int ANIM_STYLE_OPEN_ENTER = 1;
  
  public static final int ANIM_STYLE_OPEN_EXIT = 2;
  
  static boolean DEBUG = false;
  
  static final Interpolator DECELERATE_CUBIC;
  
  static final Interpolator DECELERATE_QUINT = (Interpolator)new DecelerateInterpolator(2.5F);
  
  static final String TAG = "FragmentManager";
  
  static final String TARGET_REQUEST_CODE_STATE_TAG = "android:target_req_state";
  
  static final String TARGET_STATE_TAG = "android:target_state";
  
  static final String USER_VISIBLE_HINT_TAG = "android:user_visible_hint";
  
  static final String VIEW_STATE_TAG = "android:view_state";
  
  final HashMap<String, Fragment> mActive = new HashMap<String, Fragment>();
  
  final ArrayList<Fragment> mAdded = new ArrayList<Fragment>();
  
  ArrayList<Integer> mAvailBackStackIndices;
  
  ArrayList<BackStackRecord> mBackStack;
  
  ArrayList<FragmentManager.OnBackStackChangedListener> mBackStackChangeListeners;
  
  ArrayList<BackStackRecord> mBackStackIndices;
  
  FragmentContainer mContainer;
  
  ArrayList<Fragment> mCreatedMenus;
  
  int mCurState = 0;
  
  boolean mDestroyed;
  
  Runnable mExecCommit = new Runnable() {
      public void run() {
        FragmentManagerImpl.this.execPendingActions();
      }
    };
  
  boolean mExecutingActions;
  
  boolean mHavePendingDeferredStart;
  
  FragmentHostCallback mHost;
  
  private final CopyOnWriteArrayList<FragmentLifecycleCallbacksHolder> mLifecycleCallbacks = new CopyOnWriteArrayList<FragmentLifecycleCallbacksHolder>();
  
  boolean mNeedMenuInvalidate;
  
  int mNextFragmentIndex = 0;
  
  private FragmentManagerViewModel mNonConfig;
  
  private final OnBackPressedCallback mOnBackPressedCallback = new OnBackPressedCallback(false) {
      public void handleOnBackPressed() {
        FragmentManagerImpl.this.handleOnBackPressed();
      }
    };
  
  private OnBackPressedDispatcher mOnBackPressedDispatcher;
  
  Fragment mParent;
  
  ArrayList<OpGenerator> mPendingActions;
  
  ArrayList<StartEnterTransitionListener> mPostponedTransactions;
  
  Fragment mPrimaryNav;
  
  SparseArray<Parcelable> mStateArray = null;
  
  Bundle mStateBundle = null;
  
  boolean mStateSaved;
  
  boolean mStopped;
  
  ArrayList<Fragment> mTmpAddedFragments;
  
  ArrayList<Boolean> mTmpIsPop;
  
  ArrayList<BackStackRecord> mTmpRecords;
  
  static {
    DECELERATE_CUBIC = (Interpolator)new DecelerateInterpolator(1.5F);
  }
  
  private void addAddedFragments(ArraySet<Fragment> paramArraySet) {
    int i = this.mCurState;
    if (i < 1)
      return; 
    int j = Math.min(i, 3);
    int k = this.mAdded.size();
    for (i = 0; i < k; i++) {
      Fragment fragment = this.mAdded.get(i);
      if (fragment.mState < j) {
        moveToState(fragment, j, fragment.getNextAnim(), fragment.getNextTransition(), false);
        if (fragment.mView != null && !fragment.mHidden && fragment.mIsNewlyAdded)
          paramArraySet.add(fragment); 
      } 
    } 
  }
  
  private void animateRemoveFragment(final Fragment fragment, AnimationOrAnimator paramAnimationOrAnimator, int paramInt) {
    EndViewTransitionAnimation endViewTransitionAnimation;
    final View viewToAnimate = fragment.mView;
    final ViewGroup container = fragment.mContainer;
    viewGroup.startViewTransition(view);
    fragment.setStateAfterAnimating(paramInt);
    if (paramAnimationOrAnimator.animation != null) {
      endViewTransitionAnimation = new EndViewTransitionAnimation(paramAnimationOrAnimator.animation, viewGroup, view);
      fragment.setAnimatingAway(fragment.mView);
      endViewTransitionAnimation.setAnimationListener(new Animation.AnimationListener() {
            public void onAnimationEnd(Animation param1Animation) {
              container.post(new Runnable() {
                    public void run() {
                      if (fragment.getAnimatingAway() != null) {
                        fragment.setAnimatingAway(null);
                        FragmentManagerImpl.this.moveToState(fragment, fragment.getStateAfterAnimating(), 0, 0, false);
                      } 
                    }
                  });
            }
            
            public void onAnimationRepeat(Animation param1Animation) {}
            
            public void onAnimationStart(Animation param1Animation) {}
          });
      fragment.mView.startAnimation((Animation)endViewTransitionAnimation);
    } else {
      Animator animator = ((AnimationOrAnimator)endViewTransitionAnimation).animator;
      fragment.setAnimator(((AnimationOrAnimator)endViewTransitionAnimation).animator);
      animator.addListener((Animator.AnimatorListener)new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator param1Animator) {
              container.endViewTransition(viewToAnimate);
              param1Animator = fragment.getAnimator();
              fragment.setAnimator(null);
              if (param1Animator != null && container.indexOfChild(viewToAnimate) < 0) {
                FragmentManagerImpl fragmentManagerImpl = FragmentManagerImpl.this;
                Fragment fragment = fragment;
                fragmentManagerImpl.moveToState(fragment, fragment.getStateAfterAnimating(), 0, 0, false);
              } 
            }
          });
      animator.setTarget(fragment.mView);
      animator.start();
    } 
  }
  
  private void burpActive() {
    this.mActive.values().removeAll(Collections.singleton(null));
  }
  
  private void checkStateLoss() {
    if (!isStateSaved())
      return; 
    throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
  }
  
  private void cleanupExec() {
    this.mExecutingActions = false;
    this.mTmpIsPop.clear();
    this.mTmpRecords.clear();
  }
  
  private void dispatchParentPrimaryNavigationFragmentChanged(Fragment paramFragment) {
    if (paramFragment != null && this.mActive.get(paramFragment.mWho) == paramFragment)
      paramFragment.performPrimaryNavigationFragmentChanged(); 
  }
  
  private void dispatchStateChange(int paramInt) {
    try {
      this.mExecutingActions = true;
      moveToState(paramInt, false);
      this.mExecutingActions = false;
      return;
    } finally {
      this.mExecutingActions = false;
    } 
  }
  
  private void endAnimatingAwayFragments() {
    for (Fragment fragment : this.mActive.values()) {
      if (fragment != null) {
        if (fragment.getAnimatingAway() != null) {
          int i = fragment.getStateAfterAnimating();
          View view = fragment.getAnimatingAway();
          Animation animation = view.getAnimation();
          if (animation != null) {
            animation.cancel();
            view.clearAnimation();
          } 
          fragment.setAnimatingAway(null);
          moveToState(fragment, i, 0, 0, false);
          continue;
        } 
        if (fragment.getAnimator() != null)
          fragment.getAnimator().end(); 
      } 
    } 
  }
  
  private void ensureExecReady(boolean paramBoolean) {
    if (!this.mExecutingActions) {
      if (this.mHost != null) {
        if (Looper.myLooper() == this.mHost.getHandler().getLooper()) {
          if (!paramBoolean)
            checkStateLoss(); 
          if (this.mTmpRecords == null) {
            this.mTmpRecords = new ArrayList<BackStackRecord>();
            this.mTmpIsPop = new ArrayList<Boolean>();
          } 
          this.mExecutingActions = true;
          try {
            executePostponedTransaction((ArrayList<BackStackRecord>)null, (ArrayList<Boolean>)null);
            return;
          } finally {
            this.mExecutingActions = false;
          } 
        } 
        throw new IllegalStateException("Must be called from main thread of fragment host");
      } 
      throw new IllegalStateException("Fragment host has been destroyed");
    } 
    throw new IllegalStateException("FragmentManager is already executing transactions");
  }
  
  private static void executeOps(ArrayList<BackStackRecord> paramArrayList, ArrayList<Boolean> paramArrayList1, int paramInt1, int paramInt2) {
    while (paramInt1 < paramInt2) {
      BackStackRecord backStackRecord = paramArrayList.get(paramInt1);
      boolean bool = ((Boolean)paramArrayList1.get(paramInt1)).booleanValue();
      boolean bool1 = true;
      if (bool) {
        backStackRecord.bumpBackStackNesting(-1);
        if (paramInt1 != paramInt2 - 1)
          bool1 = false; 
        backStackRecord.executePopOps(bool1);
      } else {
        backStackRecord.bumpBackStackNesting(1);
        backStackRecord.executeOps();
      } 
      paramInt1++;
    } 
  }
  
  private void executeOpsTogether(ArrayList<BackStackRecord> paramArrayList, ArrayList<Boolean> paramArrayList1, int paramInt1, int paramInt2) {
    int i = paramInt1;
    boolean bool = ((BackStackRecord)paramArrayList.get(i)).mReorderingAllowed;
    ArrayList<Fragment> arrayList = this.mTmpAddedFragments;
    if (arrayList == null) {
      this.mTmpAddedFragments = new ArrayList<Fragment>();
    } else {
      arrayList.clear();
    } 
    this.mTmpAddedFragments.addAll(this.mAdded);
    Fragment fragment = getPrimaryNavigationFragment();
    int j = i;
    boolean bool1 = false;
    while (j < paramInt2) {
      BackStackRecord backStackRecord = paramArrayList.get(j);
      if (!((Boolean)paramArrayList1.get(j)).booleanValue()) {
        fragment = backStackRecord.expandOps(this.mTmpAddedFragments, fragment);
      } else {
        fragment = backStackRecord.trackAddedFragmentsInPop(this.mTmpAddedFragments, fragment);
      } 
      if (bool1 || backStackRecord.mAddToBackStack) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      j++;
    } 
    this.mTmpAddedFragments.clear();
    if (!bool)
      FragmentTransition.startTransitions(this, paramArrayList, paramArrayList1, paramInt1, paramInt2, false); 
    executeOps(paramArrayList, paramArrayList1, paramInt1, paramInt2);
    if (bool) {
      ArraySet<Fragment> arraySet = new ArraySet();
      addAddedFragments(arraySet);
      j = postponePostponableTransactions(paramArrayList, paramArrayList1, paramInt1, paramInt2, arraySet);
      makeRemovedFragmentsInvisible(arraySet);
    } else {
      j = paramInt2;
    } 
    int k = i;
    if (j != i) {
      k = i;
      if (bool) {
        FragmentTransition.startTransitions(this, paramArrayList, paramArrayList1, paramInt1, j, true);
        moveToState(this.mCurState, true);
        k = i;
      } 
    } 
    while (k < paramInt2) {
      BackStackRecord backStackRecord = paramArrayList.get(k);
      if (((Boolean)paramArrayList1.get(k)).booleanValue() && backStackRecord.mIndex >= 0) {
        freeBackStackIndex(backStackRecord.mIndex);
        backStackRecord.mIndex = -1;
      } 
      backStackRecord.runOnCommitRunnables();
      k++;
    } 
    if (bool1)
      reportBackStackChanged(); 
  }
  
  private void executePostponedTransaction(ArrayList<BackStackRecord> paramArrayList, ArrayList<Boolean> paramArrayList1) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mPostponedTransactions : Ljava/util/ArrayList;
    //   4: astore_3
    //   5: aload_3
    //   6: ifnonnull -> 15
    //   9: iconst_0
    //   10: istore #4
    //   12: goto -> 21
    //   15: aload_3
    //   16: invokevirtual size : ()I
    //   19: istore #4
    //   21: iconst_0
    //   22: istore #5
    //   24: iload #4
    //   26: istore #6
    //   28: iload #5
    //   30: iload #6
    //   32: if_icmpge -> 250
    //   35: aload_0
    //   36: getfield mPostponedTransactions : Ljava/util/ArrayList;
    //   39: iload #5
    //   41: invokevirtual get : (I)Ljava/lang/Object;
    //   44: checkcast androidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener
    //   47: astore_3
    //   48: aload_1
    //   49: ifnull -> 119
    //   52: aload_3
    //   53: getfield mIsBack : Z
    //   56: ifne -> 119
    //   59: aload_1
    //   60: aload_3
    //   61: getfield mRecord : Landroidx/fragment/app/BackStackRecord;
    //   64: invokevirtual indexOf : (Ljava/lang/Object;)I
    //   67: istore #4
    //   69: iload #4
    //   71: iconst_m1
    //   72: if_icmpeq -> 119
    //   75: aload_2
    //   76: iload #4
    //   78: invokevirtual get : (I)Ljava/lang/Object;
    //   81: checkcast java/lang/Boolean
    //   84: invokevirtual booleanValue : ()Z
    //   87: ifeq -> 119
    //   90: aload_0
    //   91: getfield mPostponedTransactions : Ljava/util/ArrayList;
    //   94: iload #5
    //   96: invokevirtual remove : (I)Ljava/lang/Object;
    //   99: pop
    //   100: iload #5
    //   102: iconst_1
    //   103: isub
    //   104: istore #4
    //   106: iload #6
    //   108: iconst_1
    //   109: isub
    //   110: istore #7
    //   112: aload_3
    //   113: invokevirtual cancelTransaction : ()V
    //   116: goto -> 237
    //   119: aload_3
    //   120: invokevirtual isReady : ()Z
    //   123: ifne -> 162
    //   126: iload #5
    //   128: istore #4
    //   130: iload #6
    //   132: istore #7
    //   134: aload_1
    //   135: ifnull -> 237
    //   138: iload #5
    //   140: istore #4
    //   142: iload #6
    //   144: istore #7
    //   146: aload_3
    //   147: getfield mRecord : Landroidx/fragment/app/BackStackRecord;
    //   150: aload_1
    //   151: iconst_0
    //   152: aload_1
    //   153: invokevirtual size : ()I
    //   156: invokevirtual interactsWith : (Ljava/util/ArrayList;II)Z
    //   159: ifeq -> 237
    //   162: aload_0
    //   163: getfield mPostponedTransactions : Ljava/util/ArrayList;
    //   166: iload #5
    //   168: invokevirtual remove : (I)Ljava/lang/Object;
    //   171: pop
    //   172: iload #5
    //   174: iconst_1
    //   175: isub
    //   176: istore #4
    //   178: iload #6
    //   180: iconst_1
    //   181: isub
    //   182: istore #7
    //   184: aload_1
    //   185: ifnull -> 233
    //   188: aload_3
    //   189: getfield mIsBack : Z
    //   192: ifne -> 233
    //   195: aload_1
    //   196: aload_3
    //   197: getfield mRecord : Landroidx/fragment/app/BackStackRecord;
    //   200: invokevirtual indexOf : (Ljava/lang/Object;)I
    //   203: istore #5
    //   205: iload #5
    //   207: iconst_m1
    //   208: if_icmpeq -> 233
    //   211: aload_2
    //   212: iload #5
    //   214: invokevirtual get : (I)Ljava/lang/Object;
    //   217: checkcast java/lang/Boolean
    //   220: invokevirtual booleanValue : ()Z
    //   223: ifeq -> 233
    //   226: aload_3
    //   227: invokevirtual cancelTransaction : ()V
    //   230: goto -> 237
    //   233: aload_3
    //   234: invokevirtual completeTransaction : ()V
    //   237: iload #4
    //   239: iconst_1
    //   240: iadd
    //   241: istore #5
    //   243: iload #7
    //   245: istore #6
    //   247: goto -> 28
    //   250: return
  }
  
  private Fragment findFragmentUnder(Fragment paramFragment) {
    ViewGroup viewGroup = paramFragment.mContainer;
    View view = paramFragment.mView;
    if (viewGroup != null && view != null)
      for (int i = this.mAdded.indexOf(paramFragment) - 1; i >= 0; i--) {
        paramFragment = this.mAdded.get(i);
        if (paramFragment.mContainer == viewGroup && paramFragment.mView != null)
          return paramFragment; 
      }  
    return null;
  }
  
  private void forcePostponedTransactions() {
    if (this.mPostponedTransactions != null)
      while (!this.mPostponedTransactions.isEmpty())
        ((StartEnterTransitionListener)this.mPostponedTransactions.remove(0)).completeTransaction();  
  }
  
  private boolean generateOpsForPendingActions(ArrayList<BackStackRecord> paramArrayList, ArrayList<Boolean> paramArrayList1) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield mPendingActions : Ljava/util/ArrayList;
    //   6: astore_3
    //   7: iconst_0
    //   8: istore #4
    //   10: aload_3
    //   11: ifnull -> 102
    //   14: aload_0
    //   15: getfield mPendingActions : Ljava/util/ArrayList;
    //   18: invokevirtual size : ()I
    //   21: ifne -> 27
    //   24: goto -> 102
    //   27: aload_0
    //   28: getfield mPendingActions : Ljava/util/ArrayList;
    //   31: invokevirtual size : ()I
    //   34: istore #5
    //   36: iconst_0
    //   37: istore #6
    //   39: iload #4
    //   41: iload #5
    //   43: if_icmpge -> 76
    //   46: iload #6
    //   48: aload_0
    //   49: getfield mPendingActions : Ljava/util/ArrayList;
    //   52: iload #4
    //   54: invokevirtual get : (I)Ljava/lang/Object;
    //   57: checkcast androidx/fragment/app/FragmentManagerImpl$OpGenerator
    //   60: aload_1
    //   61: aload_2
    //   62: invokeinterface generateOps : (Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    //   67: ior
    //   68: istore #6
    //   70: iinc #4, 1
    //   73: goto -> 39
    //   76: aload_0
    //   77: getfield mPendingActions : Ljava/util/ArrayList;
    //   80: invokevirtual clear : ()V
    //   83: aload_0
    //   84: getfield mHost : Landroidx/fragment/app/FragmentHostCallback;
    //   87: invokevirtual getHandler : ()Landroid/os/Handler;
    //   90: aload_0
    //   91: getfield mExecCommit : Ljava/lang/Runnable;
    //   94: invokevirtual removeCallbacks : (Ljava/lang/Runnable;)V
    //   97: aload_0
    //   98: monitorexit
    //   99: iload #6
    //   101: ireturn
    //   102: aload_0
    //   103: monitorexit
    //   104: iconst_0
    //   105: ireturn
    //   106: astore_1
    //   107: aload_0
    //   108: monitorexit
    //   109: aload_1
    //   110: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	106	finally
    //   14	24	106	finally
    //   27	36	106	finally
    //   46	70	106	finally
    //   76	99	106	finally
    //   102	104	106	finally
    //   107	109	106	finally
  }
  
  private boolean isMenuAvailable(Fragment paramFragment) {
    boolean bool;
    if ((paramFragment.mHasMenu && paramFragment.mMenuVisible) || paramFragment.mChildFragmentManager.checkForMenus()) {
      bool = true;
    } else {
      bool = false;
    } 
    return bool;
  }
  
  static AnimationOrAnimator makeFadeAnimation(float paramFloat1, float paramFloat2) {
    AlphaAnimation alphaAnimation = new AlphaAnimation(paramFloat1, paramFloat2);
    alphaAnimation.setInterpolator(DECELERATE_CUBIC);
    alphaAnimation.setDuration(220L);
    return new AnimationOrAnimator((Animation)alphaAnimation);
  }
  
  static AnimationOrAnimator makeOpenCloseAnimation(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    AnimationSet animationSet = new AnimationSet(false);
    ScaleAnimation scaleAnimation = new ScaleAnimation(paramFloat1, paramFloat2, paramFloat1, paramFloat2, 1, 0.5F, 1, 0.5F);
    scaleAnimation.setInterpolator(DECELERATE_QUINT);
    scaleAnimation.setDuration(220L);
    animationSet.addAnimation((Animation)scaleAnimation);
    AlphaAnimation alphaAnimation = new AlphaAnimation(paramFloat3, paramFloat4);
    alphaAnimation.setInterpolator(DECELERATE_CUBIC);
    alphaAnimation.setDuration(220L);
    animationSet.addAnimation((Animation)alphaAnimation);
    return new AnimationOrAnimator((Animation)animationSet);
  }
  
  private void makeRemovedFragmentsInvisible(ArraySet<Fragment> paramArraySet) {
    int i = paramArraySet.size();
    for (byte b = 0; b < i; b++) {
      Fragment fragment = (Fragment)paramArraySet.valueAt(b);
      if (!fragment.mAdded) {
        View view = fragment.requireView();
        fragment.mPostponedAlpha = view.getAlpha();
        view.setAlpha(0.0F);
      } 
    } 
  }
  
  private boolean popBackStackImmediate(String paramString, int paramInt1, int paramInt2) {
    execPendingActions();
    ensureExecReady(true);
    Fragment fragment = this.mPrimaryNav;
    if (fragment != null && paramInt1 < 0 && paramString == null && fragment.getChildFragmentManager().popBackStackImmediate())
      return true; 
    boolean bool = popBackStackState(this.mTmpRecords, this.mTmpIsPop, paramString, paramInt1, paramInt2);
    if (bool) {
      this.mExecutingActions = true;
      try {
        removeRedundantOperationsAndExecute(this.mTmpRecords, this.mTmpIsPop);
      } finally {
        cleanupExec();
      } 
    } 
    updateOnBackPressedCallbackEnabled();
    doPendingDeferredStart();
    burpActive();
    return bool;
  }
  
  private int postponePostponableTransactions(ArrayList<BackStackRecord> paramArrayList, ArrayList<Boolean> paramArrayList1, int paramInt1, int paramInt2, ArraySet<Fragment> paramArraySet) {
    int i = paramInt2 - 1;
    int j;
    for (j = paramInt2; i >= paramInt1; j = k) {
      boolean bool1;
      BackStackRecord backStackRecord = paramArrayList.get(i);
      boolean bool = ((Boolean)paramArrayList1.get(i)).booleanValue();
      if (backStackRecord.isPostponed() && !backStackRecord.interactsWith(paramArrayList, i + 1, paramInt2)) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      int k = j;
      if (bool1) {
        if (this.mPostponedTransactions == null)
          this.mPostponedTransactions = new ArrayList<StartEnterTransitionListener>(); 
        StartEnterTransitionListener startEnterTransitionListener = new StartEnterTransitionListener(backStackRecord, bool);
        this.mPostponedTransactions.add(startEnterTransitionListener);
        backStackRecord.setOnStartPostponedListener(startEnterTransitionListener);
        if (bool) {
          backStackRecord.executeOps();
        } else {
          backStackRecord.executePopOps(false);
        } 
        k = j - 1;
        if (i != k) {
          paramArrayList.remove(i);
          paramArrayList.add(k, backStackRecord);
        } 
        addAddedFragments(paramArraySet);
      } 
      i--;
    } 
    return j;
  }
  
  private void removeRedundantOperationsAndExecute(ArrayList<BackStackRecord> paramArrayList, ArrayList<Boolean> paramArrayList1) {
    if (paramArrayList == null || paramArrayList.isEmpty())
      return; 
    if (paramArrayList1 != null && paramArrayList.size() == paramArrayList1.size()) {
      executePostponedTransaction(paramArrayList, paramArrayList1);
      int i = paramArrayList.size();
      int j = 0;
      int k;
      for (k = 0; j < i; k = n) {
        int m = j;
        int n = k;
        if (!((BackStackRecord)paramArrayList.get(j)).mReorderingAllowed) {
          if (k != j)
            executeOpsTogether(paramArrayList, paramArrayList1, k, j); 
          k = j + 1;
          n = k;
          if (((Boolean)paramArrayList1.get(j)).booleanValue())
            while (true) {
              n = k;
              if (k < i) {
                n = k;
                if (((Boolean)paramArrayList1.get(k)).booleanValue()) {
                  n = k;
                  if (!((BackStackRecord)paramArrayList.get(k)).mReorderingAllowed) {
                    k++;
                    continue;
                  } 
                } 
              } 
              break;
            }  
          executeOpsTogether(paramArrayList, paramArrayList1, j, n);
          m = n - 1;
        } 
        j = m + 1;
      } 
      if (k != i)
        executeOpsTogether(paramArrayList, paramArrayList1, k, i); 
      return;
    } 
    throw new IllegalStateException("Internal error with the back stack records");
  }
  
  public static int reverseTransit(int paramInt) {
    char c = ' ';
    if (paramInt != 4097)
      if (paramInt != 4099) {
        if (paramInt != 8194) {
          c = Character.MIN_VALUE;
        } else {
          c = 'ခ';
        } 
      } else {
        c = 'ဃ';
      }  
    return c;
  }
  
  private void throwException(RuntimeException paramRuntimeException) {
    Log.e("FragmentManager", paramRuntimeException.getMessage());
    Log.e("FragmentManager", "Activity state:");
    PrintWriter printWriter = new PrintWriter((Writer)new LogWriter("FragmentManager"));
    FragmentHostCallback fragmentHostCallback = this.mHost;
    if (fragmentHostCallback != null) {
      try {
        fragmentHostCallback.onDump("  ", (FileDescriptor)null, printWriter, new String[0]);
      } catch (Exception exception) {
        Log.e("FragmentManager", "Failed dumping state", exception);
      } 
    } else {
      try {
        dump("  ", (FileDescriptor)null, printWriter, new String[0]);
      } catch (Exception exception) {
        Log.e("FragmentManager", "Failed dumping state", exception);
      } 
    } 
    throw paramRuntimeException;
  }
  
  public static int transitToStyleIndex(int paramInt, boolean paramBoolean) {
    if (paramInt != 4097) {
      if (paramInt != 4099) {
        if (paramInt != 8194) {
          paramInt = -1;
        } else if (paramBoolean) {
          paramInt = 3;
        } else {
          paramInt = 4;
        } 
      } else if (paramBoolean) {
        paramInt = 5;
      } else {
        paramInt = 6;
      } 
    } else if (paramBoolean) {
      paramInt = 1;
    } else {
      paramInt = 2;
    } 
    return paramInt;
  }
  
  private void updateOnBackPressedCallbackEnabled() {
    ArrayList<OpGenerator> arrayList = this.mPendingActions;
    boolean bool = true;
    if (arrayList != null && !arrayList.isEmpty()) {
      this.mOnBackPressedCallback.setEnabled(true);
      return;
    } 
    OnBackPressedCallback onBackPressedCallback = this.mOnBackPressedCallback;
    if (getBackStackEntryCount() <= 0 || !isPrimaryNavigation(this.mParent))
      bool = false; 
    onBackPressedCallback.setEnabled(bool);
  }
  
  void addBackStackState(BackStackRecord paramBackStackRecord) {
    if (this.mBackStack == null)
      this.mBackStack = new ArrayList<BackStackRecord>(); 
    this.mBackStack.add(paramBackStackRecord);
  }
  
  public void addFragment(Fragment paramFragment, boolean paramBoolean) {
    if (DEBUG) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("add: ");
      stringBuilder.append(paramFragment);
      Log.v("FragmentManager", stringBuilder.toString());
    } 
    makeActive(paramFragment);
    if (!paramFragment.mDetached)
      if (!this.mAdded.contains(paramFragment)) {
        synchronized (this.mAdded) {
          this.mAdded.add(paramFragment);
          paramFragment.mAdded = true;
          paramFragment.mRemoving = false;
          if (paramFragment.mView == null)
            paramFragment.mHiddenChanged = false; 
          if (isMenuAvailable(paramFragment))
            this.mNeedMenuInvalidate = true; 
          if (paramBoolean)
            moveToState(paramFragment); 
        } 
      } else {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Fragment already added: ");
        stringBuilder.append(paramFragment);
        throw new IllegalStateException(stringBuilder.toString());
      }  
  }
  
  public void addOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener paramOnBackStackChangedListener) {
    if (this.mBackStackChangeListeners == null)
      this.mBackStackChangeListeners = new ArrayList<FragmentManager.OnBackStackChangedListener>(); 
    this.mBackStackChangeListeners.add(paramOnBackStackChangedListener);
  }
  
  void addRetainedFragment(Fragment paramFragment) {
    if (isStateSaved()) {
      if (DEBUG)
        Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved"); 
      return;
    } 
    if (this.mNonConfig.addRetainedFragment(paramFragment) && DEBUG) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("Updating retained Fragments: Added ");
      stringBuilder.append(paramFragment);
      Log.v("FragmentManager", stringBuilder.toString());
    } 
  }
  
  public int allocBackStackIndex(BackStackRecord paramBackStackRecord) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield mAvailBackStackIndices : Ljava/util/ArrayList;
    //   6: ifnull -> 111
    //   9: aload_0
    //   10: getfield mAvailBackStackIndices : Ljava/util/ArrayList;
    //   13: invokevirtual size : ()I
    //   16: ifgt -> 22
    //   19: goto -> 111
    //   22: aload_0
    //   23: getfield mAvailBackStackIndices : Ljava/util/ArrayList;
    //   26: aload_0
    //   27: getfield mAvailBackStackIndices : Ljava/util/ArrayList;
    //   30: invokevirtual size : ()I
    //   33: iconst_1
    //   34: isub
    //   35: invokevirtual remove : (I)Ljava/lang/Object;
    //   38: checkcast java/lang/Integer
    //   41: invokevirtual intValue : ()I
    //   44: istore_2
    //   45: getstatic androidx/fragment/app/FragmentManagerImpl.DEBUG : Z
    //   48: ifeq -> 97
    //   51: new java/lang/StringBuilder
    //   54: astore_3
    //   55: aload_3
    //   56: invokespecial <init> : ()V
    //   59: aload_3
    //   60: ldc_w 'Adding back stack index '
    //   63: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: pop
    //   67: aload_3
    //   68: iload_2
    //   69: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   72: pop
    //   73: aload_3
    //   74: ldc_w ' with '
    //   77: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: pop
    //   81: aload_3
    //   82: aload_1
    //   83: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   86: pop
    //   87: ldc 'FragmentManager'
    //   89: aload_3
    //   90: invokevirtual toString : ()Ljava/lang/String;
    //   93: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   96: pop
    //   97: aload_0
    //   98: getfield mBackStackIndices : Ljava/util/ArrayList;
    //   101: iload_2
    //   102: aload_1
    //   103: invokevirtual set : (ILjava/lang/Object;)Ljava/lang/Object;
    //   106: pop
    //   107: aload_0
    //   108: monitorexit
    //   109: iload_2
    //   110: ireturn
    //   111: aload_0
    //   112: getfield mBackStackIndices : Ljava/util/ArrayList;
    //   115: ifnonnull -> 131
    //   118: new java/util/ArrayList
    //   121: astore_3
    //   122: aload_3
    //   123: invokespecial <init> : ()V
    //   126: aload_0
    //   127: aload_3
    //   128: putfield mBackStackIndices : Ljava/util/ArrayList;
    //   131: aload_0
    //   132: getfield mBackStackIndices : Ljava/util/ArrayList;
    //   135: invokevirtual size : ()I
    //   138: istore_2
    //   139: getstatic androidx/fragment/app/FragmentManagerImpl.DEBUG : Z
    //   142: ifeq -> 191
    //   145: new java/lang/StringBuilder
    //   148: astore_3
    //   149: aload_3
    //   150: invokespecial <init> : ()V
    //   153: aload_3
    //   154: ldc_w 'Setting back stack index '
    //   157: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   160: pop
    //   161: aload_3
    //   162: iload_2
    //   163: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   166: pop
    //   167: aload_3
    //   168: ldc_w ' to '
    //   171: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: pop
    //   175: aload_3
    //   176: aload_1
    //   177: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   180: pop
    //   181: ldc 'FragmentManager'
    //   183: aload_3
    //   184: invokevirtual toString : ()Ljava/lang/String;
    //   187: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   190: pop
    //   191: aload_0
    //   192: getfield mBackStackIndices : Ljava/util/ArrayList;
    //   195: aload_1
    //   196: invokevirtual add : (Ljava/lang/Object;)Z
    //   199: pop
    //   200: aload_0
    //   201: monitorexit
    //   202: iload_2
    //   203: ireturn
    //   204: astore_1
    //   205: aload_0
    //   206: monitorexit
    //   207: aload_1
    //   208: athrow
    // Exception table:
    //   from	to	target	type
    //   2	19	204	finally
    //   22	97	204	finally
    //   97	109	204	finally
    //   111	131	204	finally
    //   131	191	204	finally
    //   191	202	204	finally
    //   205	207	204	finally
  }
  
  public void attachController(FragmentHostCallback paramFragmentHostCallback, FragmentContainer paramFragmentContainer, Fragment paramFragment) {
    if (this.mHost == null) {
      this.mHost = paramFragmentHostCallback;
      this.mContainer = paramFragmentContainer;
      this.mParent = paramFragment;
      if (this.mParent != null)
        updateOnBackPressedCallbackEnabled(); 
      if (paramFragmentHostCallback instanceof OnBackPressedDispatcherOwner) {
        Fragment fragment;
        OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = (OnBackPressedDispatcherOwner)paramFragmentHostCallback;
        this.mOnBackPressedDispatcher = onBackPressedDispatcherOwner.getOnBackPressedDispatcher();
        if (paramFragment != null)
          fragment = paramFragment; 
        this.mOnBackPressedDispatcher.addCallback(fragment, this.mOnBackPressedCallback);
      } 
      if (paramFragment != null) {
        this.mNonConfig = paramFragment.mFragmentManager.getChildNonConfig(paramFragment);
      } else if (paramFragmentHostCallback instanceof ViewModelStoreOwner) {
        this.mNonConfig = FragmentManagerViewModel.getInstance(((ViewModelStoreOwner)paramFragmentHostCallback).getViewModelStore());
      } else {
        this.mNonConfig = new FragmentManagerViewModel(false);
      } 
      return;
    } 
    throw new IllegalStateException("Already attached");
  }
  
  public void attachFragment(Fragment paramFragment) {
    if (DEBUG) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("attach: ");
      stringBuilder.append(paramFragment);
      Log.v("FragmentManager", stringBuilder.toString());
    } 
    if (paramFragment.mDetached) {
      paramFragment.mDetached = false;
      if (!paramFragment.mAdded)
        if (!this.mAdded.contains(paramFragment)) {
          if (DEBUG) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("add from attach: ");
            stringBuilder.append(paramFragment);
            Log.v("FragmentManager", stringBuilder.toString());
          } 
          synchronized (this.mAdded) {
            this.mAdded.add(paramFragment);
            paramFragment.mAdded = true;
            if (isMenuAvailable(paramFragment))
              this.mNeedMenuInvalidate = true; 
          } 
        } else {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append("Fragment already added: ");
          stringBuilder.append(paramFragment);
          throw new IllegalStateException(stringBuilder.toString());
        }  
    } 
  }
  
  public FragmentTransaction beginTransaction() {
    return new BackStackRecord(this);
  }
  
  boolean checkForMenus() {
    Iterator<Fragment> iterator = this.mActive.values().iterator();
    boolean bool = false;
    while (iterator.hasNext()) {
      Fragment fragment = iterator.next();
      boolean bool1 = bool;
      if (fragment != null)
        bool1 = isMenuAvailable(fragment); 
      bool = bool1;
      if (bool1)
        return true; 
    } 
    return false;
  }
  
  void completeExecute(BackStackRecord paramBackStackRecord, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3) {
    if (paramBoolean1) {
      paramBackStackRecord.executePopOps(paramBoolean3);
    } else {
      paramBackStackRecord.executeOps();
    } 
    ArrayList<BackStackRecord> arrayList = new ArrayList(1);
    ArrayList<Boolean> arrayList1 = new ArrayList(1);
    arrayList.add(paramBackStackRecord);
    arrayList1.add(Boolean.valueOf(paramBoolean1));
    if (paramBoolean2)
      FragmentTransition.startTransitions(this, arrayList, arrayList1, 0, 1, true); 
    if (paramBoolean3)
      moveToState(this.mCurState, true); 
    for (Fragment fragment : this.mActive.values()) {
      if (fragment != null && fragment.mView != null && fragment.mIsNewlyAdded && paramBackStackRecord.interactsWith(fragment.mContainerId)) {
        if (fragment.mPostponedAlpha > 0.0F)
          fragment.mView.setAlpha(fragment.mPostponedAlpha); 
        if (paramBoolean3) {
          fragment.mPostponedAlpha = 0.0F;
          continue;
        } 
        fragment.mPostponedAlpha = -1.0F;
        fragment.mIsNewlyAdded = false;
      } 
    } 
  }
  
  void completeShowHideFragment(final Fragment fragment) {
    if (fragment.mView != null) {
      AnimationOrAnimator animationOrAnimator = loadAnimation(fragment, fragment.getNextTransition(), fragment.mHidden ^ true, fragment.getNextTransitionStyle());
      if (animationOrAnimator != null && animationOrAnimator.animator != null) {
        animationOrAnimator.animator.setTarget(fragment.mView);
        if (fragment.mHidden) {
          if (fragment.isHideReplaced()) {
            fragment.setHideReplaced(false);
          } else {
            final ViewGroup container = fragment.mContainer;
            final View animatingView = fragment.mView;
            viewGroup.startViewTransition(view);
            animationOrAnimator.animator.addListener((Animator.AnimatorListener)new AnimatorListenerAdapter() {
                  public void onAnimationEnd(Animator param1Animator) {
                    container.endViewTransition(animatingView);
                    param1Animator.removeListener((Animator.AnimatorListener)this);
                    if (fragment.mView != null && fragment.mHidden)
                      fragment.mView.setVisibility(8); 
                  }
                });
          } 
        } else {
          fragment.mView.setVisibility(0);
        } 
        animationOrAnimator.animator.start();
      } else {
        boolean bool;
        if (animationOrAnimator != null) {
          fragment.mView.startAnimation(animationOrAnimator.animation);
          animationOrAnimator.animation.start();
        } 
        if (fragment.mHidden && !fragment.isHideReplaced()) {
          bool = true;
        } else {
          bool = false;
        } 
        fragment.mView.setVisibility(bool);
        if (fragment.isHideReplaced())
          fragment.setHideReplaced(false); 
      } 
    } 
    if (fragment.mAdded && isMenuAvailable(fragment))
      this.mNeedMenuInvalidate = true; 
    fragment.mHiddenChanged = false;
    fragment.onHiddenChanged(fragment.mHidden);
  }
  
  public void detachFragment(Fragment paramFragment) {
    if (DEBUG) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("detach: ");
      stringBuilder.append(paramFragment);
      Log.v("FragmentManager", stringBuilder.toString());
    } 
    if (!paramFragment.mDetached) {
      paramFragment.mDetached = true;
      if (paramFragment.mAdded) {
        if (DEBUG) {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append("remove from detach: ");
          stringBuilder.append(paramFragment);
          Log.v("FragmentManager", stringBuilder.toString());
        } 
        synchronized (this.mAdded) {
          this.mAdded.remove(paramFragment);
          if (isMenuAvailable(paramFragment))
            this.mNeedMenuInvalidate = true; 
          paramFragment.mAdded = false;
        } 
      } 
    } 
  }
  
  public void dispatchActivityCreated() {
    this.mStateSaved = false;
    this.mStopped = false;
    dispatchStateChange(2);
  }
  
  public void dispatchConfigurationChanged(Configuration paramConfiguration) {
    for (byte b = 0; b < this.mAdded.size(); b++) {
      Fragment fragment = this.mAdded.get(b);
      if (fragment != null)
        fragment.performConfigurationChanged(paramConfiguration); 
    } 
  }
  
  public boolean dispatchContextItemSelected(MenuItem paramMenuItem) {
    if (this.mCurState < 1)
      return false; 
    for (byte b = 0; b < this.mAdded.size(); b++) {
      Fragment fragment = this.mAdded.get(b);
      if (fragment != null && fragment.performContextItemSelected(paramMenuItem))
        return true; 
    } 
    return false;
  }
  
  public void dispatchCreate() {
    this.mStateSaved = false;
    this.mStopped = false;
    dispatchStateChange(1);
  }
  
  public boolean dispatchCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater) {
    int i = this.mCurState;
    boolean bool1 = false;
    if (i < 1)
      return false; 
    ArrayList<Fragment> arrayList = null;
    i = 0;
    boolean bool2;
    for (bool2 = false; i < this.mAdded.size(); bool2 = bool) {
      Fragment fragment = this.mAdded.get(i);
      ArrayList<Fragment> arrayList1 = arrayList;
      boolean bool = bool2;
      if (fragment != null) {
        arrayList1 = arrayList;
        bool = bool2;
        if (fragment.performCreateOptionsMenu(paramMenu, paramMenuInflater)) {
          arrayList1 = arrayList;
          if (arrayList == null)
            arrayList1 = new ArrayList(); 
          arrayList1.add(fragment);
          bool = true;
        } 
      } 
      i++;
      arrayList = arrayList1;
    } 
    if (this.mCreatedMenus != null)
      for (i = bool1; i < this.mCreatedMenus.size(); i++) {
        Fragment fragment = this.mCreatedMenus.get(i);
        if (arrayList == null || !arrayList.contains(fragment))
          fragment.onDestroyOptionsMenu(); 
      }  
    this.mCreatedMenus = arrayList;
    return bool2;
  }
  
  public void dispatchDestroy() {
    this.mDestroyed = true;
    execPendingActions();
    dispatchStateChange(0);
    this.mHost = null;
    this.mContainer = null;
    this.mParent = null;
    if (this.mOnBackPressedDispatcher != null) {
      this.mOnBackPressedCallback.remove();
      this.mOnBackPressedDispatcher = null;
    } 
  }
  
  public void dispatchDestroyView() {
    dispatchStateChange(1);
  }
  
  public void dispatchLowMemory() {
    for (byte b = 0; b < this.mAdded.size(); b++) {
      Fragment fragment = this.mAdded.get(b);
      if (fragment != null)
        fragment.performLowMemory(); 
    } 
  }
  
  public void dispatchMultiWindowModeChanged(boolean paramBoolean) {
    for (int i = this.mAdded.size() - 1; i >= 0; i--) {
      Fragment fragment = this.mAdded.get(i);
      if (fragment != null)
        fragment.performMultiWindowModeChanged(paramBoolean); 
    } 
  }
  
  void dispatchOnFragmentActivityCreated(Fragment paramFragment, Bundle paramBundle, boolean paramBoolean) {
    Fragment fragment = this.mParent;
    if (fragment != null) {
      FragmentManager fragmentManager = fragment.getFragmentManager();
      if (fragmentManager instanceof FragmentManagerImpl)
        ((FragmentManagerImpl)fragmentManager).dispatchOnFragmentActivityCreated(paramFragment, paramBundle, true); 
    } 
    for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
      if (!paramBoolean || fragmentLifecycleCallbacksHolder.mRecursive)
        fragmentLifecycleCallbacksHolder.mCallback.onFragmentActivityCreated(this, paramFragment, paramBundle); 
    } 
  }
  
  void dispatchOnFragmentAttached(Fragment paramFragment, Context paramContext, boolean paramBoolean) {
    Fragment fragment = this.mParent;
    if (fragment != null) {
      FragmentManager fragmentManager = fragment.getFragmentManager();
      if (fragmentManager instanceof FragmentManagerImpl)
        ((FragmentManagerImpl)fragmentManager).dispatchOnFragmentAttached(paramFragment, paramContext, true); 
    } 
    for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
      if (!paramBoolean || fragmentLifecycleCallbacksHolder.mRecursive)
        fragmentLifecycleCallbacksHolder.mCallback.onFragmentAttached(this, paramFragment, paramContext); 
    } 
  }
  
  void dispatchOnFragmentCreated(Fragment paramFragment, Bundle paramBundle, boolean paramBoolean) {
    Fragment fragment = this.mParent;
    if (fragment != null) {
      FragmentManager fragmentManager = fragment.getFragmentManager();
      if (fragmentManager instanceof FragmentManagerImpl)
        ((FragmentManagerImpl)fragmentManager).dispatchOnFragmentCreated(paramFragment, paramBundle, true); 
    } 
    for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
      if (!paramBoolean || fragmentLifecycleCallbacksHolder.mRecursive)
        fragmentLifecycleCallbacksHolder.mCallback.onFragmentCreated(this, paramFragment, paramBundle); 
    } 
  }
  
  void dispatchOnFragmentDestroyed(Fragment paramFragment, boolean paramBoolean) {
    Fragment fragment = this.mParent;
    if (fragment != null) {
      FragmentManager fragmentManager = fragment.getFragmentManager();
      if (fragmentManager instanceof FragmentManagerImpl)
        ((FragmentManagerImpl)fragmentManager).dispatchOnFragmentDestroyed(paramFragment, true); 
    } 
    for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
      if (!paramBoolean || fragmentLifecycleCallbacksHolder.mRecursive)
        fragmentLifecycleCallbacksHolder.mCallback.onFragmentDestroyed(this, paramFragment); 
    } 
  }
  
  void dispatchOnFragmentDetached(Fragment paramFragment, boolean paramBoolean) {
    Fragment fragment = this.mParent;
    if (fragment != null) {
      FragmentManager fragmentManager = fragment.getFragmentManager();
      if (fragmentManager instanceof FragmentManagerImpl)
        ((FragmentManagerImpl)fragmentManager).dispatchOnFragmentDetached(paramFragment, true); 
    } 
    for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
      if (!paramBoolean || fragmentLifecycleCallbacksHolder.mRecursive)
        fragmentLifecycleCallbacksHolder.mCallback.onFragmentDetached(this, paramFragment); 
    } 
  }
  
  void dispatchOnFragmentPaused(Fragment paramFragment, boolean paramBoolean) {
    Fragment fragment = this.mParent;
    if (fragment != null) {
      FragmentManager fragmentManager = fragment.getFragmentManager();
      if (fragmentManager instanceof FragmentManagerImpl)
        ((FragmentManagerImpl)fragmentManager).dispatchOnFragmentPaused(paramFragment, true); 
    } 
    for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
      if (!paramBoolean || fragmentLifecycleCallbacksHolder.mRecursive)
        fragmentLifecycleCallbacksHolder.mCallback.onFragmentPaused(this, paramFragment); 
    } 
  }
  
  void dispatchOnFragmentPreAttached(Fragment paramFragment, Context paramContext, boolean paramBoolean) {
    Fragment fragment = this.mParent;
    if (fragment != null) {
      FragmentManager fragmentManager = fragment.getFragmentManager();
      if (fragmentManager instanceof FragmentManagerImpl)
        ((FragmentManagerImpl)fragmentManager).dispatchOnFragmentPreAttached(paramFragment, paramContext, true); 
    } 
    for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
      if (!paramBoolean || fragmentLifecycleCallbacksHolder.mRecursive)
        fragmentLifecycleCallbacksHolder.mCallback.onFragmentPreAttached(this, paramFragment, paramContext); 
    } 
  }
  
  void dispatchOnFragmentPreCreated(Fragment paramFragment, Bundle paramBundle, boolean paramBoolean) {
    Fragment fragment = this.mParent;
    if (fragment != null) {
      FragmentManager fragmentManager = fragment.getFragmentManager();
      if (fragmentManager instanceof FragmentManagerImpl)
        ((FragmentManagerImpl)fragmentManager).dispatchOnFragmentPreCreated(paramFragment, paramBundle, true); 
    } 
    for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
      if (!paramBoolean || fragmentLifecycleCallbacksHolder.mRecursive)
        fragmentLifecycleCallbacksHolder.mCallback.onFragmentPreCreated(this, paramFragment, paramBundle); 
    } 
  }
  
  void dispatchOnFragmentResumed(Fragment paramFragment, boolean paramBoolean) {
    Fragment fragment = this.mParent;
    if (fragment != null) {
      FragmentManager fragmentManager = fragment.getFragmentManager();
      if (fragmentManager instanceof FragmentManagerImpl)
        ((FragmentManagerImpl)fragmentManager).dispatchOnFragmentResumed(paramFragment, true); 
    } 
    for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
      if (!paramBoolean || fragmentLifecycleCallbacksHolder.mRecursive)
        fragmentLifecycleCallbacksHolder.mCallback.onFragmentResumed(this, paramFragment); 
    } 
  }
  
  void dispatchOnFragmentSaveInstanceState(Fragment paramFragment, Bundle paramBundle, boolean paramBoolean) {
    Fragment fragment = this.mParent;
    if (fragment != null) {
      FragmentManager fragmentManager = fragment.getFragmentManager();
      if (fragmentManager instanceof FragmentManagerImpl)
        ((FragmentManagerImpl)fragmentManager).dispatchOnFragmentSaveInstanceState(paramFragment, paramBundle, true); 
    } 
    for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
      if (!paramBoolean || fragmentLifecycleCallbacksHolder.mRecursive)
        fragmentLifecycleCallbacksHolder.mCallback.onFragmentSaveInstanceState(this, paramFragment, paramBundle); 
    } 
  }
  
  void dispatchOnFragmentStarted(Fragment paramFragment, boolean paramBoolean) {
    Fragment fragment = this.mParent;
    if (fragment != null) {
      FragmentManager fragmentManager = fragment.getFragmentManager();
      if (fragmentManager instanceof FragmentManagerImpl)
        ((FragmentManagerImpl)fragmentManager).dispatchOnFragmentStarted(paramFragment, true); 
    } 
    for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
      if (!paramBoolean || fragmentLifecycleCallbacksHolder.mRecursive)
        fragmentLifecycleCallbacksHolder.mCallback.onFragmentStarted(this, paramFragment); 
    } 
  }
  
  void dispatchOnFragmentStopped(Fragment paramFragment, boolean paramBoolean) {
    Fragment fragment = this.mParent;
    if (fragment != null) {
      FragmentManager fragmentManager = fragment.getFragmentManager();
      if (fragmentManager instanceof FragmentManagerImpl)
        ((FragmentManagerImpl)fragmentManager).dispatchOnFragmentStopped(paramFragment, true); 
    } 
    for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
      if (!paramBoolean || fragmentLifecycleCallbacksHolder.mRecursive)
        fragmentLifecycleCallbacksHolder.mCallback.onFragmentStopped(this, paramFragment); 
    } 
  }
  
  void dispatchOnFragmentViewCreated(Fragment paramFragment, View paramView, Bundle paramBundle, boolean paramBoolean) {
    Fragment fragment = this.mParent;
    if (fragment != null) {
      FragmentManager fragmentManager = fragment.getFragmentManager();
      if (fragmentManager instanceof FragmentManagerImpl)
        ((FragmentManagerImpl)fragmentManager).dispatchOnFragmentViewCreated(paramFragment, paramView, paramBundle, true); 
    } 
    for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
      if (!paramBoolean || fragmentLifecycleCallbacksHolder.mRecursive)
        fragmentLifecycleCallbacksHolder.mCallback.onFragmentViewCreated(this, paramFragment, paramView, paramBundle); 
    } 
  }
  
  void dispatchOnFragmentViewDestroyed(Fragment paramFragment, boolean paramBoolean) {
    Fragment fragment = this.mParent;
    if (fragment != null) {
      FragmentManager fragmentManager = fragment.getFragmentManager();
      if (fragmentManager instanceof FragmentManagerImpl)
        ((FragmentManagerImpl)fragmentManager).dispatchOnFragmentViewDestroyed(paramFragment, true); 
    } 
    for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
      if (!paramBoolean || fragmentLifecycleCallbacksHolder.mRecursive)
        fragmentLifecycleCallbacksHolder.mCallback.onFragmentViewDestroyed(this, paramFragment); 
    } 
  }
  
  public boolean dispatchOptionsItemSelected(MenuItem paramMenuItem) {
    if (this.mCurState < 1)
      return false; 
    for (byte b = 0; b < this.mAdded.size(); b++) {
      Fragment fragment = this.mAdded.get(b);
      if (fragment != null && fragment.performOptionsItemSelected(paramMenuItem))
        return true; 
    } 
    return false;
  }
  
  public void dispatchOptionsMenuClosed(Menu paramMenu) {
    if (this.mCurState < 1)
      return; 
    for (byte b = 0; b < this.mAdded.size(); b++) {
      Fragment fragment = this.mAdded.get(b);
      if (fragment != null)
        fragment.performOptionsMenuClosed(paramMenu); 
    } 
  }
  
  public void dispatchPause() {
    dispatchStateChange(3);
  }
  
  public void dispatchPictureInPictureModeChanged(boolean paramBoolean) {
    for (int i = this.mAdded.size() - 1; i >= 0; i--) {
      Fragment fragment = this.mAdded.get(i);
      if (fragment != null)
        fragment.performPictureInPictureModeChanged(paramBoolean); 
    } 
  }
  
  public boolean dispatchPrepareOptionsMenu(Menu paramMenu) {
    int i = this.mCurState;
    byte b = 0;
    if (i < 1)
      return false; 
    boolean bool;
    for (bool = false; b < this.mAdded.size(); bool = bool1) {
      Fragment fragment = this.mAdded.get(b);
      boolean bool1 = bool;
      if (fragment != null) {
        bool1 = bool;
        if (fragment.performPrepareOptionsMenu(paramMenu))
          bool1 = true; 
      } 
      b++;
    } 
    return bool;
  }
  
  void dispatchPrimaryNavigationFragmentChanged() {
    updateOnBackPressedCallbackEnabled();
    dispatchParentPrimaryNavigationFragmentChanged(this.mPrimaryNav);
  }
  
  public void dispatchResume() {
    this.mStateSaved = false;
    this.mStopped = false;
    dispatchStateChange(4);
  }
  
  public void dispatchStart() {
    this.mStateSaved = false;
    this.mStopped = false;
    dispatchStateChange(3);
  }
  
  public void dispatchStop() {
    this.mStopped = true;
    dispatchStateChange(2);
  }
  
  void doPendingDeferredStart() {
    if (this.mHavePendingDeferredStart) {
      this.mHavePendingDeferredStart = false;
      startPendingDeferredFragments();
    } 
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {
    // Byte code:
    //   0: new java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore #5
    //   9: aload #5
    //   11: aload_1
    //   12: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: pop
    //   16: aload #5
    //   18: ldc_w '    '
    //   21: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: pop
    //   25: aload #5
    //   27: invokevirtual toString : ()Ljava/lang/String;
    //   30: astore #5
    //   32: aload_0
    //   33: getfield mActive : Ljava/util/HashMap;
    //   36: invokevirtual isEmpty : ()Z
    //   39: ifne -> 138
    //   42: aload_3
    //   43: aload_1
    //   44: invokevirtual print : (Ljava/lang/String;)V
    //   47: aload_3
    //   48: ldc_w 'Active Fragments in '
    //   51: invokevirtual print : (Ljava/lang/String;)V
    //   54: aload_3
    //   55: aload_0
    //   56: invokestatic identityHashCode : (Ljava/lang/Object;)I
    //   59: invokestatic toHexString : (I)Ljava/lang/String;
    //   62: invokevirtual print : (Ljava/lang/String;)V
    //   65: aload_3
    //   66: ldc_w ':'
    //   69: invokevirtual println : (Ljava/lang/String;)V
    //   72: aload_0
    //   73: getfield mActive : Ljava/util/HashMap;
    //   76: invokevirtual values : ()Ljava/util/Collection;
    //   79: invokeinterface iterator : ()Ljava/util/Iterator;
    //   84: astore #6
    //   86: aload #6
    //   88: invokeinterface hasNext : ()Z
    //   93: ifeq -> 138
    //   96: aload #6
    //   98: invokeinterface next : ()Ljava/lang/Object;
    //   103: checkcast androidx/fragment/app/Fragment
    //   106: astore #7
    //   108: aload_3
    //   109: aload_1
    //   110: invokevirtual print : (Ljava/lang/String;)V
    //   113: aload_3
    //   114: aload #7
    //   116: invokevirtual println : (Ljava/lang/Object;)V
    //   119: aload #7
    //   121: ifnull -> 86
    //   124: aload #7
    //   126: aload #5
    //   128: aload_2
    //   129: aload_3
    //   130: aload #4
    //   132: invokevirtual dump : (Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    //   135: goto -> 86
    //   138: aload_0
    //   139: getfield mAdded : Ljava/util/ArrayList;
    //   142: invokevirtual size : ()I
    //   145: istore #8
    //   147: iconst_0
    //   148: istore #9
    //   150: iload #8
    //   152: ifle -> 229
    //   155: aload_3
    //   156: aload_1
    //   157: invokevirtual print : (Ljava/lang/String;)V
    //   160: aload_3
    //   161: ldc_w 'Added Fragments:'
    //   164: invokevirtual println : (Ljava/lang/String;)V
    //   167: iconst_0
    //   168: istore #10
    //   170: iload #10
    //   172: iload #8
    //   174: if_icmpge -> 229
    //   177: aload_0
    //   178: getfield mAdded : Ljava/util/ArrayList;
    //   181: iload #10
    //   183: invokevirtual get : (I)Ljava/lang/Object;
    //   186: checkcast androidx/fragment/app/Fragment
    //   189: astore_2
    //   190: aload_3
    //   191: aload_1
    //   192: invokevirtual print : (Ljava/lang/String;)V
    //   195: aload_3
    //   196: ldc_w '  #'
    //   199: invokevirtual print : (Ljava/lang/String;)V
    //   202: aload_3
    //   203: iload #10
    //   205: invokevirtual print : (I)V
    //   208: aload_3
    //   209: ldc_w ': '
    //   212: invokevirtual print : (Ljava/lang/String;)V
    //   215: aload_3
    //   216: aload_2
    //   217: invokevirtual toString : ()Ljava/lang/String;
    //   220: invokevirtual println : (Ljava/lang/String;)V
    //   223: iinc #10, 1
    //   226: goto -> 170
    //   229: aload_0
    //   230: getfield mCreatedMenus : Ljava/util/ArrayList;
    //   233: astore_2
    //   234: aload_2
    //   235: ifnull -> 323
    //   238: aload_2
    //   239: invokevirtual size : ()I
    //   242: istore #8
    //   244: iload #8
    //   246: ifle -> 323
    //   249: aload_3
    //   250: aload_1
    //   251: invokevirtual print : (Ljava/lang/String;)V
    //   254: aload_3
    //   255: ldc_w 'Fragments Created Menus:'
    //   258: invokevirtual println : (Ljava/lang/String;)V
    //   261: iconst_0
    //   262: istore #10
    //   264: iload #10
    //   266: iload #8
    //   268: if_icmpge -> 323
    //   271: aload_0
    //   272: getfield mCreatedMenus : Ljava/util/ArrayList;
    //   275: iload #10
    //   277: invokevirtual get : (I)Ljava/lang/Object;
    //   280: checkcast androidx/fragment/app/Fragment
    //   283: astore_2
    //   284: aload_3
    //   285: aload_1
    //   286: invokevirtual print : (Ljava/lang/String;)V
    //   289: aload_3
    //   290: ldc_w '  #'
    //   293: invokevirtual print : (Ljava/lang/String;)V
    //   296: aload_3
    //   297: iload #10
    //   299: invokevirtual print : (I)V
    //   302: aload_3
    //   303: ldc_w ': '
    //   306: invokevirtual print : (Ljava/lang/String;)V
    //   309: aload_3
    //   310: aload_2
    //   311: invokevirtual toString : ()Ljava/lang/String;
    //   314: invokevirtual println : (Ljava/lang/String;)V
    //   317: iinc #10, 1
    //   320: goto -> 264
    //   323: aload_0
    //   324: getfield mBackStack : Ljava/util/ArrayList;
    //   327: astore_2
    //   328: aload_2
    //   329: ifnull -> 424
    //   332: aload_2
    //   333: invokevirtual size : ()I
    //   336: istore #8
    //   338: iload #8
    //   340: ifle -> 424
    //   343: aload_3
    //   344: aload_1
    //   345: invokevirtual print : (Ljava/lang/String;)V
    //   348: aload_3
    //   349: ldc_w 'Back Stack:'
    //   352: invokevirtual println : (Ljava/lang/String;)V
    //   355: iconst_0
    //   356: istore #10
    //   358: iload #10
    //   360: iload #8
    //   362: if_icmpge -> 424
    //   365: aload_0
    //   366: getfield mBackStack : Ljava/util/ArrayList;
    //   369: iload #10
    //   371: invokevirtual get : (I)Ljava/lang/Object;
    //   374: checkcast androidx/fragment/app/BackStackRecord
    //   377: astore_2
    //   378: aload_3
    //   379: aload_1
    //   380: invokevirtual print : (Ljava/lang/String;)V
    //   383: aload_3
    //   384: ldc_w '  #'
    //   387: invokevirtual print : (Ljava/lang/String;)V
    //   390: aload_3
    //   391: iload #10
    //   393: invokevirtual print : (I)V
    //   396: aload_3
    //   397: ldc_w ': '
    //   400: invokevirtual print : (Ljava/lang/String;)V
    //   403: aload_3
    //   404: aload_2
    //   405: invokevirtual toString : ()Ljava/lang/String;
    //   408: invokevirtual println : (Ljava/lang/String;)V
    //   411: aload_2
    //   412: aload #5
    //   414: aload_3
    //   415: invokevirtual dump : (Ljava/lang/String;Ljava/io/PrintWriter;)V
    //   418: iinc #10, 1
    //   421: goto -> 358
    //   424: aload_0
    //   425: monitorenter
    //   426: aload_0
    //   427: getfield mBackStackIndices : Ljava/util/ArrayList;
    //   430: ifnull -> 518
    //   433: aload_0
    //   434: getfield mBackStackIndices : Ljava/util/ArrayList;
    //   437: invokevirtual size : ()I
    //   440: istore #8
    //   442: iload #8
    //   444: ifle -> 518
    //   447: aload_3
    //   448: aload_1
    //   449: invokevirtual print : (Ljava/lang/String;)V
    //   452: aload_3
    //   453: ldc_w 'Back Stack Indices:'
    //   456: invokevirtual println : (Ljava/lang/String;)V
    //   459: iconst_0
    //   460: istore #10
    //   462: iload #10
    //   464: iload #8
    //   466: if_icmpge -> 518
    //   469: aload_0
    //   470: getfield mBackStackIndices : Ljava/util/ArrayList;
    //   473: iload #10
    //   475: invokevirtual get : (I)Ljava/lang/Object;
    //   478: checkcast androidx/fragment/app/BackStackRecord
    //   481: astore_2
    //   482: aload_3
    //   483: aload_1
    //   484: invokevirtual print : (Ljava/lang/String;)V
    //   487: aload_3
    //   488: ldc_w '  #'
    //   491: invokevirtual print : (Ljava/lang/String;)V
    //   494: aload_3
    //   495: iload #10
    //   497: invokevirtual print : (I)V
    //   500: aload_3
    //   501: ldc_w ': '
    //   504: invokevirtual print : (Ljava/lang/String;)V
    //   507: aload_3
    //   508: aload_2
    //   509: invokevirtual println : (Ljava/lang/Object;)V
    //   512: iinc #10, 1
    //   515: goto -> 462
    //   518: aload_0
    //   519: getfield mAvailBackStackIndices : Ljava/util/ArrayList;
    //   522: ifnull -> 561
    //   525: aload_0
    //   526: getfield mAvailBackStackIndices : Ljava/util/ArrayList;
    //   529: invokevirtual size : ()I
    //   532: ifle -> 561
    //   535: aload_3
    //   536: aload_1
    //   537: invokevirtual print : (Ljava/lang/String;)V
    //   540: aload_3
    //   541: ldc_w 'mAvailBackStackIndices: '
    //   544: invokevirtual print : (Ljava/lang/String;)V
    //   547: aload_3
    //   548: aload_0
    //   549: getfield mAvailBackStackIndices : Ljava/util/ArrayList;
    //   552: invokevirtual toArray : ()[Ljava/lang/Object;
    //   555: invokestatic toString : ([Ljava/lang/Object;)Ljava/lang/String;
    //   558: invokevirtual println : (Ljava/lang/String;)V
    //   561: aload_0
    //   562: monitorexit
    //   563: aload_0
    //   564: getfield mPendingActions : Ljava/util/ArrayList;
    //   567: astore_2
    //   568: aload_2
    //   569: ifnull -> 655
    //   572: aload_2
    //   573: invokevirtual size : ()I
    //   576: istore #8
    //   578: iload #8
    //   580: ifle -> 655
    //   583: aload_3
    //   584: aload_1
    //   585: invokevirtual print : (Ljava/lang/String;)V
    //   588: aload_3
    //   589: ldc_w 'Pending Actions:'
    //   592: invokevirtual println : (Ljava/lang/String;)V
    //   595: iload #9
    //   597: istore #10
    //   599: iload #10
    //   601: iload #8
    //   603: if_icmpge -> 655
    //   606: aload_0
    //   607: getfield mPendingActions : Ljava/util/ArrayList;
    //   610: iload #10
    //   612: invokevirtual get : (I)Ljava/lang/Object;
    //   615: checkcast androidx/fragment/app/FragmentManagerImpl$OpGenerator
    //   618: astore_2
    //   619: aload_3
    //   620: aload_1
    //   621: invokevirtual print : (Ljava/lang/String;)V
    //   624: aload_3
    //   625: ldc_w '  #'
    //   628: invokevirtual print : (Ljava/lang/String;)V
    //   631: aload_3
    //   632: iload #10
    //   634: invokevirtual print : (I)V
    //   637: aload_3
    //   638: ldc_w ': '
    //   641: invokevirtual print : (Ljava/lang/String;)V
    //   644: aload_3
    //   645: aload_2
    //   646: invokevirtual println : (Ljava/lang/Object;)V
    //   649: iinc #10, 1
    //   652: goto -> 599
    //   655: aload_3
    //   656: aload_1
    //   657: invokevirtual print : (Ljava/lang/String;)V
    //   660: aload_3
    //   661: ldc_w 'FragmentManager misc state:'
    //   664: invokevirtual println : (Ljava/lang/String;)V
    //   667: aload_3
    //   668: aload_1
    //   669: invokevirtual print : (Ljava/lang/String;)V
    //   672: aload_3
    //   673: ldc_w '  mHost='
    //   676: invokevirtual print : (Ljava/lang/String;)V
    //   679: aload_3
    //   680: aload_0
    //   681: getfield mHost : Landroidx/fragment/app/FragmentHostCallback;
    //   684: invokevirtual println : (Ljava/lang/Object;)V
    //   687: aload_3
    //   688: aload_1
    //   689: invokevirtual print : (Ljava/lang/String;)V
    //   692: aload_3
    //   693: ldc_w '  mContainer='
    //   696: invokevirtual print : (Ljava/lang/String;)V
    //   699: aload_3
    //   700: aload_0
    //   701: getfield mContainer : Landroidx/fragment/app/FragmentContainer;
    //   704: invokevirtual println : (Ljava/lang/Object;)V
    //   707: aload_0
    //   708: getfield mParent : Landroidx/fragment/app/Fragment;
    //   711: ifnull -> 734
    //   714: aload_3
    //   715: aload_1
    //   716: invokevirtual print : (Ljava/lang/String;)V
    //   719: aload_3
    //   720: ldc_w '  mParent='
    //   723: invokevirtual print : (Ljava/lang/String;)V
    //   726: aload_3
    //   727: aload_0
    //   728: getfield mParent : Landroidx/fragment/app/Fragment;
    //   731: invokevirtual println : (Ljava/lang/Object;)V
    //   734: aload_3
    //   735: aload_1
    //   736: invokevirtual print : (Ljava/lang/String;)V
    //   739: aload_3
    //   740: ldc_w '  mCurState='
    //   743: invokevirtual print : (Ljava/lang/String;)V
    //   746: aload_3
    //   747: aload_0
    //   748: getfield mCurState : I
    //   751: invokevirtual print : (I)V
    //   754: aload_3
    //   755: ldc_w ' mStateSaved='
    //   758: invokevirtual print : (Ljava/lang/String;)V
    //   761: aload_3
    //   762: aload_0
    //   763: getfield mStateSaved : Z
    //   766: invokevirtual print : (Z)V
    //   769: aload_3
    //   770: ldc_w ' mStopped='
    //   773: invokevirtual print : (Ljava/lang/String;)V
    //   776: aload_3
    //   777: aload_0
    //   778: getfield mStopped : Z
    //   781: invokevirtual print : (Z)V
    //   784: aload_3
    //   785: ldc_w ' mDestroyed='
    //   788: invokevirtual print : (Ljava/lang/String;)V
    //   791: aload_3
    //   792: aload_0
    //   793: getfield mDestroyed : Z
    //   796: invokevirtual println : (Z)V
    //   799: aload_0
    //   800: getfield mNeedMenuInvalidate : Z
    //   803: ifeq -> 826
    //   806: aload_3
    //   807: aload_1
    //   808: invokevirtual print : (Ljava/lang/String;)V
    //   811: aload_3
    //   812: ldc_w '  mNeedMenuInvalidate='
    //   815: invokevirtual print : (Ljava/lang/String;)V
    //   818: aload_3
    //   819: aload_0
    //   820: getfield mNeedMenuInvalidate : Z
    //   823: invokevirtual println : (Z)V
    //   826: return
    //   827: astore_1
    //   828: aload_0
    //   829: monitorexit
    //   830: aload_1
    //   831: athrow
    // Exception table:
    //   from	to	target	type
    //   426	442	827	finally
    //   447	459	827	finally
    //   469	512	827	finally
    //   518	561	827	finally
    //   561	563	827	finally
    //   828	830	827	finally
  }
  
  public void enqueueAction(OpGenerator paramOpGenerator, boolean paramBoolean) {
    // Byte code:
    //   0: iload_2
    //   1: ifne -> 8
    //   4: aload_0
    //   5: invokespecial checkStateLoss : ()V
    //   8: aload_0
    //   9: monitorenter
    //   10: aload_0
    //   11: getfield mDestroyed : Z
    //   14: ifne -> 63
    //   17: aload_0
    //   18: getfield mHost : Landroidx/fragment/app/FragmentHostCallback;
    //   21: ifnonnull -> 27
    //   24: goto -> 63
    //   27: aload_0
    //   28: getfield mPendingActions : Ljava/util/ArrayList;
    //   31: ifnonnull -> 47
    //   34: new java/util/ArrayList
    //   37: astore_3
    //   38: aload_3
    //   39: invokespecial <init> : ()V
    //   42: aload_0
    //   43: aload_3
    //   44: putfield mPendingActions : Ljava/util/ArrayList;
    //   47: aload_0
    //   48: getfield mPendingActions : Ljava/util/ArrayList;
    //   51: aload_1
    //   52: invokevirtual add : (Ljava/lang/Object;)Z
    //   55: pop
    //   56: aload_0
    //   57: invokevirtual scheduleCommit : ()V
    //   60: aload_0
    //   61: monitorexit
    //   62: return
    //   63: iload_2
    //   64: ifeq -> 70
    //   67: aload_0
    //   68: monitorexit
    //   69: return
    //   70: new java/lang/IllegalStateException
    //   73: astore_1
    //   74: aload_1
    //   75: ldc_w 'Activity has been destroyed'
    //   78: invokespecial <init> : (Ljava/lang/String;)V
    //   81: aload_1
    //   82: athrow
    //   83: astore_1
    //   84: aload_0
    //   85: monitorexit
    //   86: aload_1
    //   87: athrow
    // Exception table:
    //   from	to	target	type
    //   10	24	83	finally
    //   27	47	83	finally
    //   47	62	83	finally
    //   67	69	83	finally
    //   70	83	83	finally
    //   84	86	83	finally
  }
  
  void ensureInflatedFragmentView(Fragment paramFragment) {
    if (paramFragment.mFromLayout && !paramFragment.mPerformedCreateView) {
      paramFragment.performCreateView(paramFragment.performGetLayoutInflater(paramFragment.mSavedFragmentState), null, paramFragment.mSavedFragmentState);
      if (paramFragment.mView != null) {
        paramFragment.mInnerView = paramFragment.mView;
        paramFragment.mView.setSaveFromParentEnabled(false);
        if (paramFragment.mHidden)
          paramFragment.mView.setVisibility(8); 
        paramFragment.onViewCreated(paramFragment.mView, paramFragment.mSavedFragmentState);
        dispatchOnFragmentViewCreated(paramFragment, paramFragment.mView, paramFragment.mSavedFragmentState, false);
      } else {
        paramFragment.mInnerView = null;
      } 
    } 
  }
  
  public boolean execPendingActions() {
    ensureExecReady(true);
    boolean bool = false;
    while (generateOpsForPendingActions(this.mTmpRecords, this.mTmpIsPop)) {
      this.mExecutingActions = true;
      try {
        removeRedundantOperationsAndExecute(this.mTmpRecords, this.mTmpIsPop);
        cleanupExec();
      } finally {
        cleanupExec();
      } 
    } 
    updateOnBackPressedCallbackEnabled();
    doPendingDeferredStart();
    burpActive();
    return bool;
  }
  
  public void execSingleAction(OpGenerator paramOpGenerator, boolean paramBoolean) {
    if (paramBoolean && (this.mHost == null || this.mDestroyed))
      return; 
    ensureExecReady(paramBoolean);
    if (paramOpGenerator.generateOps(this.mTmpRecords, this.mTmpIsPop)) {
      this.mExecutingActions = true;
      try {
        removeRedundantOperationsAndExecute(this.mTmpRecords, this.mTmpIsPop);
      } finally {
        cleanupExec();
      } 
    } 
    updateOnBackPressedCallbackEnabled();
    doPendingDeferredStart();
    burpActive();
  }
  
  public boolean executePendingTransactions() {
    boolean bool = execPendingActions();
    forcePostponedTransactions();
    return bool;
  }
  
  public Fragment findFragmentById(int paramInt) {
    for (int i = this.mAdded.size() - 1; i >= 0; i--) {
      Fragment fragment = this.mAdded.get(i);
      if (fragment != null && fragment.mFragmentId == paramInt)
        return fragment; 
    } 
    for (Fragment fragment : this.mActive.values()) {
      if (fragment != null && fragment.mFragmentId == paramInt)
        return fragment; 
    } 
    return null;
  }
  
  public Fragment findFragmentByTag(String paramString) {
    if (paramString != null)
      for (int i = this.mAdded.size() - 1; i >= 0; i--) {
        Fragment fragment = this.mAdded.get(i);
        if (fragment != null && paramString.equals(fragment.mTag))
          return fragment; 
      }  
    if (paramString != null)
      for (Fragment fragment : this.mActive.values()) {
        if (fragment != null && paramString.equals(fragment.mTag))
          return fragment; 
      }  
    return null;
  }
  
  public Fragment findFragmentByWho(String paramString) {
    for (Fragment fragment : this.mActive.values()) {
      if (fragment != null) {
        fragment = fragment.findFragmentByWho(paramString);
        if (fragment != null)
          return fragment; 
      } 
    } 
    return null;
  }
  
  public void freeBackStackIndex(int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield mBackStackIndices : Ljava/util/ArrayList;
    //   6: iload_1
    //   7: aconst_null
    //   8: invokevirtual set : (ILjava/lang/Object;)Ljava/lang/Object;
    //   11: pop
    //   12: aload_0
    //   13: getfield mAvailBackStackIndices : Ljava/util/ArrayList;
    //   16: ifnonnull -> 32
    //   19: new java/util/ArrayList
    //   22: astore_2
    //   23: aload_2
    //   24: invokespecial <init> : ()V
    //   27: aload_0
    //   28: aload_2
    //   29: putfield mAvailBackStackIndices : Ljava/util/ArrayList;
    //   32: getstatic androidx/fragment/app/FragmentManagerImpl.DEBUG : Z
    //   35: ifeq -> 70
    //   38: new java/lang/StringBuilder
    //   41: astore_2
    //   42: aload_2
    //   43: invokespecial <init> : ()V
    //   46: aload_2
    //   47: ldc_w 'Freeing back stack index '
    //   50: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: pop
    //   54: aload_2
    //   55: iload_1
    //   56: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   59: pop
    //   60: ldc 'FragmentManager'
    //   62: aload_2
    //   63: invokevirtual toString : ()Ljava/lang/String;
    //   66: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   69: pop
    //   70: aload_0
    //   71: getfield mAvailBackStackIndices : Ljava/util/ArrayList;
    //   74: iload_1
    //   75: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   78: invokevirtual add : (Ljava/lang/Object;)Z
    //   81: pop
    //   82: aload_0
    //   83: monitorexit
    //   84: return
    //   85: astore_2
    //   86: aload_0
    //   87: monitorexit
    //   88: aload_2
    //   89: athrow
    // Exception table:
    //   from	to	target	type
    //   2	32	85	finally
    //   32	70	85	finally
    //   70	84	85	finally
    //   86	88	85	finally
  }
  
  int getActiveFragmentCount() {
    return this.mActive.size();
  }
  
  List<Fragment> getActiveFragments() {
    return new ArrayList<Fragment>(this.mActive.values());
  }
  
  public FragmentManager.BackStackEntry getBackStackEntryAt(int paramInt) {
    return this.mBackStack.get(paramInt);
  }
  
  public int getBackStackEntryCount() {
    boolean bool;
    ArrayList<BackStackRecord> arrayList = this.mBackStack;
    if (arrayList != null) {
      bool = arrayList.size();
    } else {
      bool = false;
    } 
    return bool;
  }
  
  FragmentManagerViewModel getChildNonConfig(Fragment paramFragment) {
    return this.mNonConfig.getChildNonConfig(paramFragment);
  }
  
  public Fragment getFragment(Bundle paramBundle, String paramString) {
    String str = paramBundle.getString(paramString);
    if (str == null)
      return null; 
    Fragment fragment = this.mActive.get(str);
    if (fragment == null) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("Fragment no longer exists for key ");
      stringBuilder.append(paramString);
      stringBuilder.append(": unique id ");
      stringBuilder.append(str);
      throwException(new IllegalStateException(stringBuilder.toString()));
    } 
    return fragment;
  }
  
  public FragmentFactory getFragmentFactory() {
    if (super.getFragmentFactory() == DEFAULT_FACTORY) {
      Fragment fragment = this.mParent;
      if (fragment != null)
        return fragment.mFragmentManager.getFragmentFactory(); 
      setFragmentFactory(new FragmentFactory() {
            public Fragment instantiate(ClassLoader param1ClassLoader, String param1String) {
              return FragmentManagerImpl.this.mHost.instantiate(FragmentManagerImpl.this.mHost.getContext(), param1String, null);
            }
          });
    } 
    return super.getFragmentFactory();
  }
  
  public List<Fragment> getFragments() {
    if (this.mAdded.isEmpty())
      return Collections.emptyList(); 
    synchronized (this.mAdded) {
      return (List)this.mAdded.clone();
    } 
  }
  
  LayoutInflater.Factory2 getLayoutInflaterFactory() {
    return this;
  }
  
  public Fragment getPrimaryNavigationFragment() {
    return this.mPrimaryNav;
  }
  
  ViewModelStore getViewModelStore(Fragment paramFragment) {
    return this.mNonConfig.getViewModelStore(paramFragment);
  }
  
  void handleOnBackPressed() {
    execPendingActions();
    if (this.mOnBackPressedCallback.isEnabled()) {
      popBackStackImmediate();
    } else {
      this.mOnBackPressedDispatcher.onBackPressed();
    } 
  }
  
  public void hideFragment(Fragment paramFragment) {
    if (DEBUG) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("hide: ");
      stringBuilder.append(paramFragment);
      Log.v("FragmentManager", stringBuilder.toString());
    } 
    if (!paramFragment.mHidden) {
      paramFragment.mHidden = true;
      paramFragment.mHiddenChanged = true ^ paramFragment.mHiddenChanged;
    } 
  }
  
  public boolean isDestroyed() {
    return this.mDestroyed;
  }
  
  boolean isPrimaryNavigation(Fragment paramFragment) {
    boolean bool = true;
    if (paramFragment == null)
      return true; 
    FragmentManagerImpl fragmentManagerImpl = paramFragment.mFragmentManager;
    if (paramFragment != fragmentManagerImpl.getPrimaryNavigationFragment() || !isPrimaryNavigation(fragmentManagerImpl.mParent))
      bool = false; 
    return bool;
  }
  
  boolean isStateAtLeast(int paramInt) {
    boolean bool;
    if (this.mCurState >= paramInt) {
      bool = true;
    } else {
      bool = false;
    } 
    return bool;
  }
  
  public boolean isStateSaved() {
    return (this.mStateSaved || this.mStopped);
  }
  
  AnimationOrAnimator loadAnimation(Fragment paramFragment, int paramInt1, boolean paramBoolean, int paramInt2) {
    int i = paramFragment.getNextAnim();
    boolean bool = false;
    paramFragment.setNextAnim(0);
    if (paramFragment.mContainer != null && paramFragment.mContainer.getLayoutTransition() != null)
      return null; 
    Animation animation = paramFragment.onCreateAnimation(paramInt1, paramBoolean, i);
    if (animation != null)
      return new AnimationOrAnimator(animation); 
    Animator animator = paramFragment.onCreateAnimator(paramInt1, paramBoolean, i);
    if (animator != null)
      return new AnimationOrAnimator(animator); 
    if (i != 0) {
      boolean bool1 = "anim".equals(this.mHost.getContext().getResources().getResourceTypeName(i));
      boolean bool2 = bool;
      if (bool1)
        try {
          Animation animation1 = AnimationUtils.loadAnimation(this.mHost.getContext(), i);
          if (animation1 != null)
            return new AnimationOrAnimator(animation1); 
          bool2 = true;
        } catch (android.content.res.Resources.NotFoundException notFoundException) {
          throw notFoundException;
        } catch (RuntimeException runtimeException) {
          bool2 = bool;
        }  
      if (!bool2)
        try {
          animator = AnimatorInflater.loadAnimator(this.mHost.getContext(), i);
          if (animator != null)
            return new AnimationOrAnimator(animator); 
        } catch (RuntimeException runtimeException) {
          Animation animation1;
          if (!bool1) {
            animation1 = AnimationUtils.loadAnimation(this.mHost.getContext(), i);
            if (animation1 != null)
              return new AnimationOrAnimator(animation1); 
          } else {
            throw animation1;
          } 
        }  
    } 
    if (paramInt1 == 0)
      return null; 
    paramInt1 = transitToStyleIndex(paramInt1, paramBoolean);
    if (paramInt1 < 0)
      return null; 
    switch (paramInt1) {
      default:
        paramInt1 = paramInt2;
        if (paramInt2 == 0) {
          paramInt1 = paramInt2;
          if (this.mHost.onHasWindowAnimations())
            paramInt1 = this.mHost.onGetWindowAnimations(); 
        } 
        break;
      case 6:
        return makeFadeAnimation(1.0F, 0.0F);
      case 5:
        return makeFadeAnimation(0.0F, 1.0F);
      case 4:
        return makeOpenCloseAnimation(1.0F, 1.075F, 1.0F, 0.0F);
      case 3:
        return makeOpenCloseAnimation(0.975F, 1.0F, 0.0F, 1.0F);
      case 2:
        return makeOpenCloseAnimation(1.0F, 0.975F, 1.0F, 0.0F);
      case 1:
        return makeOpenCloseAnimation(1.125F, 1.0F, 0.0F, 1.0F);
    } 
    if (paramInt1 == 0);
    return null;
  }
  
  void makeActive(Fragment paramFragment) {
    if (this.mActive.get(paramFragment.mWho) != null)
      return; 
    this.mActive.put(paramFragment.mWho, paramFragment);
    if (paramFragment.mRetainInstanceChangedWhileDetached) {
      if (paramFragment.mRetainInstance) {
        addRetainedFragment(paramFragment);
      } else {
        removeRetainedFragment(paramFragment);
      } 
      paramFragment.mRetainInstanceChangedWhileDetached = false;
    } 
    if (DEBUG) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("Added fragment to active set ");
      stringBuilder.append(paramFragment);
      Log.v("FragmentManager", stringBuilder.toString());
    } 
  }
  
  void makeInactive(Fragment paramFragment) {
    if (this.mActive.get(paramFragment.mWho) == null)
      return; 
    if (DEBUG) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("Removed fragment from active set ");
      stringBuilder.append(paramFragment);
      Log.v("FragmentManager", stringBuilder.toString());
    } 
    for (Fragment fragment : this.mActive.values()) {
      if (fragment != null && paramFragment.mWho.equals(fragment.mTargetWho)) {
        fragment.mTarget = paramFragment;
        fragment.mTargetWho = null;
      } 
    } 
    this.mActive.put(paramFragment.mWho, null);
    removeRetainedFragment(paramFragment);
    if (paramFragment.mTargetWho != null)
      paramFragment.mTarget = this.mActive.get(paramFragment.mTargetWho); 
    paramFragment.initState();
  }
  
  void moveFragmentToExpectedState(Fragment paramFragment) {
    if (paramFragment == null)
      return; 
    if (!this.mActive.containsKey(paramFragment.mWho)) {
      if (DEBUG) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Ignoring moving ");
        stringBuilder.append(paramFragment);
        stringBuilder.append(" to state ");
        stringBuilder.append(this.mCurState);
        stringBuilder.append("since it is not added to ");
        stringBuilder.append(this);
        Log.v("FragmentManager", stringBuilder.toString());
      } 
      return;
    } 
    int i = this.mCurState;
    int j = i;
    if (paramFragment.mRemoving)
      if (paramFragment.isInBackStack()) {
        j = Math.min(i, 1);
      } else {
        j = Math.min(i, 0);
      }  
    moveToState(paramFragment, j, paramFragment.getNextTransition(), paramFragment.getNextTransitionStyle(), false);
    if (paramFragment.mView != null) {
      Fragment fragment = findFragmentUnder(paramFragment);
      if (fragment != null) {
        View view = fragment.mView;
        ViewGroup viewGroup = paramFragment.mContainer;
        j = viewGroup.indexOfChild(view);
        i = viewGroup.indexOfChild(paramFragment.mView);
        if (i < j) {
          viewGroup.removeViewAt(i);
          viewGroup.addView(paramFragment.mView, j);
        } 
      } 
      if (paramFragment.mIsNewlyAdded && paramFragment.mContainer != null) {
        if (paramFragment.mPostponedAlpha > 0.0F)
          paramFragment.mView.setAlpha(paramFragment.mPostponedAlpha); 
        paramFragment.mPostponedAlpha = 0.0F;
        paramFragment.mIsNewlyAdded = false;
        AnimationOrAnimator animationOrAnimator = loadAnimation(paramFragment, paramFragment.getNextTransition(), true, paramFragment.getNextTransitionStyle());
        if (animationOrAnimator != null)
          if (animationOrAnimator.animation != null) {
            paramFragment.mView.startAnimation(animationOrAnimator.animation);
          } else {
            animationOrAnimator.animator.setTarget(paramFragment.mView);
            animationOrAnimator.animator.start();
          }  
      } 
    } 
    if (paramFragment.mHiddenChanged)
      completeShowHideFragment(paramFragment); 
  }
  
  void moveToState(int paramInt, boolean paramBoolean) {
    if (this.mHost != null || paramInt == 0) {
      if (!paramBoolean && paramInt == this.mCurState)
        return; 
      this.mCurState = paramInt;
      int i = this.mAdded.size();
      for (paramInt = 0; paramInt < i; paramInt++)
        moveFragmentToExpectedState(this.mAdded.get(paramInt)); 
      for (Fragment fragment : this.mActive.values()) {
        if (fragment != null && (fragment.mRemoving || fragment.mDetached) && !fragment.mIsNewlyAdded)
          moveFragmentToExpectedState(fragment); 
      } 
      startPendingDeferredFragments();
      if (this.mNeedMenuInvalidate) {
        FragmentHostCallback fragmentHostCallback = this.mHost;
        if (fragmentHostCallback != null && this.mCurState == 4) {
          fragmentHostCallback.onSupportInvalidateOptionsMenu();
          this.mNeedMenuInvalidate = false;
        } 
      } 
      return;
    } 
    throw new IllegalStateException("No activity");
  }
  
  void moveToState(Fragment paramFragment) {
    moveToState(paramFragment, this.mCurState, 0, 0, false);
  }
  
  void moveToState(Fragment paramFragment, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean) {
    // Byte code:
    //   0: aload_1
    //   1: getfield mAdded : Z
    //   4: istore #6
    //   6: iconst_1
    //   7: istore #7
    //   9: iconst_1
    //   10: istore #8
    //   12: iconst_1
    //   13: istore #9
    //   15: iload #6
    //   17: ifeq -> 33
    //   20: aload_1
    //   21: getfield mDetached : Z
    //   24: ifeq -> 30
    //   27: goto -> 33
    //   30: goto -> 47
    //   33: iload_2
    //   34: istore #10
    //   36: iload #10
    //   38: istore_2
    //   39: iload #10
    //   41: iconst_1
    //   42: if_icmple -> 47
    //   45: iconst_1
    //   46: istore_2
    //   47: iload_2
    //   48: istore #10
    //   50: aload_1
    //   51: getfield mRemoving : Z
    //   54: ifeq -> 94
    //   57: iload_2
    //   58: istore #10
    //   60: iload_2
    //   61: aload_1
    //   62: getfield mState : I
    //   65: if_icmple -> 94
    //   68: aload_1
    //   69: getfield mState : I
    //   72: ifne -> 88
    //   75: aload_1
    //   76: invokevirtual isInBackStack : ()Z
    //   79: ifeq -> 88
    //   82: iconst_1
    //   83: istore #10
    //   85: goto -> 94
    //   88: aload_1
    //   89: getfield mState : I
    //   92: istore #10
    //   94: iload #10
    //   96: istore_2
    //   97: aload_1
    //   98: getfield mDeferStart : Z
    //   101: ifeq -> 126
    //   104: iload #10
    //   106: istore_2
    //   107: aload_1
    //   108: getfield mState : I
    //   111: iconst_3
    //   112: if_icmpge -> 126
    //   115: iload #10
    //   117: istore_2
    //   118: iload #10
    //   120: iconst_2
    //   121: if_icmple -> 126
    //   124: iconst_2
    //   125: istore_2
    //   126: aload_1
    //   127: getfield mMaxState : Landroidx/lifecycle/Lifecycle$State;
    //   130: getstatic androidx/lifecycle/Lifecycle$State.CREATED : Landroidx/lifecycle/Lifecycle$State;
    //   133: if_acmpne -> 145
    //   136: iload_2
    //   137: iconst_1
    //   138: invokestatic min : (II)I
    //   141: istore_2
    //   142: goto -> 157
    //   145: iload_2
    //   146: aload_1
    //   147: getfield mMaxState : Landroidx/lifecycle/Lifecycle$State;
    //   150: invokevirtual ordinal : ()I
    //   153: invokestatic min : (II)I
    //   156: istore_2
    //   157: aload_1
    //   158: getfield mState : I
    //   161: iload_2
    //   162: if_icmpgt -> 1496
    //   165: aload_1
    //   166: getfield mFromLayout : Z
    //   169: ifeq -> 180
    //   172: aload_1
    //   173: getfield mInLayout : Z
    //   176: ifne -> 180
    //   179: return
    //   180: aload_1
    //   181: invokevirtual getAnimatingAway : ()Landroid/view/View;
    //   184: ifnonnull -> 194
    //   187: aload_1
    //   188: invokevirtual getAnimator : ()Landroid/animation/Animator;
    //   191: ifnull -> 216
    //   194: aload_1
    //   195: aconst_null
    //   196: invokevirtual setAnimatingAway : (Landroid/view/View;)V
    //   199: aload_1
    //   200: aconst_null
    //   201: invokevirtual setAnimator : (Landroid/animation/Animator;)V
    //   204: aload_0
    //   205: aload_1
    //   206: aload_1
    //   207: invokevirtual getStateAfterAnimating : ()I
    //   210: iconst_0
    //   211: iconst_0
    //   212: iconst_1
    //   213: invokevirtual moveToState : (Landroidx/fragment/app/Fragment;IIIZ)V
    //   216: aload_1
    //   217: getfield mState : I
    //   220: istore #10
    //   222: iload #10
    //   224: ifeq -> 264
    //   227: iload_2
    //   228: istore_3
    //   229: iload #10
    //   231: iconst_1
    //   232: if_icmpeq -> 885
    //   235: iload_2
    //   236: istore #4
    //   238: iload #10
    //   240: iconst_2
    //   241: if_icmpeq -> 261
    //   244: iload_2
    //   245: istore_3
    //   246: iload #10
    //   248: iconst_3
    //   249: if_icmpeq -> 258
    //   252: iload_2
    //   253: istore #10
    //   255: goto -> 2290
    //   258: goto -> 1420
    //   261: goto -> 1353
    //   264: iload_2
    //   265: istore_3
    //   266: iload_2
    //   267: ifle -> 885
    //   270: getstatic androidx/fragment/app/FragmentManagerImpl.DEBUG : Z
    //   273: ifeq -> 312
    //   276: new java/lang/StringBuilder
    //   279: dup
    //   280: invokespecial <init> : ()V
    //   283: astore #11
    //   285: aload #11
    //   287: ldc_w 'moveto CREATED: '
    //   290: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   293: pop
    //   294: aload #11
    //   296: aload_1
    //   297: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   300: pop
    //   301: ldc 'FragmentManager'
    //   303: aload #11
    //   305: invokevirtual toString : ()Ljava/lang/String;
    //   308: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   311: pop
    //   312: iload_2
    //   313: istore_3
    //   314: aload_1
    //   315: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   318: ifnull -> 471
    //   321: aload_1
    //   322: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   325: aload_0
    //   326: getfield mHost : Landroidx/fragment/app/FragmentHostCallback;
    //   329: invokevirtual getContext : ()Landroid/content/Context;
    //   332: invokevirtual getClassLoader : ()Ljava/lang/ClassLoader;
    //   335: invokevirtual setClassLoader : (Ljava/lang/ClassLoader;)V
    //   338: aload_1
    //   339: aload_1
    //   340: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   343: ldc 'android:view_state'
    //   345: invokevirtual getSparseParcelableArray : (Ljava/lang/String;)Landroid/util/SparseArray;
    //   348: putfield mSavedViewState : Landroid/util/SparseArray;
    //   351: aload_0
    //   352: aload_1
    //   353: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   356: ldc 'android:target_state'
    //   358: invokevirtual getFragment : (Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    //   361: astore #11
    //   363: aload #11
    //   365: ifnull -> 378
    //   368: aload #11
    //   370: getfield mWho : Ljava/lang/String;
    //   373: astore #11
    //   375: goto -> 381
    //   378: aconst_null
    //   379: astore #11
    //   381: aload_1
    //   382: aload #11
    //   384: putfield mTargetWho : Ljava/lang/String;
    //   387: aload_1
    //   388: getfield mTargetWho : Ljava/lang/String;
    //   391: ifnull -> 408
    //   394: aload_1
    //   395: aload_1
    //   396: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   399: ldc 'android:target_req_state'
    //   401: iconst_0
    //   402: invokevirtual getInt : (Ljava/lang/String;I)I
    //   405: putfield mTargetRequestCode : I
    //   408: aload_1
    //   409: getfield mSavedUserVisibleHint : Ljava/lang/Boolean;
    //   412: ifnull -> 434
    //   415: aload_1
    //   416: aload_1
    //   417: getfield mSavedUserVisibleHint : Ljava/lang/Boolean;
    //   420: invokevirtual booleanValue : ()Z
    //   423: putfield mUserVisibleHint : Z
    //   426: aload_1
    //   427: aconst_null
    //   428: putfield mSavedUserVisibleHint : Ljava/lang/Boolean;
    //   431: goto -> 448
    //   434: aload_1
    //   435: aload_1
    //   436: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   439: ldc 'android:user_visible_hint'
    //   441: iconst_1
    //   442: invokevirtual getBoolean : (Ljava/lang/String;Z)Z
    //   445: putfield mUserVisibleHint : Z
    //   448: iload_2
    //   449: istore_3
    //   450: aload_1
    //   451: getfield mUserVisibleHint : Z
    //   454: ifne -> 471
    //   457: aload_1
    //   458: iconst_1
    //   459: putfield mDeferStart : Z
    //   462: iload_2
    //   463: istore_3
    //   464: iload_2
    //   465: iconst_2
    //   466: if_icmple -> 471
    //   469: iconst_2
    //   470: istore_3
    //   471: aload_0
    //   472: getfield mHost : Landroidx/fragment/app/FragmentHostCallback;
    //   475: astore #11
    //   477: aload_1
    //   478: aload #11
    //   480: putfield mHost : Landroidx/fragment/app/FragmentHostCallback;
    //   483: aload_0
    //   484: getfield mParent : Landroidx/fragment/app/Fragment;
    //   487: astore #12
    //   489: aload_1
    //   490: aload #12
    //   492: putfield mParentFragment : Landroidx/fragment/app/Fragment;
    //   495: aload #12
    //   497: ifnull -> 510
    //   500: aload #12
    //   502: getfield mChildFragmentManager : Landroidx/fragment/app/FragmentManagerImpl;
    //   505: astore #11
    //   507: goto -> 517
    //   510: aload #11
    //   512: getfield mFragmentManager : Landroidx/fragment/app/FragmentManagerImpl;
    //   515: astore #11
    //   517: aload_1
    //   518: aload #11
    //   520: putfield mFragmentManager : Landroidx/fragment/app/FragmentManagerImpl;
    //   523: aload_1
    //   524: getfield mTarget : Landroidx/fragment/app/Fragment;
    //   527: ifnull -> 662
    //   530: aload_0
    //   531: getfield mActive : Ljava/util/HashMap;
    //   534: aload_1
    //   535: getfield mTarget : Landroidx/fragment/app/Fragment;
    //   538: getfield mWho : Ljava/lang/String;
    //   541: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   544: aload_1
    //   545: getfield mTarget : Landroidx/fragment/app/Fragment;
    //   548: if_acmpne -> 596
    //   551: aload_1
    //   552: getfield mTarget : Landroidx/fragment/app/Fragment;
    //   555: getfield mState : I
    //   558: iconst_1
    //   559: if_icmpge -> 577
    //   562: aload_0
    //   563: aload_1
    //   564: getfield mTarget : Landroidx/fragment/app/Fragment;
    //   567: iconst_1
    //   568: iconst_0
    //   569: iconst_0
    //   570: iconst_1
    //   571: invokevirtual moveToState : (Landroidx/fragment/app/Fragment;IIIZ)V
    //   574: goto -> 577
    //   577: aload_1
    //   578: aload_1
    //   579: getfield mTarget : Landroidx/fragment/app/Fragment;
    //   582: getfield mWho : Ljava/lang/String;
    //   585: putfield mTargetWho : Ljava/lang/String;
    //   588: aload_1
    //   589: aconst_null
    //   590: putfield mTarget : Landroidx/fragment/app/Fragment;
    //   593: goto -> 662
    //   596: new java/lang/StringBuilder
    //   599: dup
    //   600: invokespecial <init> : ()V
    //   603: astore #11
    //   605: aload #11
    //   607: ldc_w 'Fragment '
    //   610: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   613: pop
    //   614: aload #11
    //   616: aload_1
    //   617: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   620: pop
    //   621: aload #11
    //   623: ldc_w ' declared target fragment '
    //   626: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   629: pop
    //   630: aload #11
    //   632: aload_1
    //   633: getfield mTarget : Landroidx/fragment/app/Fragment;
    //   636: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   639: pop
    //   640: aload #11
    //   642: ldc_w ' that does not belong to this FragmentManager!'
    //   645: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   648: pop
    //   649: new java/lang/IllegalStateException
    //   652: dup
    //   653: aload #11
    //   655: invokevirtual toString : ()Ljava/lang/String;
    //   658: invokespecial <init> : (Ljava/lang/String;)V
    //   661: athrow
    //   662: aload_1
    //   663: getfield mTargetWho : Ljava/lang/String;
    //   666: ifnull -> 778
    //   669: aload_0
    //   670: getfield mActive : Ljava/util/HashMap;
    //   673: aload_1
    //   674: getfield mTargetWho : Ljava/lang/String;
    //   677: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   680: checkcast androidx/fragment/app/Fragment
    //   683: astore #11
    //   685: aload #11
    //   687: ifnull -> 712
    //   690: aload #11
    //   692: getfield mState : I
    //   695: iconst_1
    //   696: if_icmpge -> 778
    //   699: aload_0
    //   700: aload #11
    //   702: iconst_1
    //   703: iconst_0
    //   704: iconst_0
    //   705: iconst_1
    //   706: invokevirtual moveToState : (Landroidx/fragment/app/Fragment;IIIZ)V
    //   709: goto -> 778
    //   712: new java/lang/StringBuilder
    //   715: dup
    //   716: invokespecial <init> : ()V
    //   719: astore #11
    //   721: aload #11
    //   723: ldc_w 'Fragment '
    //   726: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   729: pop
    //   730: aload #11
    //   732: aload_1
    //   733: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   736: pop
    //   737: aload #11
    //   739: ldc_w ' declared target fragment '
    //   742: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   745: pop
    //   746: aload #11
    //   748: aload_1
    //   749: getfield mTargetWho : Ljava/lang/String;
    //   752: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   755: pop
    //   756: aload #11
    //   758: ldc_w ' that does not belong to this FragmentManager!'
    //   761: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   764: pop
    //   765: new java/lang/IllegalStateException
    //   768: dup
    //   769: aload #11
    //   771: invokevirtual toString : ()Ljava/lang/String;
    //   774: invokespecial <init> : (Ljava/lang/String;)V
    //   777: athrow
    //   778: aload_0
    //   779: aload_1
    //   780: aload_0
    //   781: getfield mHost : Landroidx/fragment/app/FragmentHostCallback;
    //   784: invokevirtual getContext : ()Landroid/content/Context;
    //   787: iconst_0
    //   788: invokevirtual dispatchOnFragmentPreAttached : (Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    //   791: aload_1
    //   792: invokevirtual performAttach : ()V
    //   795: aload_1
    //   796: getfield mParentFragment : Landroidx/fragment/app/Fragment;
    //   799: ifnonnull -> 813
    //   802: aload_0
    //   803: getfield mHost : Landroidx/fragment/app/FragmentHostCallback;
    //   806: aload_1
    //   807: invokevirtual onAttachFragment : (Landroidx/fragment/app/Fragment;)V
    //   810: goto -> 821
    //   813: aload_1
    //   814: getfield mParentFragment : Landroidx/fragment/app/Fragment;
    //   817: aload_1
    //   818: invokevirtual onAttachFragment : (Landroidx/fragment/app/Fragment;)V
    //   821: aload_0
    //   822: aload_1
    //   823: aload_0
    //   824: getfield mHost : Landroidx/fragment/app/FragmentHostCallback;
    //   827: invokevirtual getContext : ()Landroid/content/Context;
    //   830: iconst_0
    //   831: invokevirtual dispatchOnFragmentAttached : (Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    //   834: aload_1
    //   835: getfield mIsCreated : Z
    //   838: ifne -> 872
    //   841: aload_0
    //   842: aload_1
    //   843: aload_1
    //   844: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   847: iconst_0
    //   848: invokevirtual dispatchOnFragmentPreCreated : (Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    //   851: aload_1
    //   852: aload_1
    //   853: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   856: invokevirtual performCreate : (Landroid/os/Bundle;)V
    //   859: aload_0
    //   860: aload_1
    //   861: aload_1
    //   862: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   865: iconst_0
    //   866: invokevirtual dispatchOnFragmentCreated : (Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    //   869: goto -> 885
    //   872: aload_1
    //   873: aload_1
    //   874: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   877: invokevirtual restoreChildFragmentState : (Landroid/os/Bundle;)V
    //   880: aload_1
    //   881: iconst_1
    //   882: putfield mState : I
    //   885: iload_3
    //   886: ifle -> 894
    //   889: aload_0
    //   890: aload_1
    //   891: invokevirtual ensureInflatedFragmentView : (Landroidx/fragment/app/Fragment;)V
    //   894: iload_3
    //   895: istore #4
    //   897: iload_3
    //   898: iconst_1
    //   899: if_icmple -> 261
    //   902: getstatic androidx/fragment/app/FragmentManagerImpl.DEBUG : Z
    //   905: ifeq -> 944
    //   908: new java/lang/StringBuilder
    //   911: dup
    //   912: invokespecial <init> : ()V
    //   915: astore #11
    //   917: aload #11
    //   919: ldc_w 'moveto ACTIVITY_CREATED: '
    //   922: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   925: pop
    //   926: aload #11
    //   928: aload_1
    //   929: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   932: pop
    //   933: ldc 'FragmentManager'
    //   935: aload #11
    //   937: invokevirtual toString : ()Ljava/lang/String;
    //   940: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   943: pop
    //   944: aload_1
    //   945: getfield mFromLayout : Z
    //   948: ifne -> 1309
    //   951: aload_1
    //   952: getfield mContainerId : I
    //   955: ifeq -> 1162
    //   958: aload_1
    //   959: getfield mContainerId : I
    //   962: iconst_m1
    //   963: if_icmpne -> 1016
    //   966: new java/lang/StringBuilder
    //   969: dup
    //   970: invokespecial <init> : ()V
    //   973: astore #11
    //   975: aload #11
    //   977: ldc_w 'Cannot create fragment '
    //   980: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   983: pop
    //   984: aload #11
    //   986: aload_1
    //   987: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   990: pop
    //   991: aload #11
    //   993: ldc_w ' for a container view with no id'
    //   996: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   999: pop
    //   1000: aload_0
    //   1001: new java/lang/IllegalArgumentException
    //   1004: dup
    //   1005: aload #11
    //   1007: invokevirtual toString : ()Ljava/lang/String;
    //   1010: invokespecial <init> : (Ljava/lang/String;)V
    //   1013: invokespecial throwException : (Ljava/lang/RuntimeException;)V
    //   1016: aload_0
    //   1017: getfield mContainer : Landroidx/fragment/app/FragmentContainer;
    //   1020: aload_1
    //   1021: getfield mContainerId : I
    //   1024: invokevirtual onFindViewById : (I)Landroid/view/View;
    //   1027: checkcast android/view/ViewGroup
    //   1030: astore #12
    //   1032: aload #12
    //   1034: astore #11
    //   1036: aload #12
    //   1038: ifnonnull -> 1165
    //   1041: aload #12
    //   1043: astore #11
    //   1045: aload_1
    //   1046: getfield mRestored : Z
    //   1049: ifne -> 1165
    //   1052: aload_1
    //   1053: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   1056: aload_1
    //   1057: getfield mContainerId : I
    //   1060: invokevirtual getResourceName : (I)Ljava/lang/String;
    //   1063: astore #11
    //   1065: goto -> 1075
    //   1068: astore #11
    //   1070: ldc_w 'unknown'
    //   1073: astore #11
    //   1075: new java/lang/StringBuilder
    //   1078: dup
    //   1079: invokespecial <init> : ()V
    //   1082: astore #13
    //   1084: aload #13
    //   1086: ldc_w 'No view found for id 0x'
    //   1089: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1092: pop
    //   1093: aload #13
    //   1095: aload_1
    //   1096: getfield mContainerId : I
    //   1099: invokestatic toHexString : (I)Ljava/lang/String;
    //   1102: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1105: pop
    //   1106: aload #13
    //   1108: ldc_w ' ('
    //   1111: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1114: pop
    //   1115: aload #13
    //   1117: aload #11
    //   1119: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1122: pop
    //   1123: aload #13
    //   1125: ldc_w ') for fragment '
    //   1128: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1131: pop
    //   1132: aload #13
    //   1134: aload_1
    //   1135: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1138: pop
    //   1139: aload_0
    //   1140: new java/lang/IllegalArgumentException
    //   1143: dup
    //   1144: aload #13
    //   1146: invokevirtual toString : ()Ljava/lang/String;
    //   1149: invokespecial <init> : (Ljava/lang/String;)V
    //   1152: invokespecial throwException : (Ljava/lang/RuntimeException;)V
    //   1155: aload #12
    //   1157: astore #11
    //   1159: goto -> 1165
    //   1162: aconst_null
    //   1163: astore #11
    //   1165: aload_1
    //   1166: aload #11
    //   1168: putfield mContainer : Landroid/view/ViewGroup;
    //   1171: aload_1
    //   1172: aload_1
    //   1173: aload_1
    //   1174: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   1177: invokevirtual performGetLayoutInflater : (Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    //   1180: aload #11
    //   1182: aload_1
    //   1183: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   1186: invokevirtual performCreateView : (Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    //   1189: aload_1
    //   1190: getfield mView : Landroid/view/View;
    //   1193: ifnull -> 1304
    //   1196: aload_1
    //   1197: aload_1
    //   1198: getfield mView : Landroid/view/View;
    //   1201: putfield mInnerView : Landroid/view/View;
    //   1204: aload_1
    //   1205: getfield mView : Landroid/view/View;
    //   1208: iconst_0
    //   1209: invokevirtual setSaveFromParentEnabled : (Z)V
    //   1212: aload #11
    //   1214: ifnull -> 1226
    //   1217: aload #11
    //   1219: aload_1
    //   1220: getfield mView : Landroid/view/View;
    //   1223: invokevirtual addView : (Landroid/view/View;)V
    //   1226: aload_1
    //   1227: getfield mHidden : Z
    //   1230: ifeq -> 1242
    //   1233: aload_1
    //   1234: getfield mView : Landroid/view/View;
    //   1237: bipush #8
    //   1239: invokevirtual setVisibility : (I)V
    //   1242: aload_1
    //   1243: aload_1
    //   1244: getfield mView : Landroid/view/View;
    //   1247: aload_1
    //   1248: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   1251: invokevirtual onViewCreated : (Landroid/view/View;Landroid/os/Bundle;)V
    //   1254: aload_0
    //   1255: aload_1
    //   1256: aload_1
    //   1257: getfield mView : Landroid/view/View;
    //   1260: aload_1
    //   1261: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   1264: iconst_0
    //   1265: invokevirtual dispatchOnFragmentViewCreated : (Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    //   1268: aload_1
    //   1269: getfield mView : Landroid/view/View;
    //   1272: invokevirtual getVisibility : ()I
    //   1275: ifne -> 1292
    //   1278: aload_1
    //   1279: getfield mContainer : Landroid/view/ViewGroup;
    //   1282: ifnull -> 1292
    //   1285: iload #9
    //   1287: istore #5
    //   1289: goto -> 1295
    //   1292: iconst_0
    //   1293: istore #5
    //   1295: aload_1
    //   1296: iload #5
    //   1298: putfield mIsNewlyAdded : Z
    //   1301: goto -> 1309
    //   1304: aload_1
    //   1305: aconst_null
    //   1306: putfield mInnerView : Landroid/view/View;
    //   1309: aload_1
    //   1310: aload_1
    //   1311: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   1314: invokevirtual performActivityCreated : (Landroid/os/Bundle;)V
    //   1317: aload_0
    //   1318: aload_1
    //   1319: aload_1
    //   1320: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   1323: iconst_0
    //   1324: invokevirtual dispatchOnFragmentActivityCreated : (Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    //   1327: aload_1
    //   1328: getfield mView : Landroid/view/View;
    //   1331: ifnull -> 1342
    //   1334: aload_1
    //   1335: aload_1
    //   1336: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   1339: invokevirtual restoreViewState : (Landroid/os/Bundle;)V
    //   1342: aload_1
    //   1343: aconst_null
    //   1344: putfield mSavedFragmentState : Landroid/os/Bundle;
    //   1347: iload_3
    //   1348: istore #4
    //   1350: goto -> 261
    //   1353: iload #4
    //   1355: istore_3
    //   1356: iload #4
    //   1358: iconst_2
    //   1359: if_icmple -> 258
    //   1362: getstatic androidx/fragment/app/FragmentManagerImpl.DEBUG : Z
    //   1365: ifeq -> 1404
    //   1368: new java/lang/StringBuilder
    //   1371: dup
    //   1372: invokespecial <init> : ()V
    //   1375: astore #11
    //   1377: aload #11
    //   1379: ldc_w 'moveto STARTED: '
    //   1382: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1385: pop
    //   1386: aload #11
    //   1388: aload_1
    //   1389: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1392: pop
    //   1393: ldc 'FragmentManager'
    //   1395: aload #11
    //   1397: invokevirtual toString : ()Ljava/lang/String;
    //   1400: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   1403: pop
    //   1404: aload_1
    //   1405: invokevirtual performStart : ()V
    //   1408: aload_0
    //   1409: aload_1
    //   1410: iconst_0
    //   1411: invokevirtual dispatchOnFragmentStarted : (Landroidx/fragment/app/Fragment;Z)V
    //   1414: iload #4
    //   1416: istore_3
    //   1417: goto -> 258
    //   1420: iload_3
    //   1421: istore #10
    //   1423: iload_3
    //   1424: iconst_3
    //   1425: if_icmple -> 2290
    //   1428: getstatic androidx/fragment/app/FragmentManagerImpl.DEBUG : Z
    //   1431: ifeq -> 1470
    //   1434: new java/lang/StringBuilder
    //   1437: dup
    //   1438: invokespecial <init> : ()V
    //   1441: astore #11
    //   1443: aload #11
    //   1445: ldc_w 'moveto RESUMED: '
    //   1448: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1451: pop
    //   1452: aload #11
    //   1454: aload_1
    //   1455: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1458: pop
    //   1459: ldc 'FragmentManager'
    //   1461: aload #11
    //   1463: invokevirtual toString : ()Ljava/lang/String;
    //   1466: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   1469: pop
    //   1470: aload_1
    //   1471: invokevirtual performResume : ()V
    //   1474: aload_0
    //   1475: aload_1
    //   1476: iconst_0
    //   1477: invokevirtual dispatchOnFragmentResumed : (Landroidx/fragment/app/Fragment;Z)V
    //   1480: aload_1
    //   1481: aconst_null
    //   1482: putfield mSavedFragmentState : Landroid/os/Bundle;
    //   1485: aload_1
    //   1486: aconst_null
    //   1487: putfield mSavedViewState : Landroid/util/SparseArray;
    //   1490: iload_3
    //   1491: istore #10
    //   1493: goto -> 2290
    //   1496: iload_2
    //   1497: istore #10
    //   1499: aload_1
    //   1500: getfield mState : I
    //   1503: iload_2
    //   1504: if_icmple -> 2290
    //   1507: aload_1
    //   1508: getfield mState : I
    //   1511: istore #10
    //   1513: iload #10
    //   1515: iconst_1
    //   1516: if_icmpeq -> 1905
    //   1519: iload #10
    //   1521: iconst_2
    //   1522: if_icmpeq -> 1657
    //   1525: iload #10
    //   1527: iconst_3
    //   1528: if_icmpeq -> 1600
    //   1531: iload #10
    //   1533: iconst_4
    //   1534: if_icmpeq -> 1543
    //   1537: iload_2
    //   1538: istore #10
    //   1540: goto -> 2290
    //   1543: iload_2
    //   1544: iconst_4
    //   1545: if_icmpge -> 1600
    //   1548: getstatic androidx/fragment/app/FragmentManagerImpl.DEBUG : Z
    //   1551: ifeq -> 1590
    //   1554: new java/lang/StringBuilder
    //   1557: dup
    //   1558: invokespecial <init> : ()V
    //   1561: astore #11
    //   1563: aload #11
    //   1565: ldc_w 'movefrom RESUMED: '
    //   1568: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1571: pop
    //   1572: aload #11
    //   1574: aload_1
    //   1575: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1578: pop
    //   1579: ldc 'FragmentManager'
    //   1581: aload #11
    //   1583: invokevirtual toString : ()Ljava/lang/String;
    //   1586: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   1589: pop
    //   1590: aload_1
    //   1591: invokevirtual performPause : ()V
    //   1594: aload_0
    //   1595: aload_1
    //   1596: iconst_0
    //   1597: invokevirtual dispatchOnFragmentPaused : (Landroidx/fragment/app/Fragment;Z)V
    //   1600: iload_2
    //   1601: iconst_3
    //   1602: if_icmpge -> 1657
    //   1605: getstatic androidx/fragment/app/FragmentManagerImpl.DEBUG : Z
    //   1608: ifeq -> 1647
    //   1611: new java/lang/StringBuilder
    //   1614: dup
    //   1615: invokespecial <init> : ()V
    //   1618: astore #11
    //   1620: aload #11
    //   1622: ldc_w 'movefrom STARTED: '
    //   1625: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1628: pop
    //   1629: aload #11
    //   1631: aload_1
    //   1632: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1635: pop
    //   1636: ldc 'FragmentManager'
    //   1638: aload #11
    //   1640: invokevirtual toString : ()Ljava/lang/String;
    //   1643: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   1646: pop
    //   1647: aload_1
    //   1648: invokevirtual performStop : ()V
    //   1651: aload_0
    //   1652: aload_1
    //   1653: iconst_0
    //   1654: invokevirtual dispatchOnFragmentStopped : (Landroidx/fragment/app/Fragment;Z)V
    //   1657: iload_2
    //   1658: iconst_2
    //   1659: if_icmpge -> 1905
    //   1662: getstatic androidx/fragment/app/FragmentManagerImpl.DEBUG : Z
    //   1665: ifeq -> 1704
    //   1668: new java/lang/StringBuilder
    //   1671: dup
    //   1672: invokespecial <init> : ()V
    //   1675: astore #11
    //   1677: aload #11
    //   1679: ldc_w 'movefrom ACTIVITY_CREATED: '
    //   1682: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1685: pop
    //   1686: aload #11
    //   1688: aload_1
    //   1689: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1692: pop
    //   1693: ldc 'FragmentManager'
    //   1695: aload #11
    //   1697: invokevirtual toString : ()Ljava/lang/String;
    //   1700: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   1703: pop
    //   1704: aload_1
    //   1705: getfield mView : Landroid/view/View;
    //   1708: ifnull -> 1734
    //   1711: aload_0
    //   1712: getfield mHost : Landroidx/fragment/app/FragmentHostCallback;
    //   1715: aload_1
    //   1716: invokevirtual onShouldSaveFragmentState : (Landroidx/fragment/app/Fragment;)Z
    //   1719: ifeq -> 1734
    //   1722: aload_1
    //   1723: getfield mSavedViewState : Landroid/util/SparseArray;
    //   1726: ifnonnull -> 1734
    //   1729: aload_0
    //   1730: aload_1
    //   1731: invokevirtual saveFragmentViewState : (Landroidx/fragment/app/Fragment;)V
    //   1734: aload_1
    //   1735: invokevirtual performDestroyView : ()V
    //   1738: aload_0
    //   1739: aload_1
    //   1740: iconst_0
    //   1741: invokevirtual dispatchOnFragmentViewDestroyed : (Landroidx/fragment/app/Fragment;Z)V
    //   1744: aload_1
    //   1745: getfield mView : Landroid/view/View;
    //   1748: ifnull -> 1872
    //   1751: aload_1
    //   1752: getfield mContainer : Landroid/view/ViewGroup;
    //   1755: ifnull -> 1872
    //   1758: aload_1
    //   1759: getfield mContainer : Landroid/view/ViewGroup;
    //   1762: aload_1
    //   1763: getfield mView : Landroid/view/View;
    //   1766: invokevirtual endViewTransition : (Landroid/view/View;)V
    //   1769: aload_1
    //   1770: getfield mView : Landroid/view/View;
    //   1773: invokevirtual clearAnimation : ()V
    //   1776: aload_1
    //   1777: invokevirtual getParentFragment : ()Landroidx/fragment/app/Fragment;
    //   1780: ifnull -> 1793
    //   1783: aload_1
    //   1784: invokevirtual getParentFragment : ()Landroidx/fragment/app/Fragment;
    //   1787: getfield mRemoving : Z
    //   1790: ifne -> 1872
    //   1793: aload_0
    //   1794: getfield mCurState : I
    //   1797: ifle -> 1840
    //   1800: aload_0
    //   1801: getfield mDestroyed : Z
    //   1804: ifne -> 1840
    //   1807: aload_1
    //   1808: getfield mView : Landroid/view/View;
    //   1811: invokevirtual getVisibility : ()I
    //   1814: ifne -> 1840
    //   1817: aload_1
    //   1818: getfield mPostponedAlpha : F
    //   1821: fconst_0
    //   1822: fcmpl
    //   1823: iflt -> 1840
    //   1826: aload_0
    //   1827: aload_1
    //   1828: iload_3
    //   1829: iconst_0
    //   1830: iload #4
    //   1832: invokevirtual loadAnimation : (Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    //   1835: astore #11
    //   1837: goto -> 1843
    //   1840: aconst_null
    //   1841: astore #11
    //   1843: aload_1
    //   1844: fconst_0
    //   1845: putfield mPostponedAlpha : F
    //   1848: aload #11
    //   1850: ifnull -> 1861
    //   1853: aload_0
    //   1854: aload_1
    //   1855: aload #11
    //   1857: iload_2
    //   1858: invokespecial animateRemoveFragment : (Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;I)V
    //   1861: aload_1
    //   1862: getfield mContainer : Landroid/view/ViewGroup;
    //   1865: aload_1
    //   1866: getfield mView : Landroid/view/View;
    //   1869: invokevirtual removeView : (Landroid/view/View;)V
    //   1872: aload_1
    //   1873: aconst_null
    //   1874: putfield mContainer : Landroid/view/ViewGroup;
    //   1877: aload_1
    //   1878: aconst_null
    //   1879: putfield mView : Landroid/view/View;
    //   1882: aload_1
    //   1883: aconst_null
    //   1884: putfield mViewLifecycleOwner : Landroidx/fragment/app/FragmentViewLifecycleOwner;
    //   1887: aload_1
    //   1888: getfield mViewLifecycleOwnerLiveData : Landroidx/lifecycle/MutableLiveData;
    //   1891: aconst_null
    //   1892: invokevirtual setValue : (Ljava/lang/Object;)V
    //   1895: aload_1
    //   1896: aconst_null
    //   1897: putfield mInnerView : Landroid/view/View;
    //   1900: aload_1
    //   1901: iconst_0
    //   1902: putfield mInLayout : Z
    //   1905: iload_2
    //   1906: istore #10
    //   1908: iload_2
    //   1909: iconst_1
    //   1910: if_icmpge -> 2290
    //   1913: aload_0
    //   1914: getfield mDestroyed : Z
    //   1917: ifeq -> 1969
    //   1920: aload_1
    //   1921: invokevirtual getAnimatingAway : ()Landroid/view/View;
    //   1924: ifnull -> 1946
    //   1927: aload_1
    //   1928: invokevirtual getAnimatingAway : ()Landroid/view/View;
    //   1931: astore #11
    //   1933: aload_1
    //   1934: aconst_null
    //   1935: invokevirtual setAnimatingAway : (Landroid/view/View;)V
    //   1938: aload #11
    //   1940: invokevirtual clearAnimation : ()V
    //   1943: goto -> 1969
    //   1946: aload_1
    //   1947: invokevirtual getAnimator : ()Landroid/animation/Animator;
    //   1950: ifnull -> 1969
    //   1953: aload_1
    //   1954: invokevirtual getAnimator : ()Landroid/animation/Animator;
    //   1957: astore #11
    //   1959: aload_1
    //   1960: aconst_null
    //   1961: invokevirtual setAnimator : (Landroid/animation/Animator;)V
    //   1964: aload #11
    //   1966: invokevirtual cancel : ()V
    //   1969: aload_1
    //   1970: invokevirtual getAnimatingAway : ()Landroid/view/View;
    //   1973: ifnonnull -> 2279
    //   1976: aload_1
    //   1977: invokevirtual getAnimator : ()Landroid/animation/Animator;
    //   1980: ifnull -> 1986
    //   1983: goto -> 2279
    //   1986: getstatic androidx/fragment/app/FragmentManagerImpl.DEBUG : Z
    //   1989: ifeq -> 2028
    //   1992: new java/lang/StringBuilder
    //   1995: dup
    //   1996: invokespecial <init> : ()V
    //   1999: astore #11
    //   2001: aload #11
    //   2003: ldc_w 'movefrom CREATED: '
    //   2006: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2009: pop
    //   2010: aload #11
    //   2012: aload_1
    //   2013: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   2016: pop
    //   2017: ldc 'FragmentManager'
    //   2019: aload #11
    //   2021: invokevirtual toString : ()Ljava/lang/String;
    //   2024: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   2027: pop
    //   2028: aload_1
    //   2029: getfield mRemoving : Z
    //   2032: ifeq -> 2047
    //   2035: aload_1
    //   2036: invokevirtual isInBackStack : ()Z
    //   2039: ifne -> 2047
    //   2042: iconst_1
    //   2043: istore_3
    //   2044: goto -> 2049
    //   2047: iconst_0
    //   2048: istore_3
    //   2049: iload_3
    //   2050: ifne -> 2075
    //   2053: aload_0
    //   2054: getfield mNonConfig : Landroidx/fragment/app/FragmentManagerViewModel;
    //   2057: aload_1
    //   2058: invokevirtual shouldDestroy : (Landroidx/fragment/app/Fragment;)Z
    //   2061: ifeq -> 2067
    //   2064: goto -> 2075
    //   2067: aload_1
    //   2068: iconst_0
    //   2069: putfield mState : I
    //   2072: goto -> 2160
    //   2075: aload_0
    //   2076: getfield mHost : Landroidx/fragment/app/FragmentHostCallback;
    //   2079: astore #11
    //   2081: aload #11
    //   2083: instanceof androidx/lifecycle/ViewModelStoreOwner
    //   2086: ifeq -> 2101
    //   2089: aload_0
    //   2090: getfield mNonConfig : Landroidx/fragment/app/FragmentManagerViewModel;
    //   2093: invokevirtual isCleared : ()Z
    //   2096: istore #9
    //   2098: goto -> 2133
    //   2101: iload #7
    //   2103: istore #9
    //   2105: aload #11
    //   2107: invokevirtual getContext : ()Landroid/content/Context;
    //   2110: instanceof android/app/Activity
    //   2113: ifeq -> 2133
    //   2116: iconst_1
    //   2117: aload_0
    //   2118: getfield mHost : Landroidx/fragment/app/FragmentHostCallback;
    //   2121: invokevirtual getContext : ()Landroid/content/Context;
    //   2124: checkcast android/app/Activity
    //   2127: invokevirtual isChangingConfigurations : ()Z
    //   2130: ixor
    //   2131: istore #9
    //   2133: iload_3
    //   2134: ifne -> 2142
    //   2137: iload #9
    //   2139: ifeq -> 2150
    //   2142: aload_0
    //   2143: getfield mNonConfig : Landroidx/fragment/app/FragmentManagerViewModel;
    //   2146: aload_1
    //   2147: invokevirtual clearNonConfigState : (Landroidx/fragment/app/Fragment;)V
    //   2150: aload_1
    //   2151: invokevirtual performDestroy : ()V
    //   2154: aload_0
    //   2155: aload_1
    //   2156: iconst_0
    //   2157: invokevirtual dispatchOnFragmentDestroyed : (Landroidx/fragment/app/Fragment;Z)V
    //   2160: aload_1
    //   2161: invokevirtual performDetach : ()V
    //   2164: aload_0
    //   2165: aload_1
    //   2166: iconst_0
    //   2167: invokevirtual dispatchOnFragmentDetached : (Landroidx/fragment/app/Fragment;Z)V
    //   2170: iload_2
    //   2171: istore #10
    //   2173: iload #5
    //   2175: ifne -> 2290
    //   2178: iload_3
    //   2179: ifne -> 2268
    //   2182: aload_0
    //   2183: getfield mNonConfig : Landroidx/fragment/app/FragmentManagerViewModel;
    //   2186: aload_1
    //   2187: invokevirtual shouldDestroy : (Landroidx/fragment/app/Fragment;)Z
    //   2190: ifeq -> 2196
    //   2193: goto -> 2268
    //   2196: aload_1
    //   2197: aconst_null
    //   2198: putfield mHost : Landroidx/fragment/app/FragmentHostCallback;
    //   2201: aload_1
    //   2202: aconst_null
    //   2203: putfield mParentFragment : Landroidx/fragment/app/Fragment;
    //   2206: aload_1
    //   2207: aconst_null
    //   2208: putfield mFragmentManager : Landroidx/fragment/app/FragmentManagerImpl;
    //   2211: iload_2
    //   2212: istore #10
    //   2214: aload_1
    //   2215: getfield mTargetWho : Ljava/lang/String;
    //   2218: ifnull -> 2290
    //   2221: aload_0
    //   2222: getfield mActive : Ljava/util/HashMap;
    //   2225: aload_1
    //   2226: getfield mTargetWho : Ljava/lang/String;
    //   2229: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   2232: checkcast androidx/fragment/app/Fragment
    //   2235: astore #11
    //   2237: iload_2
    //   2238: istore #10
    //   2240: aload #11
    //   2242: ifnull -> 2290
    //   2245: iload_2
    //   2246: istore #10
    //   2248: aload #11
    //   2250: invokevirtual getRetainInstance : ()Z
    //   2253: ifeq -> 2290
    //   2256: aload_1
    //   2257: aload #11
    //   2259: putfield mTarget : Landroidx/fragment/app/Fragment;
    //   2262: iload_2
    //   2263: istore #10
    //   2265: goto -> 2290
    //   2268: aload_0
    //   2269: aload_1
    //   2270: invokevirtual makeInactive : (Landroidx/fragment/app/Fragment;)V
    //   2273: iload_2
    //   2274: istore #10
    //   2276: goto -> 2290
    //   2279: aload_1
    //   2280: iload_2
    //   2281: invokevirtual setStateAfterAnimating : (I)V
    //   2284: iload #8
    //   2286: istore_2
    //   2287: goto -> 2293
    //   2290: iload #10
    //   2292: istore_2
    //   2293: aload_1
    //   2294: getfield mState : I
    //   2297: iload_2
    //   2298: if_icmpeq -> 2377
    //   2301: new java/lang/StringBuilder
    //   2304: dup
    //   2305: invokespecial <init> : ()V
    //   2308: astore #11
    //   2310: aload #11
    //   2312: ldc_w 'moveToState: Fragment state for '
    //   2315: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2318: pop
    //   2319: aload #11
    //   2321: aload_1
    //   2322: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   2325: pop
    //   2326: aload #11
    //   2328: ldc_w ' not updated inline; expected state '
    //   2331: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2334: pop
    //   2335: aload #11
    //   2337: iload_2
    //   2338: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   2341: pop
    //   2342: aload #11
    //   2344: ldc_w ' found '
    //   2347: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2350: pop
    //   2351: aload #11
    //   2353: aload_1
    //   2354: getfield mState : I
    //   2357: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   2360: pop
    //   2361: ldc 'FragmentManager'
    //   2363: aload #11
    //   2365: invokevirtual toString : ()Ljava/lang/String;
    //   2368: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   2371: pop
    //   2372: aload_1
    //   2373: iload_2
    //   2374: putfield mState : I
    //   2377: return
    // Exception table:
    //   from	to	target	type
    //   1052	1065	1068	android/content/res/Resources$NotFoundException
  }
  
  public void noteStateNotSaved() {
    byte b = 0;
    this.mStateSaved = false;
    this.mStopped = false;
    int i = this.mAdded.size();
    while (b < i) {
      Fragment fragment = this.mAdded.get(b);
      if (fragment != null)
        fragment.noteStateNotSaved(); 
      b++;
    } 
  }
  
  public View onCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet) {
    boolean bool = "fragment".equals(paramString);
    paramString = null;
    if (!bool)
      return null; 
    String str1 = paramAttributeSet.getAttributeValue(null, "class");
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, FragmentTag.Fragment);
    int i = 0;
    String str2 = str1;
    if (str1 == null)
      str2 = typedArray.getString(0); 
    int j = typedArray.getResourceId(1, -1);
    str1 = typedArray.getString(2);
    typedArray.recycle();
    if (str2 == null || !FragmentFactory.isFragmentClass(paramContext.getClassLoader(), str2))
      return null; 
    if (paramView != null)
      i = paramView.getId(); 
    if (i != -1 || j != -1 || str1 != null) {
      String str = paramString;
      if (j != -1)
        fragment1 = findFragmentById(j); 
      Fragment fragment2 = fragment1;
      if (fragment1 == null) {
        fragment2 = fragment1;
        if (str1 != null)
          fragment2 = findFragmentByTag(str1); 
      } 
      Fragment fragment1 = fragment2;
      if (fragment2 == null) {
        fragment1 = fragment2;
        if (i != -1)
          fragment1 = findFragmentById(i); 
      } 
      if (DEBUG) {
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append("onCreateView: id=0x");
        stringBuilder2.append(Integer.toHexString(j));
        stringBuilder2.append(" fname=");
        stringBuilder2.append(str2);
        stringBuilder2.append(" existing=");
        stringBuilder2.append(fragment1);
        Log.v("FragmentManager", stringBuilder2.toString());
      } 
      if (fragment1 == null) {
        int k;
        fragment1 = getFragmentFactory().instantiate(paramContext.getClassLoader(), str2);
        fragment1.mFromLayout = true;
        if (j != 0) {
          k = j;
        } else {
          k = i;
        } 
        fragment1.mFragmentId = k;
        fragment1.mContainerId = i;
        fragment1.mTag = str1;
        fragment1.mInLayout = true;
        fragment1.mFragmentManager = this;
        FragmentHostCallback fragmentHostCallback = this.mHost;
        fragment1.mHost = fragmentHostCallback;
        fragment1.onInflate(fragmentHostCallback.getContext(), paramAttributeSet, fragment1.mSavedFragmentState);
        addFragment(fragment1, true);
      } else if (!fragment1.mInLayout) {
        fragment1.mInLayout = true;
        FragmentHostCallback fragmentHostCallback = this.mHost;
        fragment1.mHost = fragmentHostCallback;
        fragment1.onInflate(fragmentHostCallback.getContext(), paramAttributeSet, fragment1.mSavedFragmentState);
      } else {
        stringBuilder1 = new StringBuilder();
        stringBuilder1.append(paramAttributeSet.getPositionDescription());
        stringBuilder1.append(": Duplicate id 0x");
        stringBuilder1.append(Integer.toHexString(j));
        stringBuilder1.append(", tag ");
        stringBuilder1.append(str1);
        stringBuilder1.append(", or parent id 0x");
        stringBuilder1.append(Integer.toHexString(i));
        stringBuilder1.append(" with another fragment for ");
        stringBuilder1.append(str2);
        throw new IllegalArgumentException(stringBuilder1.toString());
      } 
      if (this.mCurState < 1 && ((Fragment)stringBuilder1).mFromLayout) {
        moveToState((Fragment)stringBuilder1, 1, 0, 0, false);
      } else {
        moveToState((Fragment)stringBuilder1);
      } 
      if (((Fragment)stringBuilder1).mView != null) {
        if (j != 0)
          ((Fragment)stringBuilder1).mView.setId(j); 
        if (((Fragment)stringBuilder1).mView.getTag() == null)
          ((Fragment)stringBuilder1).mView.setTag(str1); 
        return ((Fragment)stringBuilder1).mView;
      } 
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append("Fragment ");
      stringBuilder1.append(str2);
      stringBuilder1.append(" did not create a view.");
      throw new IllegalStateException(stringBuilder1.toString());
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(paramAttributeSet.getPositionDescription());
    stringBuilder.append(": Must specify unique android:id, android:tag, or have a parent with an id for ");
    stringBuilder.append(str2);
    throw new IllegalArgumentException(stringBuilder.toString());
  }
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet) {
    return onCreateView((View)null, paramString, paramContext, paramAttributeSet);
  }
  
  public void performPendingDeferredStart(Fragment paramFragment) {
    if (paramFragment.mDeferStart) {
      if (this.mExecutingActions) {
        this.mHavePendingDeferredStart = true;
        return;
      } 
      paramFragment.mDeferStart = false;
      moveToState(paramFragment, this.mCurState, 0, 0, false);
    } 
  }
  
  public void popBackStack() {
    enqueueAction(new PopBackStackState(null, -1, 0), false);
  }
  
  public void popBackStack(int paramInt1, int paramInt2) {
    if (paramInt1 >= 0) {
      enqueueAction(new PopBackStackState(null, paramInt1, paramInt2), false);
      return;
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("Bad id: ");
    stringBuilder.append(paramInt1);
    throw new IllegalArgumentException(stringBuilder.toString());
  }
  
  public void popBackStack(String paramString, int paramInt) {
    enqueueAction(new PopBackStackState(paramString, -1, paramInt), false);
  }
  
  public boolean popBackStackImmediate() {
    checkStateLoss();
    return popBackStackImmediate((String)null, -1, 0);
  }
  
  public boolean popBackStackImmediate(int paramInt1, int paramInt2) {
    checkStateLoss();
    execPendingActions();
    if (paramInt1 >= 0)
      return popBackStackImmediate((String)null, paramInt1, paramInt2); 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("Bad id: ");
    stringBuilder.append(paramInt1);
    throw new IllegalArgumentException(stringBuilder.toString());
  }
  
  public boolean popBackStackImmediate(String paramString, int paramInt) {
    checkStateLoss();
    return popBackStackImmediate(paramString, -1, paramInt);
  }
  
  boolean popBackStackState(ArrayList<BackStackRecord> paramArrayList, ArrayList<Boolean> paramArrayList1, String paramString, int paramInt1, int paramInt2) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mBackStack : Ljava/util/ArrayList;
    //   4: astore #6
    //   6: aload #6
    //   8: ifnonnull -> 13
    //   11: iconst_0
    //   12: ireturn
    //   13: aload_3
    //   14: ifnonnull -> 71
    //   17: iload #4
    //   19: ifge -> 71
    //   22: iload #5
    //   24: iconst_1
    //   25: iand
    //   26: ifne -> 71
    //   29: aload #6
    //   31: invokevirtual size : ()I
    //   34: iconst_1
    //   35: isub
    //   36: istore #4
    //   38: iload #4
    //   40: ifge -> 45
    //   43: iconst_0
    //   44: ireturn
    //   45: aload_1
    //   46: aload_0
    //   47: getfield mBackStack : Ljava/util/ArrayList;
    //   50: iload #4
    //   52: invokevirtual remove : (I)Ljava/lang/Object;
    //   55: invokevirtual add : (Ljava/lang/Object;)Z
    //   58: pop
    //   59: aload_2
    //   60: iconst_1
    //   61: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   64: invokevirtual add : (Ljava/lang/Object;)Z
    //   67: pop
    //   68: goto -> 322
    //   71: aload_3
    //   72: ifnonnull -> 89
    //   75: iload #4
    //   77: iflt -> 83
    //   80: goto -> 89
    //   83: iconst_m1
    //   84: istore #7
    //   86: goto -> 259
    //   89: aload_0
    //   90: getfield mBackStack : Ljava/util/ArrayList;
    //   93: invokevirtual size : ()I
    //   96: iconst_1
    //   97: isub
    //   98: istore #8
    //   100: iload #8
    //   102: iflt -> 162
    //   105: aload_0
    //   106: getfield mBackStack : Ljava/util/ArrayList;
    //   109: iload #8
    //   111: invokevirtual get : (I)Ljava/lang/Object;
    //   114: checkcast androidx/fragment/app/BackStackRecord
    //   117: astore #6
    //   119: aload_3
    //   120: ifnull -> 138
    //   123: aload_3
    //   124: aload #6
    //   126: invokevirtual getName : ()Ljava/lang/String;
    //   129: invokevirtual equals : (Ljava/lang/Object;)Z
    //   132: ifeq -> 138
    //   135: goto -> 162
    //   138: iload #4
    //   140: iflt -> 156
    //   143: iload #4
    //   145: aload #6
    //   147: getfield mIndex : I
    //   150: if_icmpne -> 156
    //   153: goto -> 162
    //   156: iinc #8, -1
    //   159: goto -> 100
    //   162: iload #8
    //   164: ifge -> 169
    //   167: iconst_0
    //   168: ireturn
    //   169: iload #8
    //   171: istore #7
    //   173: iload #5
    //   175: iconst_1
    //   176: iand
    //   177: ifeq -> 259
    //   180: iload #8
    //   182: iconst_1
    //   183: isub
    //   184: istore #5
    //   186: iload #5
    //   188: istore #7
    //   190: iload #5
    //   192: iflt -> 259
    //   195: aload_0
    //   196: getfield mBackStack : Ljava/util/ArrayList;
    //   199: iload #5
    //   201: invokevirtual get : (I)Ljava/lang/Object;
    //   204: checkcast androidx/fragment/app/BackStackRecord
    //   207: astore #6
    //   209: aload_3
    //   210: ifnull -> 229
    //   213: iload #5
    //   215: istore #8
    //   217: aload_3
    //   218: aload #6
    //   220: invokevirtual getName : ()Ljava/lang/String;
    //   223: invokevirtual equals : (Ljava/lang/Object;)Z
    //   226: ifne -> 180
    //   229: iload #5
    //   231: istore #7
    //   233: iload #4
    //   235: iflt -> 259
    //   238: iload #5
    //   240: istore #7
    //   242: iload #4
    //   244: aload #6
    //   246: getfield mIndex : I
    //   249: if_icmpne -> 259
    //   252: iload #5
    //   254: istore #8
    //   256: goto -> 180
    //   259: iload #7
    //   261: aload_0
    //   262: getfield mBackStack : Ljava/util/ArrayList;
    //   265: invokevirtual size : ()I
    //   268: iconst_1
    //   269: isub
    //   270: if_icmpne -> 275
    //   273: iconst_0
    //   274: ireturn
    //   275: aload_0
    //   276: getfield mBackStack : Ljava/util/ArrayList;
    //   279: invokevirtual size : ()I
    //   282: iconst_1
    //   283: isub
    //   284: istore #4
    //   286: iload #4
    //   288: iload #7
    //   290: if_icmple -> 322
    //   293: aload_1
    //   294: aload_0
    //   295: getfield mBackStack : Ljava/util/ArrayList;
    //   298: iload #4
    //   300: invokevirtual remove : (I)Ljava/lang/Object;
    //   303: invokevirtual add : (Ljava/lang/Object;)Z
    //   306: pop
    //   307: aload_2
    //   308: iconst_1
    //   309: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   312: invokevirtual add : (Ljava/lang/Object;)Z
    //   315: pop
    //   316: iinc #4, -1
    //   319: goto -> 286
    //   322: iconst_1
    //   323: ireturn
  }
  
  public void putFragment(Bundle paramBundle, String paramString, Fragment paramFragment) {
    if (paramFragment.mFragmentManager != this) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("Fragment ");
      stringBuilder.append(paramFragment);
      stringBuilder.append(" is not currently in the FragmentManager");
      throwException(new IllegalStateException(stringBuilder.toString()));
    } 
    paramBundle.putString(paramString, paramFragment.mWho);
  }
  
  public void registerFragmentLifecycleCallbacks(FragmentManager.FragmentLifecycleCallbacks paramFragmentLifecycleCallbacks, boolean paramBoolean) {
    this.mLifecycleCallbacks.add(new FragmentLifecycleCallbacksHolder(paramFragmentLifecycleCallbacks, paramBoolean));
  }
  
  public void removeFragment(Fragment paramFragment) {
    if (DEBUG) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("remove: ");
      stringBuilder.append(paramFragment);
      stringBuilder.append(" nesting=");
      stringBuilder.append(paramFragment.mBackStackNesting);
      Log.v("FragmentManager", stringBuilder.toString());
    } 
    boolean bool = paramFragment.isInBackStack();
    if (!paramFragment.mDetached || (bool ^ true) != 0)
      synchronized (this.mAdded) {
        this.mAdded.remove(paramFragment);
        if (isMenuAvailable(paramFragment))
          this.mNeedMenuInvalidate = true; 
        paramFragment.mAdded = false;
        paramFragment.mRemoving = true;
        return;
      }  
  }
  
  public void removeOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener paramOnBackStackChangedListener) {
    ArrayList<FragmentManager.OnBackStackChangedListener> arrayList = this.mBackStackChangeListeners;
    if (arrayList != null)
      arrayList.remove(paramOnBackStackChangedListener); 
  }
  
  void removeRetainedFragment(Fragment paramFragment) {
    if (isStateSaved()) {
      if (DEBUG)
        Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved"); 
      return;
    } 
    if (this.mNonConfig.removeRetainedFragment(paramFragment) && DEBUG) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("Updating retained Fragments: Removed ");
      stringBuilder.append(paramFragment);
      Log.v("FragmentManager", stringBuilder.toString());
    } 
  }
  
  void reportBackStackChanged() {
    if (this.mBackStackChangeListeners != null)
      for (byte b = 0; b < this.mBackStackChangeListeners.size(); b++)
        ((FragmentManager.OnBackStackChangedListener)this.mBackStackChangeListeners.get(b)).onBackStackChanged();  
  }
  
  void restoreAllState(Parcelable paramParcelable, FragmentManagerNonConfig paramFragmentManagerNonConfig) {
    if (this.mHost instanceof ViewModelStoreOwner)
      throwException(new IllegalStateException("You must use restoreSaveState when your FragmentHostCallback implements ViewModelStoreOwner")); 
    this.mNonConfig.restoreFromSnapshot(paramFragmentManagerNonConfig);
    restoreSaveState(paramParcelable);
  }
  
  void restoreSaveState(Parcelable paramParcelable) {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull -> 5
    //   4: return
    //   5: aload_1
    //   6: checkcast androidx/fragment/app/FragmentManagerState
    //   9: astore_2
    //   10: aload_2
    //   11: getfield mActive : Ljava/util/ArrayList;
    //   14: ifnonnull -> 18
    //   17: return
    //   18: aload_0
    //   19: getfield mNonConfig : Landroidx/fragment/app/FragmentManagerViewModel;
    //   22: invokevirtual getRetainedFragments : ()Ljava/util/Collection;
    //   25: invokeinterface iterator : ()Ljava/util/Iterator;
    //   30: astore_3
    //   31: aload_3
    //   32: invokeinterface hasNext : ()Z
    //   37: ifeq -> 346
    //   40: aload_3
    //   41: invokeinterface next : ()Ljava/lang/Object;
    //   46: checkcast androidx/fragment/app/Fragment
    //   49: astore #4
    //   51: getstatic androidx/fragment/app/FragmentManagerImpl.DEBUG : Z
    //   54: ifeq -> 90
    //   57: new java/lang/StringBuilder
    //   60: dup
    //   61: invokespecial <init> : ()V
    //   64: astore_1
    //   65: aload_1
    //   66: ldc_w 'restoreSaveState: re-attaching retained '
    //   69: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: pop
    //   73: aload_1
    //   74: aload #4
    //   76: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   79: pop
    //   80: ldc 'FragmentManager'
    //   82: aload_1
    //   83: invokevirtual toString : ()Ljava/lang/String;
    //   86: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   89: pop
    //   90: aload_2
    //   91: getfield mActive : Ljava/util/ArrayList;
    //   94: invokevirtual iterator : ()Ljava/util/Iterator;
    //   97: astore #5
    //   99: aload #5
    //   101: invokeinterface hasNext : ()Z
    //   106: ifeq -> 138
    //   109: aload #5
    //   111: invokeinterface next : ()Ljava/lang/Object;
    //   116: checkcast androidx/fragment/app/FragmentState
    //   119: astore_1
    //   120: aload_1
    //   121: getfield mWho : Ljava/lang/String;
    //   124: aload #4
    //   126: getfield mWho : Ljava/lang/String;
    //   129: invokevirtual equals : (Ljava/lang/Object;)Z
    //   132: ifeq -> 99
    //   135: goto -> 140
    //   138: aconst_null
    //   139: astore_1
    //   140: aload_1
    //   141: ifnonnull -> 229
    //   144: getstatic androidx/fragment/app/FragmentManagerImpl.DEBUG : Z
    //   147: ifeq -> 200
    //   150: new java/lang/StringBuilder
    //   153: dup
    //   154: invokespecial <init> : ()V
    //   157: astore_1
    //   158: aload_1
    //   159: ldc_w 'Discarding retained Fragment '
    //   162: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: pop
    //   166: aload_1
    //   167: aload #4
    //   169: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   172: pop
    //   173: aload_1
    //   174: ldc_w ' that was not found in the set of active Fragments '
    //   177: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: pop
    //   181: aload_1
    //   182: aload_2
    //   183: getfield mActive : Ljava/util/ArrayList;
    //   186: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   189: pop
    //   190: ldc 'FragmentManager'
    //   192: aload_1
    //   193: invokevirtual toString : ()Ljava/lang/String;
    //   196: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   199: pop
    //   200: aload_0
    //   201: aload #4
    //   203: iconst_1
    //   204: iconst_0
    //   205: iconst_0
    //   206: iconst_0
    //   207: invokevirtual moveToState : (Landroidx/fragment/app/Fragment;IIIZ)V
    //   210: aload #4
    //   212: iconst_1
    //   213: putfield mRemoving : Z
    //   216: aload_0
    //   217: aload #4
    //   219: iconst_0
    //   220: iconst_0
    //   221: iconst_0
    //   222: iconst_0
    //   223: invokevirtual moveToState : (Landroidx/fragment/app/Fragment;IIIZ)V
    //   226: goto -> 31
    //   229: aload_1
    //   230: aload #4
    //   232: putfield mInstance : Landroidx/fragment/app/Fragment;
    //   235: aload #4
    //   237: aconst_null
    //   238: putfield mSavedViewState : Landroid/util/SparseArray;
    //   241: aload #4
    //   243: iconst_0
    //   244: putfield mBackStackNesting : I
    //   247: aload #4
    //   249: iconst_0
    //   250: putfield mInLayout : Z
    //   253: aload #4
    //   255: iconst_0
    //   256: putfield mAdded : Z
    //   259: aload #4
    //   261: getfield mTarget : Landroidx/fragment/app/Fragment;
    //   264: ifnull -> 280
    //   267: aload #4
    //   269: getfield mTarget : Landroidx/fragment/app/Fragment;
    //   272: getfield mWho : Ljava/lang/String;
    //   275: astore #5
    //   277: goto -> 283
    //   280: aconst_null
    //   281: astore #5
    //   283: aload #4
    //   285: aload #5
    //   287: putfield mTargetWho : Ljava/lang/String;
    //   290: aload #4
    //   292: aconst_null
    //   293: putfield mTarget : Landroidx/fragment/app/Fragment;
    //   296: aload_1
    //   297: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   300: ifnull -> 31
    //   303: aload_1
    //   304: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   307: aload_0
    //   308: getfield mHost : Landroidx/fragment/app/FragmentHostCallback;
    //   311: invokevirtual getContext : ()Landroid/content/Context;
    //   314: invokevirtual getClassLoader : ()Ljava/lang/ClassLoader;
    //   317: invokevirtual setClassLoader : (Ljava/lang/ClassLoader;)V
    //   320: aload #4
    //   322: aload_1
    //   323: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   326: ldc 'android:view_state'
    //   328: invokevirtual getSparseParcelableArray : (Ljava/lang/String;)Landroid/util/SparseArray;
    //   331: putfield mSavedViewState : Landroid/util/SparseArray;
    //   334: aload #4
    //   336: aload_1
    //   337: getfield mSavedFragmentState : Landroid/os/Bundle;
    //   340: putfield mSavedFragmentState : Landroid/os/Bundle;
    //   343: goto -> 31
    //   346: aload_0
    //   347: getfield mActive : Ljava/util/HashMap;
    //   350: invokevirtual clear : ()V
    //   353: aload_2
    //   354: getfield mActive : Ljava/util/ArrayList;
    //   357: invokevirtual iterator : ()Ljava/util/Iterator;
    //   360: astore_3
    //   361: aload_3
    //   362: invokeinterface hasNext : ()Z
    //   367: ifeq -> 496
    //   370: aload_3
    //   371: invokeinterface next : ()Ljava/lang/Object;
    //   376: checkcast androidx/fragment/app/FragmentState
    //   379: astore_1
    //   380: aload_1
    //   381: ifnull -> 361
    //   384: aload_1
    //   385: aload_0
    //   386: getfield mHost : Landroidx/fragment/app/FragmentHostCallback;
    //   389: invokevirtual getContext : ()Landroid/content/Context;
    //   392: invokevirtual getClassLoader : ()Ljava/lang/ClassLoader;
    //   395: aload_0
    //   396: invokevirtual getFragmentFactory : ()Landroidx/fragment/app/FragmentFactory;
    //   399: invokevirtual instantiate : (Ljava/lang/ClassLoader;Landroidx/fragment/app/FragmentFactory;)Landroidx/fragment/app/Fragment;
    //   402: astore #4
    //   404: aload #4
    //   406: aload_0
    //   407: putfield mFragmentManager : Landroidx/fragment/app/FragmentManagerImpl;
    //   410: getstatic androidx/fragment/app/FragmentManagerImpl.DEBUG : Z
    //   413: ifeq -> 473
    //   416: new java/lang/StringBuilder
    //   419: dup
    //   420: invokespecial <init> : ()V
    //   423: astore #5
    //   425: aload #5
    //   427: ldc_w 'restoreSaveState: active ('
    //   430: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   433: pop
    //   434: aload #5
    //   436: aload #4
    //   438: getfield mWho : Ljava/lang/String;
    //   441: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   444: pop
    //   445: aload #5
    //   447: ldc_w '): '
    //   450: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   453: pop
    //   454: aload #5
    //   456: aload #4
    //   458: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   461: pop
    //   462: ldc 'FragmentManager'
    //   464: aload #5
    //   466: invokevirtual toString : ()Ljava/lang/String;
    //   469: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   472: pop
    //   473: aload_0
    //   474: getfield mActive : Ljava/util/HashMap;
    //   477: aload #4
    //   479: getfield mWho : Ljava/lang/String;
    //   482: aload #4
    //   484: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   487: pop
    //   488: aload_1
    //   489: aconst_null
    //   490: putfield mInstance : Landroidx/fragment/app/Fragment;
    //   493: goto -> 361
    //   496: aload_0
    //   497: getfield mAdded : Ljava/util/ArrayList;
    //   500: invokevirtual clear : ()V
    //   503: aload_2
    //   504: getfield mAdded : Ljava/util/ArrayList;
    //   507: ifnull -> 741
    //   510: aload_2
    //   511: getfield mAdded : Ljava/util/ArrayList;
    //   514: invokevirtual iterator : ()Ljava/util/Iterator;
    //   517: astore #5
    //   519: aload #5
    //   521: invokeinterface hasNext : ()Z
    //   526: ifeq -> 741
    //   529: aload #5
    //   531: invokeinterface next : ()Ljava/lang/Object;
    //   536: checkcast java/lang/String
    //   539: astore #4
    //   541: aload_0
    //   542: getfield mActive : Ljava/util/HashMap;
    //   545: aload #4
    //   547: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   550: checkcast androidx/fragment/app/Fragment
    //   553: astore_1
    //   554: aload_1
    //   555: ifnonnull -> 604
    //   558: new java/lang/StringBuilder
    //   561: dup
    //   562: invokespecial <init> : ()V
    //   565: astore_3
    //   566: aload_3
    //   567: ldc_w 'No instantiated fragment for ('
    //   570: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   573: pop
    //   574: aload_3
    //   575: aload #4
    //   577: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   580: pop
    //   581: aload_3
    //   582: ldc_w ')'
    //   585: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   588: pop
    //   589: aload_0
    //   590: new java/lang/IllegalStateException
    //   593: dup
    //   594: aload_3
    //   595: invokevirtual toString : ()Ljava/lang/String;
    //   598: invokespecial <init> : (Ljava/lang/String;)V
    //   601: invokespecial throwException : (Ljava/lang/RuntimeException;)V
    //   604: aload_1
    //   605: iconst_1
    //   606: putfield mAdded : Z
    //   609: getstatic androidx/fragment/app/FragmentManagerImpl.DEBUG : Z
    //   612: ifeq -> 662
    //   615: new java/lang/StringBuilder
    //   618: dup
    //   619: invokespecial <init> : ()V
    //   622: astore_3
    //   623: aload_3
    //   624: ldc_w 'restoreSaveState: added ('
    //   627: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   630: pop
    //   631: aload_3
    //   632: aload #4
    //   634: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   637: pop
    //   638: aload_3
    //   639: ldc_w '): '
    //   642: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   645: pop
    //   646: aload_3
    //   647: aload_1
    //   648: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   651: pop
    //   652: ldc 'FragmentManager'
    //   654: aload_3
    //   655: invokevirtual toString : ()Ljava/lang/String;
    //   658: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   661: pop
    //   662: aload_0
    //   663: getfield mAdded : Ljava/util/ArrayList;
    //   666: aload_1
    //   667: invokevirtual contains : (Ljava/lang/Object;)Z
    //   670: ifne -> 703
    //   673: aload_0
    //   674: getfield mAdded : Ljava/util/ArrayList;
    //   677: astore #4
    //   679: aload #4
    //   681: monitorenter
    //   682: aload_0
    //   683: getfield mAdded : Ljava/util/ArrayList;
    //   686: aload_1
    //   687: invokevirtual add : (Ljava/lang/Object;)Z
    //   690: pop
    //   691: aload #4
    //   693: monitorexit
    //   694: goto -> 519
    //   697: astore_1
    //   698: aload #4
    //   700: monitorexit
    //   701: aload_1
    //   702: athrow
    //   703: new java/lang/StringBuilder
    //   706: dup
    //   707: invokespecial <init> : ()V
    //   710: astore #5
    //   712: aload #5
    //   714: ldc_w 'Already added '
    //   717: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   720: pop
    //   721: aload #5
    //   723: aload_1
    //   724: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   727: pop
    //   728: new java/lang/IllegalStateException
    //   731: dup
    //   732: aload #5
    //   734: invokevirtual toString : ()Ljava/lang/String;
    //   737: invokespecial <init> : (Ljava/lang/String;)V
    //   740: athrow
    //   741: aload_2
    //   742: getfield mBackStack : [Landroidx/fragment/app/BackStackState;
    //   745: ifnull -> 931
    //   748: aload_0
    //   749: new java/util/ArrayList
    //   752: dup
    //   753: aload_2
    //   754: getfield mBackStack : [Landroidx/fragment/app/BackStackState;
    //   757: arraylength
    //   758: invokespecial <init> : (I)V
    //   761: putfield mBackStack : Ljava/util/ArrayList;
    //   764: iconst_0
    //   765: istore #6
    //   767: iload #6
    //   769: aload_2
    //   770: getfield mBackStack : [Landroidx/fragment/app/BackStackState;
    //   773: arraylength
    //   774: if_icmpge -> 936
    //   777: aload_2
    //   778: getfield mBackStack : [Landroidx/fragment/app/BackStackState;
    //   781: iload #6
    //   783: aaload
    //   784: aload_0
    //   785: invokevirtual instantiate : (Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/BackStackRecord;
    //   788: astore_1
    //   789: getstatic androidx/fragment/app/FragmentManagerImpl.DEBUG : Z
    //   792: ifeq -> 900
    //   795: new java/lang/StringBuilder
    //   798: dup
    //   799: invokespecial <init> : ()V
    //   802: astore #5
    //   804: aload #5
    //   806: ldc_w 'restoreAllState: back stack #'
    //   809: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   812: pop
    //   813: aload #5
    //   815: iload #6
    //   817: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   820: pop
    //   821: aload #5
    //   823: ldc_w ' (index '
    //   826: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   829: pop
    //   830: aload #5
    //   832: aload_1
    //   833: getfield mIndex : I
    //   836: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   839: pop
    //   840: aload #5
    //   842: ldc_w '): '
    //   845: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   848: pop
    //   849: aload #5
    //   851: aload_1
    //   852: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   855: pop
    //   856: ldc 'FragmentManager'
    //   858: aload #5
    //   860: invokevirtual toString : ()Ljava/lang/String;
    //   863: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   866: pop
    //   867: new java/io/PrintWriter
    //   870: dup
    //   871: new androidx/core/util/LogWriter
    //   874: dup
    //   875: ldc 'FragmentManager'
    //   877: invokespecial <init> : (Ljava/lang/String;)V
    //   880: invokespecial <init> : (Ljava/io/Writer;)V
    //   883: astore #5
    //   885: aload_1
    //   886: ldc_w '  '
    //   889: aload #5
    //   891: iconst_0
    //   892: invokevirtual dump : (Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    //   895: aload #5
    //   897: invokevirtual close : ()V
    //   900: aload_0
    //   901: getfield mBackStack : Ljava/util/ArrayList;
    //   904: aload_1
    //   905: invokevirtual add : (Ljava/lang/Object;)Z
    //   908: pop
    //   909: aload_1
    //   910: getfield mIndex : I
    //   913: iflt -> 925
    //   916: aload_0
    //   917: aload_1
    //   918: getfield mIndex : I
    //   921: aload_1
    //   922: invokevirtual setBackStackIndex : (ILandroidx/fragment/app/BackStackRecord;)V
    //   925: iinc #6, 1
    //   928: goto -> 767
    //   931: aload_0
    //   932: aconst_null
    //   933: putfield mBackStack : Ljava/util/ArrayList;
    //   936: aload_2
    //   937: getfield mPrimaryNavActiveWho : Ljava/lang/String;
    //   940: ifnull -> 969
    //   943: aload_0
    //   944: aload_0
    //   945: getfield mActive : Ljava/util/HashMap;
    //   948: aload_2
    //   949: getfield mPrimaryNavActiveWho : Ljava/lang/String;
    //   952: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   955: checkcast androidx/fragment/app/Fragment
    //   958: putfield mPrimaryNav : Landroidx/fragment/app/Fragment;
    //   961: aload_0
    //   962: aload_0
    //   963: getfield mPrimaryNav : Landroidx/fragment/app/Fragment;
    //   966: invokespecial dispatchParentPrimaryNavigationFragmentChanged : (Landroidx/fragment/app/Fragment;)V
    //   969: aload_0
    //   970: aload_2
    //   971: getfield mNextFragmentIndex : I
    //   974: putfield mNextFragmentIndex : I
    //   977: return
    // Exception table:
    //   from	to	target	type
    //   682	694	697	finally
    //   698	701	697	finally
  }
  
  @Deprecated
  FragmentManagerNonConfig retainNonConfig() {
    if (this.mHost instanceof ViewModelStoreOwner)
      throwException(new IllegalStateException("You cannot use retainNonConfig when your FragmentHostCallback implements ViewModelStoreOwner.")); 
    return this.mNonConfig.getSnapshot();
  }
  
  Parcelable saveAllState() {
    StringBuilder stringBuilder;
    forcePostponedTransactions();
    endAnimatingAwayFragments();
    execPendingActions();
    this.mStateSaved = true;
    boolean bool = this.mActive.isEmpty();
    BackStackState[] arrayOfBackStackState1 = null;
    if (bool)
      return null; 
    ArrayList<FragmentState> arrayList = new ArrayList(this.mActive.size());
    Iterator<Fragment> iterator = this.mActive.values().iterator();
    boolean bool1 = false;
    int i = 0;
    while (iterator.hasNext()) {
      Fragment fragment1 = iterator.next();
      if (fragment1 != null) {
        if (fragment1.mFragmentManager != this) {
          StringBuilder stringBuilder1 = new StringBuilder();
          stringBuilder1.append("Failure saving state: active ");
          stringBuilder1.append(fragment1);
          stringBuilder1.append(" was removed from the FragmentManager");
          throwException(new IllegalStateException(stringBuilder1.toString()));
        } 
        FragmentState fragmentState = new FragmentState(fragment1);
        arrayList.add(fragmentState);
        if (fragment1.mState > 0 && fragmentState.mSavedFragmentState == null) {
          fragmentState.mSavedFragmentState = saveFragmentBasicState(fragment1);
          if (fragment1.mTargetWho != null) {
            Fragment fragment2 = this.mActive.get(fragment1.mTargetWho);
            if (fragment2 == null) {
              StringBuilder stringBuilder1 = new StringBuilder();
              stringBuilder1.append("Failure saving state: ");
              stringBuilder1.append(fragment1);
              stringBuilder1.append(" has target not in fragment manager: ");
              stringBuilder1.append(fragment1.mTargetWho);
              throwException(new IllegalStateException(stringBuilder1.toString()));
            } 
            if (fragmentState.mSavedFragmentState == null)
              fragmentState.mSavedFragmentState = new Bundle(); 
            putFragment(fragmentState.mSavedFragmentState, "android:target_state", fragment2);
            if (fragment1.mTargetRequestCode != 0)
              fragmentState.mSavedFragmentState.putInt("android:target_req_state", fragment1.mTargetRequestCode); 
          } 
        } else {
          fragmentState.mSavedFragmentState = fragment1.mSavedFragmentState;
        } 
        if (DEBUG) {
          StringBuilder stringBuilder1 = new StringBuilder();
          stringBuilder1.append("Saved state of ");
          stringBuilder1.append(fragment1);
          stringBuilder1.append(": ");
          stringBuilder1.append(fragmentState.mSavedFragmentState);
          Log.v("FragmentManager", stringBuilder1.toString());
        } 
        i = 1;
      } 
    } 
    if (!i) {
      if (DEBUG)
        Log.v("FragmentManager", "saveAllState: no fragments!"); 
      return null;
    } 
    i = this.mAdded.size();
    if (i > 0) {
      ArrayList<String> arrayList2 = new ArrayList(i);
      Iterator<Fragment> iterator1 = this.mAdded.iterator();
      while (true) {
        ArrayList<String> arrayList3 = arrayList2;
        if (iterator1.hasNext()) {
          Fragment fragment1 = iterator1.next();
          arrayList2.add(fragment1.mWho);
          if (fragment1.mFragmentManager != this) {
            StringBuilder stringBuilder1 = new StringBuilder();
            stringBuilder1.append("Failure saving state: active ");
            stringBuilder1.append(fragment1);
            stringBuilder1.append(" was removed from the FragmentManager");
            throwException(new IllegalStateException(stringBuilder1.toString()));
          } 
          if (DEBUG) {
            StringBuilder stringBuilder1 = new StringBuilder();
            stringBuilder1.append("saveAllState: adding fragment (");
            stringBuilder1.append(fragment1.mWho);
            stringBuilder1.append("): ");
            stringBuilder1.append(fragment1);
            Log.v("FragmentManager", stringBuilder1.toString());
          } 
          continue;
        } 
        break;
      } 
    } else {
      iterator = null;
    } 
    ArrayList<BackStackRecord> arrayList1 = this.mBackStack;
    BackStackState[] arrayOfBackStackState2 = arrayOfBackStackState1;
    if (arrayList1 != null) {
      int j = arrayList1.size();
      arrayOfBackStackState2 = arrayOfBackStackState1;
      if (j > 0) {
        arrayOfBackStackState1 = new BackStackState[j];
        i = bool1;
        while (true) {
          arrayOfBackStackState2 = arrayOfBackStackState1;
          if (i < j) {
            arrayOfBackStackState1[i] = new BackStackState(this.mBackStack.get(i));
            if (DEBUG) {
              stringBuilder = new StringBuilder();
              stringBuilder.append("saveAllState: adding back stack #");
              stringBuilder.append(i);
              stringBuilder.append(": ");
              stringBuilder.append(this.mBackStack.get(i));
              Log.v("FragmentManager", stringBuilder.toString());
            } 
            i++;
            continue;
          } 
          break;
        } 
      } 
    } 
    FragmentManagerState fragmentManagerState = new FragmentManagerState();
    fragmentManagerState.mActive = arrayList;
    fragmentManagerState.mAdded = (ArrayList)iterator;
    fragmentManagerState.mBackStack = (BackStackState[])stringBuilder;
    Fragment fragment = this.mPrimaryNav;
    if (fragment != null)
      fragmentManagerState.mPrimaryNavActiveWho = fragment.mWho; 
    fragmentManagerState.mNextFragmentIndex = this.mNextFragmentIndex;
    return fragmentManagerState;
  }
  
  Bundle saveFragmentBasicState(Fragment paramFragment) {
    if (this.mStateBundle == null)
      this.mStateBundle = new Bundle(); 
    paramFragment.performSaveInstanceState(this.mStateBundle);
    dispatchOnFragmentSaveInstanceState(paramFragment, this.mStateBundle, false);
    if (!this.mStateBundle.isEmpty()) {
      bundle1 = this.mStateBundle;
      this.mStateBundle = null;
    } else {
      bundle1 = null;
    } 
    if (paramFragment.mView != null)
      saveFragmentViewState(paramFragment); 
    Bundle bundle2 = bundle1;
    if (paramFragment.mSavedViewState != null) {
      bundle2 = bundle1;
      if (bundle1 == null)
        bundle2 = new Bundle(); 
      bundle2.putSparseParcelableArray("android:view_state", paramFragment.mSavedViewState);
    } 
    Bundle bundle1 = bundle2;
    if (!paramFragment.mUserVisibleHint) {
      bundle1 = bundle2;
      if (bundle2 == null)
        bundle1 = new Bundle(); 
      bundle1.putBoolean("android:user_visible_hint", paramFragment.mUserVisibleHint);
    } 
    return bundle1;
  }
  
  public Fragment.SavedState saveFragmentInstanceState(Fragment paramFragment) {
    if (paramFragment.mFragmentManager != this) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("Fragment ");
      stringBuilder.append(paramFragment);
      stringBuilder.append(" is not currently in the FragmentManager");
      throwException(new IllegalStateException(stringBuilder.toString()));
    } 
    int i = paramFragment.mState;
    Fragment.SavedState savedState2 = null;
    Fragment.SavedState savedState1 = savedState2;
    if (i > 0) {
      Bundle bundle = saveFragmentBasicState(paramFragment);
      savedState1 = savedState2;
      if (bundle != null)
        savedState1 = new Fragment.SavedState(bundle); 
    } 
    return savedState1;
  }
  
  void saveFragmentViewState(Fragment paramFragment) {
    if (paramFragment.mInnerView == null)
      return; 
    SparseArray<Parcelable> sparseArray = this.mStateArray;
    if (sparseArray == null) {
      this.mStateArray = new SparseArray();
    } else {
      sparseArray.clear();
    } 
    paramFragment.mInnerView.saveHierarchyState(this.mStateArray);
    if (this.mStateArray.size() > 0) {
      paramFragment.mSavedViewState = this.mStateArray;
      this.mStateArray = null;
    } 
  }
  
  void scheduleCommit() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield mPostponedTransactions : Ljava/util/ArrayList;
    //   6: astore_1
    //   7: iconst_0
    //   8: istore_2
    //   9: aload_1
    //   10: ifnull -> 28
    //   13: aload_0
    //   14: getfield mPostponedTransactions : Ljava/util/ArrayList;
    //   17: invokevirtual isEmpty : ()Z
    //   20: ifne -> 28
    //   23: iconst_1
    //   24: istore_3
    //   25: goto -> 30
    //   28: iconst_0
    //   29: istore_3
    //   30: iload_2
    //   31: istore #4
    //   33: aload_0
    //   34: getfield mPendingActions : Ljava/util/ArrayList;
    //   37: ifnull -> 57
    //   40: iload_2
    //   41: istore #4
    //   43: aload_0
    //   44: getfield mPendingActions : Ljava/util/ArrayList;
    //   47: invokevirtual size : ()I
    //   50: iconst_1
    //   51: if_icmpne -> 57
    //   54: iconst_1
    //   55: istore #4
    //   57: iload_3
    //   58: ifne -> 66
    //   61: iload #4
    //   63: ifeq -> 99
    //   66: aload_0
    //   67: getfield mHost : Landroidx/fragment/app/FragmentHostCallback;
    //   70: invokevirtual getHandler : ()Landroid/os/Handler;
    //   73: aload_0
    //   74: getfield mExecCommit : Ljava/lang/Runnable;
    //   77: invokevirtual removeCallbacks : (Ljava/lang/Runnable;)V
    //   80: aload_0
    //   81: getfield mHost : Landroidx/fragment/app/FragmentHostCallback;
    //   84: invokevirtual getHandler : ()Landroid/os/Handler;
    //   87: aload_0
    //   88: getfield mExecCommit : Ljava/lang/Runnable;
    //   91: invokevirtual post : (Ljava/lang/Runnable;)Z
    //   94: pop
    //   95: aload_0
    //   96: invokespecial updateOnBackPressedCallbackEnabled : ()V
    //   99: aload_0
    //   100: monitorexit
    //   101: return
    //   102: astore_1
    //   103: aload_0
    //   104: monitorexit
    //   105: aload_1
    //   106: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	102	finally
    //   13	23	102	finally
    //   33	40	102	finally
    //   43	54	102	finally
    //   66	99	102	finally
    //   99	101	102	finally
    //   103	105	102	finally
  }
  
  public void setBackStackIndex(int paramInt, BackStackRecord paramBackStackRecord) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield mBackStackIndices : Ljava/util/ArrayList;
    //   6: ifnonnull -> 22
    //   9: new java/util/ArrayList
    //   12: astore_3
    //   13: aload_3
    //   14: invokespecial <init> : ()V
    //   17: aload_0
    //   18: aload_3
    //   19: putfield mBackStackIndices : Ljava/util/ArrayList;
    //   22: aload_0
    //   23: getfield mBackStackIndices : Ljava/util/ArrayList;
    //   26: invokevirtual size : ()I
    //   29: istore #4
    //   31: iload #4
    //   33: istore #5
    //   35: iload_1
    //   36: iload #4
    //   38: if_icmpge -> 106
    //   41: getstatic androidx/fragment/app/FragmentManagerImpl.DEBUG : Z
    //   44: ifeq -> 93
    //   47: new java/lang/StringBuilder
    //   50: astore_3
    //   51: aload_3
    //   52: invokespecial <init> : ()V
    //   55: aload_3
    //   56: ldc_w 'Setting back stack index '
    //   59: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: pop
    //   63: aload_3
    //   64: iload_1
    //   65: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   68: pop
    //   69: aload_3
    //   70: ldc_w ' to '
    //   73: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: pop
    //   77: aload_3
    //   78: aload_2
    //   79: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   82: pop
    //   83: ldc 'FragmentManager'
    //   85: aload_3
    //   86: invokevirtual toString : ()Ljava/lang/String;
    //   89: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   92: pop
    //   93: aload_0
    //   94: getfield mBackStackIndices : Ljava/util/ArrayList;
    //   97: iload_1
    //   98: aload_2
    //   99: invokevirtual set : (ILjava/lang/Object;)Ljava/lang/Object;
    //   102: pop
    //   103: goto -> 260
    //   106: iload #5
    //   108: iload_1
    //   109: if_icmpge -> 199
    //   112: aload_0
    //   113: getfield mBackStackIndices : Ljava/util/ArrayList;
    //   116: aconst_null
    //   117: invokevirtual add : (Ljava/lang/Object;)Z
    //   120: pop
    //   121: aload_0
    //   122: getfield mAvailBackStackIndices : Ljava/util/ArrayList;
    //   125: ifnonnull -> 141
    //   128: new java/util/ArrayList
    //   131: astore_3
    //   132: aload_3
    //   133: invokespecial <init> : ()V
    //   136: aload_0
    //   137: aload_3
    //   138: putfield mAvailBackStackIndices : Ljava/util/ArrayList;
    //   141: getstatic androidx/fragment/app/FragmentManagerImpl.DEBUG : Z
    //   144: ifeq -> 180
    //   147: new java/lang/StringBuilder
    //   150: astore_3
    //   151: aload_3
    //   152: invokespecial <init> : ()V
    //   155: aload_3
    //   156: ldc_w 'Adding available back stack index '
    //   159: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: pop
    //   163: aload_3
    //   164: iload #5
    //   166: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   169: pop
    //   170: ldc 'FragmentManager'
    //   172: aload_3
    //   173: invokevirtual toString : ()Ljava/lang/String;
    //   176: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   179: pop
    //   180: aload_0
    //   181: getfield mAvailBackStackIndices : Ljava/util/ArrayList;
    //   184: iload #5
    //   186: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   189: invokevirtual add : (Ljava/lang/Object;)Z
    //   192: pop
    //   193: iinc #5, 1
    //   196: goto -> 106
    //   199: getstatic androidx/fragment/app/FragmentManagerImpl.DEBUG : Z
    //   202: ifeq -> 251
    //   205: new java/lang/StringBuilder
    //   208: astore_3
    //   209: aload_3
    //   210: invokespecial <init> : ()V
    //   213: aload_3
    //   214: ldc_w 'Adding back stack index '
    //   217: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   220: pop
    //   221: aload_3
    //   222: iload_1
    //   223: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   226: pop
    //   227: aload_3
    //   228: ldc_w ' with '
    //   231: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: pop
    //   235: aload_3
    //   236: aload_2
    //   237: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   240: pop
    //   241: ldc 'FragmentManager'
    //   243: aload_3
    //   244: invokevirtual toString : ()Ljava/lang/String;
    //   247: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   250: pop
    //   251: aload_0
    //   252: getfield mBackStackIndices : Ljava/util/ArrayList;
    //   255: aload_2
    //   256: invokevirtual add : (Ljava/lang/Object;)Z
    //   259: pop
    //   260: aload_0
    //   261: monitorexit
    //   262: return
    //   263: astore_2
    //   264: aload_0
    //   265: monitorexit
    //   266: aload_2
    //   267: athrow
    // Exception table:
    //   from	to	target	type
    //   2	22	263	finally
    //   22	31	263	finally
    //   41	93	263	finally
    //   93	103	263	finally
    //   112	141	263	finally
    //   141	180	263	finally
    //   180	193	263	finally
    //   199	251	263	finally
    //   251	260	263	finally
    //   260	262	263	finally
    //   264	266	263	finally
  }
  
  public void setMaxLifecycle(Fragment paramFragment, Lifecycle.State paramState) {
    if (this.mActive.get(paramFragment.mWho) == paramFragment && (paramFragment.mHost == null || paramFragment.getFragmentManager() == this)) {
      paramFragment.mMaxState = paramState;
      return;
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("Fragment ");
    stringBuilder.append(paramFragment);
    stringBuilder.append(" is not an active fragment of FragmentManager ");
    stringBuilder.append(this);
    throw new IllegalArgumentException(stringBuilder.toString());
  }
  
  public void setPrimaryNavigationFragment(Fragment paramFragment) {
    if (paramFragment == null || (this.mActive.get(paramFragment.mWho) == paramFragment && (paramFragment.mHost == null || paramFragment.getFragmentManager() == this))) {
      Fragment fragment = this.mPrimaryNav;
      this.mPrimaryNav = paramFragment;
      dispatchParentPrimaryNavigationFragmentChanged(fragment);
      dispatchParentPrimaryNavigationFragmentChanged(this.mPrimaryNav);
      return;
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("Fragment ");
    stringBuilder.append(paramFragment);
    stringBuilder.append(" is not an active fragment of FragmentManager ");
    stringBuilder.append(this);
    throw new IllegalArgumentException(stringBuilder.toString());
  }
  
  public void showFragment(Fragment paramFragment) {
    if (DEBUG) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("show: ");
      stringBuilder.append(paramFragment);
      Log.v("FragmentManager", stringBuilder.toString());
    } 
    if (paramFragment.mHidden) {
      paramFragment.mHidden = false;
      paramFragment.mHiddenChanged ^= 0x1;
    } 
  }
  
  void startPendingDeferredFragments() {
    for (Fragment fragment : this.mActive.values()) {
      if (fragment != null)
        performPendingDeferredStart(fragment); 
    } 
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder(128);
    stringBuilder.append("FragmentManager{");
    stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    stringBuilder.append(" in ");
    Fragment fragment = this.mParent;
    if (fragment != null) {
      DebugUtils.buildShortClassTag(fragment, stringBuilder);
    } else {
      DebugUtils.buildShortClassTag(this.mHost, stringBuilder);
    } 
    stringBuilder.append("}}");
    return stringBuilder.toString();
  }
  
  public void unregisterFragmentLifecycleCallbacks(FragmentManager.FragmentLifecycleCallbacks paramFragmentLifecycleCallbacks) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mLifecycleCallbacks : Ljava/util/concurrent/CopyOnWriteArrayList;
    //   4: astore_2
    //   5: aload_2
    //   6: monitorenter
    //   7: iconst_0
    //   8: istore_3
    //   9: aload_0
    //   10: getfield mLifecycleCallbacks : Ljava/util/concurrent/CopyOnWriteArrayList;
    //   13: invokevirtual size : ()I
    //   16: istore #4
    //   18: iload_3
    //   19: iload #4
    //   21: if_icmpge -> 60
    //   24: aload_0
    //   25: getfield mLifecycleCallbacks : Ljava/util/concurrent/CopyOnWriteArrayList;
    //   28: iload_3
    //   29: invokevirtual get : (I)Ljava/lang/Object;
    //   32: checkcast androidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder
    //   35: getfield mCallback : Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
    //   38: aload_1
    //   39: if_acmpne -> 54
    //   42: aload_0
    //   43: getfield mLifecycleCallbacks : Ljava/util/concurrent/CopyOnWriteArrayList;
    //   46: iload_3
    //   47: invokevirtual remove : (I)Ljava/lang/Object;
    //   50: pop
    //   51: goto -> 60
    //   54: iinc #3, 1
    //   57: goto -> 18
    //   60: aload_2
    //   61: monitorexit
    //   62: return
    //   63: astore_1
    //   64: aload_2
    //   65: monitorexit
    //   66: aload_1
    //   67: athrow
    // Exception table:
    //   from	to	target	type
    //   9	18	63	finally
    //   24	51	63	finally
    //   60	62	63	finally
    //   64	66	63	finally
  }
  
  private static class AnimationOrAnimator {
    public final Animation animation = null;
    
    public final Animator animator;
    
    AnimationOrAnimator(Animator param1Animator) {
      this.animator = param1Animator;
      if (param1Animator != null)
        return; 
      throw new IllegalStateException("Animator cannot be null");
    }
    
    AnimationOrAnimator(Animation param1Animation) {
      this.animator = null;
      if (param1Animation != null)
        return; 
      throw new IllegalStateException("Animation cannot be null");
    }
  }
  
  private static class EndViewTransitionAnimation extends AnimationSet implements Runnable {
    private boolean mAnimating = true;
    
    private final View mChild;
    
    private boolean mEnded;
    
    private final ViewGroup mParent;
    
    private boolean mTransitionEnded;
    
    EndViewTransitionAnimation(Animation param1Animation, ViewGroup param1ViewGroup, View param1View) {
      super(false);
      this.mParent = param1ViewGroup;
      this.mChild = param1View;
      addAnimation(param1Animation);
      this.mParent.post(this);
    }
    
    public boolean getTransformation(long param1Long, Transformation param1Transformation) {
      this.mAnimating = true;
      if (this.mEnded)
        return this.mTransitionEnded ^ true; 
      if (!super.getTransformation(param1Long, param1Transformation)) {
        this.mEnded = true;
        OneShotPreDrawListener.add((View)this.mParent, this);
      } 
      return true;
    }
    
    public boolean getTransformation(long param1Long, Transformation param1Transformation, float param1Float) {
      this.mAnimating = true;
      if (this.mEnded)
        return this.mTransitionEnded ^ true; 
      if (!super.getTransformation(param1Long, param1Transformation, param1Float)) {
        this.mEnded = true;
        OneShotPreDrawListener.add((View)this.mParent, this);
      } 
      return true;
    }
    
    public void run() {
      if (!this.mEnded && this.mAnimating) {
        this.mAnimating = false;
        this.mParent.post(this);
      } else {
        this.mParent.endViewTransition(this.mChild);
        this.mTransitionEnded = true;
      } 
    }
  }
  
  private static final class FragmentLifecycleCallbacksHolder {
    final FragmentManager.FragmentLifecycleCallbacks mCallback;
    
    final boolean mRecursive;
    
    FragmentLifecycleCallbacksHolder(FragmentManager.FragmentLifecycleCallbacks param1FragmentLifecycleCallbacks, boolean param1Boolean) {
      this.mCallback = param1FragmentLifecycleCallbacks;
      this.mRecursive = param1Boolean;
    }
  }
  
  static class FragmentTag {
    public static final int[] Fragment = new int[] { 16842755, 16842960, 16842961 };
    
    public static final int Fragment_id = 1;
    
    public static final int Fragment_name = 0;
    
    public static final int Fragment_tag = 2;
  }
  
  static interface OpGenerator {
    boolean generateOps(ArrayList<BackStackRecord> param1ArrayList, ArrayList<Boolean> param1ArrayList1);
  }
  
  private class PopBackStackState implements OpGenerator {
    final int mFlags;
    
    final int mId;
    
    final String mName;
    
    PopBackStackState(String param1String, int param1Int1, int param1Int2) {
      this.mName = param1String;
      this.mId = param1Int1;
      this.mFlags = param1Int2;
    }
    
    public boolean generateOps(ArrayList<BackStackRecord> param1ArrayList, ArrayList<Boolean> param1ArrayList1) {
      return (FragmentManagerImpl.this.mPrimaryNav != null && this.mId < 0 && this.mName == null && FragmentManagerImpl.this.mPrimaryNav.getChildFragmentManager().popBackStackImmediate()) ? false : FragmentManagerImpl.this.popBackStackState(param1ArrayList, param1ArrayList1, this.mName, this.mId, this.mFlags);
    }
  }
  
  static class StartEnterTransitionListener implements Fragment.OnStartEnterTransitionListener {
    final boolean mIsBack;
    
    private int mNumPostponed;
    
    final BackStackRecord mRecord;
    
    StartEnterTransitionListener(BackStackRecord param1BackStackRecord, boolean param1Boolean) {
      this.mIsBack = param1Boolean;
      this.mRecord = param1BackStackRecord;
    }
    
    public void cancelTransaction() {
      this.mRecord.mManager.completeExecute(this.mRecord, this.mIsBack, false, false);
    }
    
    public void completeTransaction() {
      int i = this.mNumPostponed;
      byte b = 0;
      if (i > 0) {
        i = 1;
      } else {
        i = 0;
      } 
      FragmentManagerImpl fragmentManagerImpl = this.mRecord.mManager;
      int j = fragmentManagerImpl.mAdded.size();
      while (b < j) {
        Fragment fragment = fragmentManagerImpl.mAdded.get(b);
        fragment.setOnStartEnterTransitionListener(null);
        if (i != 0 && fragment.isPostponed())
          fragment.startPostponedEnterTransition(); 
        b++;
      } 
      this.mRecord.mManager.completeExecute(this.mRecord, this.mIsBack, i ^ 0x1, true);
    }
    
    public boolean isReady() {
      boolean bool;
      if (this.mNumPostponed == 0) {
        bool = true;
      } else {
        bool = false;
      } 
      return bool;
    }
    
    public void onStartEnterTransition() {
      this.mNumPostponed--;
      if (this.mNumPostponed != 0)
        return; 
      this.mRecord.mManager.scheduleCommit();
    }
    
    public void startListening() {
      this.mNumPostponed++;
    }
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/fragment/app/FragmentManagerImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */