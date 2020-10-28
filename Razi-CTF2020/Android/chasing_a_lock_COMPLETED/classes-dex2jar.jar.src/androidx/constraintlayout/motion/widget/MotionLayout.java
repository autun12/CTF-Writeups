package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.TextView;
import androidx.constraintlayout.motion.utils.StopLogic;
import androidx.constraintlayout.solver.widgets.Barrier;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.Flow;
import androidx.constraintlayout.solver.widgets.Guideline;
import androidx.constraintlayout.solver.widgets.Helper;
import androidx.constraintlayout.solver.widgets.HelperWidget;
import androidx.constraintlayout.solver.widgets.VirtualLayout;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.R;
import androidx.core.view.NestedScrollingParent3;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class MotionLayout extends ConstraintLayout implements NestedScrollingParent3 {
  private static final boolean DEBUG = false;
  
  public static final int DEBUG_SHOW_NONE = 0;
  
  public static final int DEBUG_SHOW_PATH = 2;
  
  public static final int DEBUG_SHOW_PROGRESS = 1;
  
  private static final float EPSILON = 1.0E-5F;
  
  public static boolean IS_IN_EDIT_MODE = false;
  
  static final int MAX_KEY_FRAMES = 50;
  
  static final String TAG = "MotionLayout";
  
  public static final int TOUCH_UP_COMPLETE = 0;
  
  public static final int TOUCH_UP_COMPLETE_TO_END = 2;
  
  public static final int TOUCH_UP_COMPLETE_TO_START = 1;
  
  public static final int TOUCH_UP_DECELERATE = 4;
  
  public static final int TOUCH_UP_DECELERATE_AND_COMPLETE = 5;
  
  public static final int TOUCH_UP_STOP = 3;
  
  public static final int VELOCITY_LAYOUT = 1;
  
  public static final int VELOCITY_POST_LAYOUT = 0;
  
  public static final int VELOCITY_STATIC_LAYOUT = 3;
  
  public static final int VELOCITY_STATIC_POST_LAYOUT = 2;
  
  boolean firstDown = true;
  
  private float lastPos;
  
  private float lastY;
  
  private long mAnimationStartTime = 0L;
  
  private int mBeginState = -1;
  
  private RectF mBoundsCheck = new RectF();
  
  int mCurrentState = -1;
  
  int mDebugPath = 0;
  
  private DecelerateInterpolator mDecelerateLogic = new DecelerateInterpolator();
  
  private DesignTool mDesignTool;
  
  DevModeDraw mDevModeDraw;
  
  private int mEndState = -1;
  
  int mEndWrapHeight;
  
  int mEndWrapWidth;
  
  HashMap<View, MotionController> mFrameArrayList = new HashMap<View, MotionController>();
  
  private int mFrames = 0;
  
  int mHeightMeasureMode;
  
  private boolean mInLayout = false;
  
  boolean mInTransition = false;
  
  boolean mIndirectTransition = false;
  
  private boolean mInteractionEnabled = true;
  
  Interpolator mInterpolator;
  
  boolean mIsAnimating = false;
  
  private boolean mKeepAnimating = false;
  
  private KeyCache mKeyCache = new KeyCache();
  
  private long mLastDrawTime = -1L;
  
  private float mLastFps = 0.0F;
  
  private int mLastHeightMeasureSpec = 0;
  
  int mLastLayoutHeight;
  
  int mLastLayoutWidth;
  
  float mLastVelocity = 0.0F;
  
  private int mLastWidthMeasureSpec = 0;
  
  private float mListenerPosition = 0.0F;
  
  private int mListenerState = 0;
  
  protected boolean mMeasureDuringTransition = false;
  
  Model mModel = new Model();
  
  private boolean mNeedsFireTransitionCompleted = false;
  
  int mOldHeight;
  
  int mOldWidth;
  
  private ArrayList<MotionHelper> mOnHideHelpers = null;
  
  private ArrayList<MotionHelper> mOnShowHelpers = null;
  
  float mPostInterpolationPosition;
  
  private View mRegionView = null;
  
  MotionScene mScene;
  
  float mScrollTargetDT;
  
  float mScrollTargetDX;
  
  float mScrollTargetDY;
  
  long mScrollTargetTime;
  
  int mStartWrapHeight;
  
  int mStartWrapWidth;
  
  private StateCache mStateCache;
  
  private StopLogic mStopLogic = new StopLogic();
  
  private boolean mTemporalInterpolator = false;
  
  ArrayList<Integer> mTransitionCompleted = new ArrayList<Integer>();
  
  private float mTransitionDuration = 1.0F;
  
  float mTransitionGoalPosition = 0.0F;
  
  private boolean mTransitionInstantly;
  
  float mTransitionLastPosition = 0.0F;
  
  private long mTransitionLastTime;
  
  private TransitionListener mTransitionListener;
  
  private ArrayList<TransitionListener> mTransitionListeners = null;
  
  float mTransitionPosition = 0.0F;
  
  TransitionState mTransitionState = TransitionState.UNDEFINED;
  
  boolean mUndergoingMotion = false;
  
  int mWidthMeasureMode;
  
  public MotionLayout(Context paramContext) {
    super(paramContext);
    init((AttributeSet)null);
  }
  
  public MotionLayout(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    init(paramAttributeSet);
  }
  
  public MotionLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    init(paramAttributeSet);
  }
  
  private void checkStructure() {
    MotionScene motionScene = this.mScene;
    if (motionScene == null) {
      Log.e("MotionLayout", "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\"");
      return;
    } 
    int i = motionScene.getStartId();
    motionScene = this.mScene;
    checkStructure(i, motionScene.getConstraintSet(motionScene.getStartId()));
    SparseIntArray sparseIntArray1 = new SparseIntArray();
    SparseIntArray sparseIntArray2 = new SparseIntArray();
    for (MotionScene.Transition transition : this.mScene.getDefinedTransitions()) {
      if (transition == this.mScene.mCurrentTransition)
        Log.v("MotionLayout", "CHECK: CURRENT"); 
      checkStructure(transition);
      int j = transition.getStartConstraintSetId();
      i = transition.getEndConstraintSetId();
      String str1 = Debug.getName(getContext(), j);
      String str2 = Debug.getName(getContext(), i);
      if (sparseIntArray1.get(j) == i) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("CHECK: two transitions with the same start and end ");
        stringBuilder.append(str1);
        stringBuilder.append("->");
        stringBuilder.append(str2);
        Log.e("MotionLayout", stringBuilder.toString());
      } 
      if (sparseIntArray2.get(i) == j) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("CHECK: you can't have reverse transitions");
        stringBuilder.append(str1);
        stringBuilder.append("->");
        stringBuilder.append(str2);
        Log.e("MotionLayout", stringBuilder.toString());
      } 
      sparseIntArray1.put(j, i);
      sparseIntArray2.put(i, j);
      if (this.mScene.getConstraintSet(j) == null) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(" no such constraintSetStart ");
        stringBuilder.append(str1);
        Log.e("MotionLayout", stringBuilder.toString());
      } 
      if (this.mScene.getConstraintSet(i) == null) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(" no such constraintSetEnd ");
        stringBuilder.append(str1);
        Log.e("MotionLayout", stringBuilder.toString());
      } 
    } 
  }
  
  private void checkStructure(int paramInt, ConstraintSet paramConstraintSet) {
    String str = Debug.getName(getContext(), paramInt);
    int i = getChildCount();
    int j = 0;
    for (paramInt = 0; paramInt < i; paramInt++) {
      View view = getChildAt(paramInt);
      int k = view.getId();
      if (k == -1) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("CHECK: ");
        stringBuilder.append(str);
        stringBuilder.append(" ALL VIEWS SHOULD HAVE ID's ");
        stringBuilder.append(view.getClass().getName());
        stringBuilder.append(" does not!");
        Log.w("MotionLayout", stringBuilder.toString());
      } 
      if (paramConstraintSet.getConstraint(k) == null) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("CHECK: ");
        stringBuilder.append(str);
        stringBuilder.append(" NO CONSTRAINTS for ");
        stringBuilder.append(Debug.getName(view));
        Log.w("MotionLayout", stringBuilder.toString());
      } 
    } 
    int[] arrayOfInt = paramConstraintSet.getKnownIds();
    for (paramInt = j; paramInt < arrayOfInt.length; paramInt++) {
      j = arrayOfInt[paramInt];
      String str1 = Debug.getName(getContext(), j);
      if (findViewById(arrayOfInt[paramInt]) == null) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("CHECK: ");
        stringBuilder.append(str);
        stringBuilder.append(" NO View matches id ");
        stringBuilder.append(str1);
        Log.w("MotionLayout", stringBuilder.toString());
      } 
      if (paramConstraintSet.getHeight(j) == -1) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("CHECK: ");
        stringBuilder.append(str);
        stringBuilder.append("(");
        stringBuilder.append(str1);
        stringBuilder.append(") no LAYOUT_HEIGHT");
        Log.w("MotionLayout", stringBuilder.toString());
      } 
      if (paramConstraintSet.getWidth(j) == -1) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("CHECK: ");
        stringBuilder.append(str);
        stringBuilder.append("(");
        stringBuilder.append(str1);
        stringBuilder.append(") no LAYOUT_HEIGHT");
        Log.w("MotionLayout", stringBuilder.toString());
      } 
    } 
  }
  
  private void checkStructure(MotionScene.Transition paramTransition) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("CHECK: transition = ");
    stringBuilder.append(paramTransition.debugString(getContext()));
    Log.v("MotionLayout", stringBuilder.toString());
    stringBuilder = new StringBuilder();
    stringBuilder.append("CHECK: transition.setDuration = ");
    stringBuilder.append(paramTransition.getDuration());
    Log.v("MotionLayout", stringBuilder.toString());
    if (paramTransition.getStartConstraintSetId() == paramTransition.getEndConstraintSetId())
      Log.e("MotionLayout", "CHECK: start and end constraint set should not be the same!"); 
  }
  
  private void computeCurrentPositions() {
    int i = getChildCount();
    for (byte b = 0; b < i; b++) {
      View view = getChildAt(b);
      MotionController motionController = this.mFrameArrayList.get(view);
      if (motionController != null)
        motionController.setStartCurrentState(view); 
    } 
  }
  
  private void debugPos() {
    for (byte b = 0; b < getChildCount(); b++) {
      View view = getChildAt(b);
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(" ");
      stringBuilder.append(Debug.getLocation());
      stringBuilder.append(" ");
      stringBuilder.append(Debug.getName((View)this));
      stringBuilder.append(" ");
      stringBuilder.append(Debug.getName(getContext(), this.mCurrentState));
      stringBuilder.append(" ");
      stringBuilder.append(Debug.getName(view));
      stringBuilder.append(view.getLeft());
      stringBuilder.append(" ");
      stringBuilder.append(view.getTop());
      Log.v("MotionLayout", stringBuilder.toString());
    } 
  }
  
  private void evaluateLayout() {
    // Byte code:
    //   0: aload_0
    //   1: getfield mTransitionGoalPosition : F
    //   4: aload_0
    //   5: getfield mTransitionLastPosition : F
    //   8: fsub
    //   9: invokestatic signum : (F)F
    //   12: fstore_1
    //   13: aload_0
    //   14: invokevirtual getNanoTime : ()J
    //   17: lstore_2
    //   18: aload_0
    //   19: getfield mInterpolator : Landroid/view/animation/Interpolator;
    //   22: instanceof androidx/constraintlayout/motion/utils/StopLogic
    //   25: ifne -> 51
    //   28: lload_2
    //   29: aload_0
    //   30: getfield mTransitionLastTime : J
    //   33: lsub
    //   34: l2f
    //   35: fload_1
    //   36: fmul
    //   37: ldc_w 1.0E-9
    //   40: fmul
    //   41: aload_0
    //   42: getfield mTransitionDuration : F
    //   45: fdiv
    //   46: fstore #4
    //   48: goto -> 54
    //   51: fconst_0
    //   52: fstore #4
    //   54: aload_0
    //   55: getfield mTransitionLastPosition : F
    //   58: fload #4
    //   60: fadd
    //   61: fstore #5
    //   63: aload_0
    //   64: getfield mTransitionInstantly : Z
    //   67: ifeq -> 76
    //   70: aload_0
    //   71: getfield mTransitionGoalPosition : F
    //   74: fstore #5
    //   76: iconst_0
    //   77: istore #6
    //   79: fload_1
    //   80: fconst_0
    //   81: fcmpl
    //   82: istore #7
    //   84: iload #7
    //   86: ifle -> 99
    //   89: fload #5
    //   91: aload_0
    //   92: getfield mTransitionGoalPosition : F
    //   95: fcmpl
    //   96: ifge -> 115
    //   99: fload_1
    //   100: fconst_0
    //   101: fcmpg
    //   102: ifgt -> 127
    //   105: fload #5
    //   107: aload_0
    //   108: getfield mTransitionGoalPosition : F
    //   111: fcmpg
    //   112: ifgt -> 127
    //   115: aload_0
    //   116: getfield mTransitionGoalPosition : F
    //   119: fstore #5
    //   121: iconst_1
    //   122: istore #8
    //   124: goto -> 130
    //   127: iconst_0
    //   128: istore #8
    //   130: aload_0
    //   131: getfield mInterpolator : Landroid/view/animation/Interpolator;
    //   134: astore #9
    //   136: fload #5
    //   138: fstore #4
    //   140: aload #9
    //   142: ifnull -> 195
    //   145: fload #5
    //   147: fstore #4
    //   149: iload #8
    //   151: ifne -> 195
    //   154: aload_0
    //   155: getfield mTemporalInterpolator : Z
    //   158: ifeq -> 184
    //   161: aload #9
    //   163: lload_2
    //   164: aload_0
    //   165: getfield mAnimationStartTime : J
    //   168: lsub
    //   169: l2f
    //   170: ldc_w 1.0E-9
    //   173: fmul
    //   174: invokeinterface getInterpolation : (F)F
    //   179: fstore #4
    //   181: goto -> 195
    //   184: aload #9
    //   186: fload #5
    //   188: invokeinterface getInterpolation : (F)F
    //   193: fstore #4
    //   195: iload #7
    //   197: ifle -> 210
    //   200: fload #4
    //   202: aload_0
    //   203: getfield mTransitionGoalPosition : F
    //   206: fcmpl
    //   207: ifge -> 234
    //   210: fload #4
    //   212: fstore #5
    //   214: fload_1
    //   215: fconst_0
    //   216: fcmpg
    //   217: ifgt -> 240
    //   220: fload #4
    //   222: fstore #5
    //   224: fload #4
    //   226: aload_0
    //   227: getfield mTransitionGoalPosition : F
    //   230: fcmpg
    //   231: ifgt -> 240
    //   234: aload_0
    //   235: getfield mTransitionGoalPosition : F
    //   238: fstore #5
    //   240: aload_0
    //   241: fload #5
    //   243: putfield mPostInterpolationPosition : F
    //   246: aload_0
    //   247: invokevirtual getChildCount : ()I
    //   250: istore #7
    //   252: aload_0
    //   253: invokevirtual getNanoTime : ()J
    //   256: lstore_2
    //   257: iload #6
    //   259: istore #8
    //   261: iload #8
    //   263: iload #7
    //   265: if_icmpge -> 316
    //   268: aload_0
    //   269: iload #8
    //   271: invokevirtual getChildAt : (I)Landroid/view/View;
    //   274: astore #10
    //   276: aload_0
    //   277: getfield mFrameArrayList : Ljava/util/HashMap;
    //   280: aload #10
    //   282: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   285: checkcast androidx/constraintlayout/motion/widget/MotionController
    //   288: astore #9
    //   290: aload #9
    //   292: ifnull -> 310
    //   295: aload #9
    //   297: aload #10
    //   299: fload #5
    //   301: lload_2
    //   302: aload_0
    //   303: getfield mKeyCache : Landroidx/constraintlayout/motion/widget/KeyCache;
    //   306: invokevirtual interpolate : (Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    //   309: pop
    //   310: iinc #8, 1
    //   313: goto -> 261
    //   316: aload_0
    //   317: getfield mMeasureDuringTransition : Z
    //   320: ifeq -> 327
    //   323: aload_0
    //   324: invokevirtual requestLayout : ()V
    //   327: return
  }
  
  private void fireTransitionChange() {
    // Byte code:
    //   0: aload_0
    //   1: getfield mTransitionListener : Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;
    //   4: ifnonnull -> 23
    //   7: aload_0
    //   8: getfield mTransitionListeners : Ljava/util/ArrayList;
    //   11: astore_1
    //   12: aload_1
    //   13: ifnull -> 219
    //   16: aload_1
    //   17: invokevirtual isEmpty : ()Z
    //   20: ifne -> 219
    //   23: aload_0
    //   24: getfield mListenerPosition : F
    //   27: aload_0
    //   28: getfield mTransitionPosition : F
    //   31: fcmpl
    //   32: ifeq -> 219
    //   35: aload_0
    //   36: getfield mListenerState : I
    //   39: iconst_m1
    //   40: if_icmpeq -> 121
    //   43: aload_0
    //   44: getfield mTransitionListener : Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;
    //   47: astore_1
    //   48: aload_1
    //   49: ifnull -> 67
    //   52: aload_1
    //   53: aload_0
    //   54: aload_0
    //   55: getfield mBeginState : I
    //   58: aload_0
    //   59: getfield mEndState : I
    //   62: invokeinterface onTransitionStarted : (Landroidx/constraintlayout/motion/widget/MotionLayout;II)V
    //   67: aload_0
    //   68: getfield mTransitionListeners : Ljava/util/ArrayList;
    //   71: astore_1
    //   72: aload_1
    //   73: ifnull -> 116
    //   76: aload_1
    //   77: invokevirtual iterator : ()Ljava/util/Iterator;
    //   80: astore_1
    //   81: aload_1
    //   82: invokeinterface hasNext : ()Z
    //   87: ifeq -> 116
    //   90: aload_1
    //   91: invokeinterface next : ()Ljava/lang/Object;
    //   96: checkcast androidx/constraintlayout/motion/widget/MotionLayout$TransitionListener
    //   99: aload_0
    //   100: aload_0
    //   101: getfield mBeginState : I
    //   104: aload_0
    //   105: getfield mEndState : I
    //   108: invokeinterface onTransitionStarted : (Landroidx/constraintlayout/motion/widget/MotionLayout;II)V
    //   113: goto -> 81
    //   116: aload_0
    //   117: iconst_1
    //   118: putfield mIsAnimating : Z
    //   121: aload_0
    //   122: iconst_m1
    //   123: putfield mListenerState : I
    //   126: aload_0
    //   127: getfield mTransitionPosition : F
    //   130: fstore_2
    //   131: aload_0
    //   132: fload_2
    //   133: putfield mListenerPosition : F
    //   136: aload_0
    //   137: getfield mTransitionListener : Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;
    //   140: astore_1
    //   141: aload_1
    //   142: ifnull -> 161
    //   145: aload_1
    //   146: aload_0
    //   147: aload_0
    //   148: getfield mBeginState : I
    //   151: aload_0
    //   152: getfield mEndState : I
    //   155: fload_2
    //   156: invokeinterface onTransitionChange : (Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V
    //   161: aload_0
    //   162: getfield mTransitionListeners : Ljava/util/ArrayList;
    //   165: astore_1
    //   166: aload_1
    //   167: ifnull -> 214
    //   170: aload_1
    //   171: invokevirtual iterator : ()Ljava/util/Iterator;
    //   174: astore_1
    //   175: aload_1
    //   176: invokeinterface hasNext : ()Z
    //   181: ifeq -> 214
    //   184: aload_1
    //   185: invokeinterface next : ()Ljava/lang/Object;
    //   190: checkcast androidx/constraintlayout/motion/widget/MotionLayout$TransitionListener
    //   193: aload_0
    //   194: aload_0
    //   195: getfield mBeginState : I
    //   198: aload_0
    //   199: getfield mEndState : I
    //   202: aload_0
    //   203: getfield mTransitionPosition : F
    //   206: invokeinterface onTransitionChange : (Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V
    //   211: goto -> 175
    //   214: aload_0
    //   215: iconst_1
    //   216: putfield mIsAnimating : Z
    //   219: return
  }
  
  private void fireTransitionStarted(MotionLayout paramMotionLayout, int paramInt1, int paramInt2) {
    TransitionListener transitionListener = this.mTransitionListener;
    if (transitionListener != null)
      transitionListener.onTransitionStarted(this, paramInt1, paramInt2); 
    ArrayList<TransitionListener> arrayList = this.mTransitionListeners;
    if (arrayList != null) {
      Iterator<TransitionListener> iterator = arrayList.iterator();
      while (iterator.hasNext())
        ((TransitionListener)iterator.next()).onTransitionStarted(paramMotionLayout, paramInt1, paramInt2); 
    } 
  }
  
  private boolean handlesTouchEvent(float paramFloat1, float paramFloat2, View paramView, MotionEvent paramMotionEvent) {
    if (paramView instanceof ViewGroup) {
      ViewGroup viewGroup = (ViewGroup)paramView;
      int i = viewGroup.getChildCount();
      for (byte b = 0; b < i; b++) {
        View view = viewGroup.getChildAt(b);
        if (handlesTouchEvent(paramView.getLeft() + paramFloat1, paramView.getTop() + paramFloat2, view, paramMotionEvent))
          return true; 
      } 
    } 
    this.mBoundsCheck.set(paramView.getLeft() + paramFloat1, paramView.getTop() + paramFloat2, paramFloat1 + paramView.getRight(), paramFloat2 + paramView.getBottom());
    if (paramMotionEvent.getAction() == 0) {
      if (this.mBoundsCheck.contains(paramMotionEvent.getX(), paramMotionEvent.getY()) && paramView.onTouchEvent(paramMotionEvent))
        return true; 
    } else if (paramView.onTouchEvent(paramMotionEvent)) {
      return true;
    } 
    return false;
  }
  
  private void init(AttributeSet paramAttributeSet) {
    IS_IN_EDIT_MODE = isInEditMode();
    if (paramAttributeSet != null) {
      TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, R.styleable.MotionLayout);
      int i = typedArray.getIndexCount();
      byte b = 0;
      boolean bool;
      for (bool = true; b < i; bool = bool1) {
        boolean bool1;
        int j = typedArray.getIndex(b);
        if (j == R.styleable.MotionLayout_layoutDescription) {
          j = typedArray.getResourceId(j, -1);
          this.mScene = new MotionScene(getContext(), this, j);
          bool1 = bool;
        } else if (j == R.styleable.MotionLayout_currentState) {
          this.mCurrentState = typedArray.getResourceId(j, -1);
          bool1 = bool;
        } else if (j == R.styleable.MotionLayout_motionProgress) {
          this.mTransitionGoalPosition = typedArray.getFloat(j, 0.0F);
          this.mInTransition = true;
          bool1 = bool;
        } else if (j == R.styleable.MotionLayout_applyMotionScene) {
          bool1 = typedArray.getBoolean(j, bool);
        } else if (j == R.styleable.MotionLayout_showPaths) {
          bool1 = bool;
          if (this.mDebugPath == 0) {
            if (typedArray.getBoolean(j, false)) {
              j = 2;
            } else {
              j = 0;
            } 
            this.mDebugPath = j;
            bool1 = bool;
          } 
        } else {
          bool1 = bool;
          if (j == R.styleable.MotionLayout_motionDebug) {
            this.mDebugPath = typedArray.getInt(j, 0);
            bool1 = bool;
          } 
        } 
        b++;
      } 
      typedArray.recycle();
      if (this.mScene == null)
        Log.e("MotionLayout", "WARNING NO app:layoutDescription tag"); 
      if (!bool)
        this.mScene = null; 
    } 
    if (this.mDebugPath != 0)
      checkStructure(); 
    if (this.mCurrentState == -1) {
      MotionScene motionScene = this.mScene;
      if (motionScene != null) {
        this.mCurrentState = motionScene.getStartId();
        this.mBeginState = this.mScene.getStartId();
        this.mEndState = this.mScene.getEndId();
      } 
    } 
  }
  
  private void onNewStateAttachHandlers() {
    MotionScene motionScene = this.mScene;
    if (motionScene == null)
      return; 
    if (motionScene.autoTransition(this, this.mCurrentState)) {
      requestLayout();
      return;
    } 
    int i = this.mCurrentState;
    if (i != -1)
      this.mScene.addOnClickListeners(this, i); 
    if (this.mScene.supportTouch())
      this.mScene.setupTouch(); 
  }
  
  private void processTransitionCompleted() {
    if (this.mTransitionListener == null) {
      ArrayList<TransitionListener> arrayList = this.mTransitionListeners;
      if (arrayList == null || arrayList.isEmpty())
        return; 
    } 
    this.mIsAnimating = false;
    for (Integer integer : this.mTransitionCompleted) {
      TransitionListener transitionListener = this.mTransitionListener;
      if (transitionListener != null)
        transitionListener.onTransitionCompleted(this, integer.intValue()); 
      ArrayList<TransitionListener> arrayList = this.mTransitionListeners;
      if (arrayList != null) {
        Iterator<TransitionListener> iterator = arrayList.iterator();
        while (iterator.hasNext())
          ((TransitionListener)iterator.next()).onTransitionCompleted(this, integer.intValue()); 
      } 
    } 
    this.mTransitionCompleted.clear();
  }
  
  private void setupMotionViews() {
    int i = getChildCount();
    this.mModel.build();
    boolean bool1 = true;
    this.mInTransition = true;
    int j = getWidth();
    int k = getHeight();
    int m = this.mScene.gatPathMotionArc();
    byte b1 = 0;
    boolean bool2 = false;
    if (m != -1)
      for (byte b = 0; b < i; b++) {
        MotionController motionController = this.mFrameArrayList.get(getChildAt(b));
        if (motionController != null)
          motionController.setPathMotionArc(m); 
      }  
    byte b2;
    for (b2 = 0; b2 < i; b2++) {
      MotionController motionController = this.mFrameArrayList.get(getChildAt(b2));
      if (motionController != null) {
        this.mScene.getKeyFrames(motionController);
        motionController.setup(j, k, this.mTransitionDuration, getNanoTime());
      } 
    } 
    float f = this.mScene.getStaggered();
    if (f != 0.0F) {
      if (f < 0.0D) {
        b2 = 1;
      } else {
        b2 = 0;
      } 
      float f1 = Math.abs(f);
      float f2 = -3.4028235E38F;
      float f3 = Float.MAX_VALUE;
      k = 0;
      float f4 = Float.MAX_VALUE;
      f = -3.4028235E38F;
      while (true) {
        if (k < i) {
          MotionController motionController = this.mFrameArrayList.get(getChildAt(k));
          if (!Float.isNaN(motionController.mMotionStagger)) {
            k = bool1;
            break;
          } 
          float f5 = motionController.getFinalX();
          float f6 = motionController.getFinalY();
          if (b2 != 0) {
            f5 = f6 - f5;
          } else {
            f5 = f6 + f5;
          } 
          f4 = Math.min(f4, f5);
          f = Math.max(f, f5);
          k++;
          continue;
        } 
        k = 0;
        break;
      } 
      if (k != 0) {
        b1 = 0;
        float f5 = f3;
        f4 = f2;
        while (true) {
          k = bool2;
          if (b1 < i) {
            MotionController motionController = this.mFrameArrayList.get(getChildAt(b1));
            f2 = f4;
            f = f5;
            if (!Float.isNaN(motionController.mMotionStagger)) {
              f = Math.min(f5, motionController.mMotionStagger);
              f2 = Math.max(f4, motionController.mMotionStagger);
            } 
            b1++;
            f4 = f2;
            f5 = f;
            continue;
          } 
          break;
        } 
        while (k < i) {
          MotionController motionController = this.mFrameArrayList.get(getChildAt(k));
          if (!Float.isNaN(motionController.mMotionStagger)) {
            motionController.mStaggerScale = 1.0F / (1.0F - f1);
            if (b2 != 0) {
              motionController.mStaggerOffset = f1 - (f4 - motionController.mMotionStagger) / (f4 - f5) * f1;
            } else {
              motionController.mStaggerOffset = f1 - (motionController.mMotionStagger - f5) * f1 / (f4 - f5);
            } 
          } 
          k++;
        } 
      } else {
        while (b1 < i) {
          MotionController motionController = this.mFrameArrayList.get(getChildAt(b1));
          f2 = motionController.getFinalX();
          float f5 = motionController.getFinalY();
          if (b2 != 0) {
            f5 -= f2;
          } else {
            f5 += f2;
          } 
          motionController.mStaggerScale = 1.0F / (1.0F - f1);
          motionController.mStaggerOffset = f1 - (f5 - f4) * f1 / (f - f4);
          b1++;
        } 
      } 
    } 
  }
  
  private static boolean willJump(float paramFloat1, float paramFloat2, float paramFloat3) {
    boolean bool1 = true;
    boolean bool2 = true;
    if (paramFloat1 > 0.0F) {
      float f1 = paramFloat1 / paramFloat3;
      if (paramFloat2 + paramFloat1 * f1 - paramFloat3 * f1 * f1 / 2.0F <= 1.0F)
        bool2 = false; 
      return bool2;
    } 
    float f = -paramFloat1 / paramFloat3;
    if (paramFloat2 + paramFloat1 * f + paramFloat3 * f * f / 2.0F < 0.0F) {
      bool2 = bool1;
    } else {
      bool2 = false;
    } 
    return bool2;
  }
  
  public void addTransitionListener(TransitionListener paramTransitionListener) {
    if (this.mTransitionListeners == null)
      this.mTransitionListeners = new ArrayList<TransitionListener>(); 
    this.mTransitionListeners.add(paramTransitionListener);
  }
  
  void animateTo(float paramFloat) {
    if (this.mScene == null)
      return; 
    float f1 = this.mTransitionLastPosition;
    float f2 = this.mTransitionPosition;
    if (f1 != f2 && this.mTransitionInstantly)
      this.mTransitionLastPosition = f2; 
    f1 = this.mTransitionLastPosition;
    if (f1 == paramFloat)
      return; 
    this.mTemporalInterpolator = false;
    this.mTransitionGoalPosition = paramFloat;
    this.mTransitionDuration = this.mScene.getDuration() / 1000.0F;
    setProgress(this.mTransitionGoalPosition);
    this.mInterpolator = this.mScene.getInterpolator();
    this.mTransitionInstantly = false;
    this.mAnimationStartTime = getNanoTime();
    this.mInTransition = true;
    this.mTransitionPosition = f1;
    this.mTransitionLastPosition = f1;
    invalidate();
  }
  
  void disableAutoTransition(boolean paramBoolean) {
    MotionScene motionScene = this.mScene;
    if (motionScene == null)
      return; 
    motionScene.disableAutoTransition(paramBoolean);
  }
  
  protected void dispatchDraw(Canvas paramCanvas) {
    evaluate(false);
    super.dispatchDraw(paramCanvas);
    if (this.mScene == null)
      return; 
    if ((this.mDebugPath & 0x1) == 1 && !isInEditMode()) {
      this.mFrames++;
      long l1 = getNanoTime();
      long l2 = this.mLastDrawTime;
      if (l2 != -1L) {
        l2 = l1 - l2;
        if (l2 > 200000000L) {
          this.mLastFps = (int)(this.mFrames / (float)l2 * 1.0E-9F * 100.0F) / 100.0F;
          this.mFrames = 0;
          this.mLastDrawTime = l1;
        } 
      } else {
        this.mLastDrawTime = l1;
      } 
      Paint paint = new Paint();
      paint.setTextSize(42.0F);
      float f = (int)(getProgress() * 1000.0F) / 10.0F;
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append(this.mLastFps);
      stringBuilder1.append(" fps ");
      stringBuilder1.append(Debug.getState(this, this.mBeginState));
      stringBuilder1.append(" -> ");
      String str = stringBuilder1.toString();
      StringBuilder stringBuilder2 = new StringBuilder();
      stringBuilder2.append(str);
      stringBuilder2.append(Debug.getState(this, this.mEndState));
      stringBuilder2.append(" (progress: ");
      stringBuilder2.append(f);
      stringBuilder2.append(" ) state=");
      int i = this.mCurrentState;
      if (i == -1) {
        str = "undefined";
      } else {
        str = Debug.getState(this, i);
      } 
      stringBuilder2.append(str);
      str = stringBuilder2.toString();
      paint.setColor(-16777216);
      paramCanvas.drawText(str, 11.0F, (getHeight() - 29), paint);
      paint.setColor(-7864184);
      paramCanvas.drawText(str, 10.0F, (getHeight() - 30), paint);
    } 
    if (this.mDebugPath > 1) {
      if (this.mDevModeDraw == null)
        this.mDevModeDraw = new DevModeDraw(); 
      this.mDevModeDraw.draw(paramCanvas, this.mFrameArrayList, this.mScene.getDuration(), this.mDebugPath);
    } 
  }
  
  public void enableTransition(int paramInt, boolean paramBoolean) {
    MotionScene.Transition transition = getTransition(paramInt);
    if (paramBoolean) {
      transition.setEnable(true);
      return;
    } 
    if (transition == this.mScene.mCurrentTransition)
      for (MotionScene.Transition transition1 : this.mScene.getTransitionsWithState(this.mCurrentState)) {
        if (transition1.isEnabled()) {
          this.mScene.mCurrentTransition = transition1;
          break;
        } 
      }  
    transition.setEnable(false);
  }
  
  void evaluate(boolean paramBoolean) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mTransitionLastTime : J
    //   4: ldc2_w -1
    //   7: lcmp
    //   8: ifne -> 19
    //   11: aload_0
    //   12: aload_0
    //   13: invokevirtual getNanoTime : ()J
    //   16: putfield mTransitionLastTime : J
    //   19: aload_0
    //   20: getfield mTransitionLastPosition : F
    //   23: fstore_2
    //   24: fload_2
    //   25: fconst_0
    //   26: fcmpl
    //   27: ifle -> 41
    //   30: fload_2
    //   31: fconst_1
    //   32: fcmpg
    //   33: ifge -> 41
    //   36: aload_0
    //   37: iconst_m1
    //   38: putfield mCurrentState : I
    //   41: aload_0
    //   42: getfield mKeepAnimating : Z
    //   45: istore_3
    //   46: iconst_0
    //   47: istore #4
    //   49: iconst_0
    //   50: istore #5
    //   52: iload_3
    //   53: ifne -> 87
    //   56: iload #4
    //   58: istore #6
    //   60: aload_0
    //   61: getfield mInTransition : Z
    //   64: ifeq -> 1023
    //   67: iload_1
    //   68: ifne -> 87
    //   71: iload #4
    //   73: istore #6
    //   75: aload_0
    //   76: getfield mTransitionGoalPosition : F
    //   79: aload_0
    //   80: getfield mTransitionLastPosition : F
    //   83: fcmpl
    //   84: ifeq -> 1023
    //   87: aload_0
    //   88: getfield mTransitionGoalPosition : F
    //   91: aload_0
    //   92: getfield mTransitionLastPosition : F
    //   95: fsub
    //   96: invokestatic signum : (F)F
    //   99: fstore #7
    //   101: aload_0
    //   102: invokevirtual getNanoTime : ()J
    //   105: lstore #8
    //   107: aload_0
    //   108: getfield mInterpolator : Landroid/view/animation/Interpolator;
    //   111: instanceof androidx/constraintlayout/motion/widget/MotionInterpolator
    //   114: ifne -> 148
    //   117: lload #8
    //   119: aload_0
    //   120: getfield mTransitionLastTime : J
    //   123: lsub
    //   124: l2f
    //   125: fload #7
    //   127: fmul
    //   128: ldc_w 1.0E-9
    //   131: fmul
    //   132: aload_0
    //   133: getfield mTransitionDuration : F
    //   136: fdiv
    //   137: fstore #10
    //   139: aload_0
    //   140: fload #10
    //   142: putfield mLastVelocity : F
    //   145: goto -> 151
    //   148: fconst_0
    //   149: fstore #10
    //   151: aload_0
    //   152: getfield mTransitionLastPosition : F
    //   155: fload #10
    //   157: fadd
    //   158: fstore #11
    //   160: aload_0
    //   161: getfield mTransitionInstantly : Z
    //   164: ifeq -> 173
    //   167: aload_0
    //   168: getfield mTransitionGoalPosition : F
    //   171: fstore #11
    //   173: fload #7
    //   175: fconst_0
    //   176: fcmpl
    //   177: istore #4
    //   179: iload #4
    //   181: ifle -> 194
    //   184: fload #11
    //   186: aload_0
    //   187: getfield mTransitionGoalPosition : F
    //   190: fcmpl
    //   191: ifge -> 211
    //   194: fload #7
    //   196: fconst_0
    //   197: fcmpg
    //   198: ifgt -> 228
    //   201: fload #11
    //   203: aload_0
    //   204: getfield mTransitionGoalPosition : F
    //   207: fcmpg
    //   208: ifgt -> 228
    //   211: aload_0
    //   212: getfield mTransitionGoalPosition : F
    //   215: fstore #11
    //   217: aload_0
    //   218: iconst_0
    //   219: putfield mInTransition : Z
    //   222: iconst_1
    //   223: istore #6
    //   225: goto -> 231
    //   228: iconst_0
    //   229: istore #6
    //   231: aload_0
    //   232: fload #11
    //   234: putfield mTransitionLastPosition : F
    //   237: aload_0
    //   238: fload #11
    //   240: putfield mTransitionPosition : F
    //   243: aload_0
    //   244: lload #8
    //   246: putfield mTransitionLastTime : J
    //   249: aload_0
    //   250: getfield mInterpolator : Landroid/view/animation/Interpolator;
    //   253: astore #12
    //   255: fload #11
    //   257: fstore_2
    //   258: aload #12
    //   260: ifnull -> 501
    //   263: fload #11
    //   265: fstore_2
    //   266: iload #6
    //   268: ifne -> 501
    //   271: aload_0
    //   272: getfield mTemporalInterpolator : Z
    //   275: ifeq -> 438
    //   278: aload #12
    //   280: lload #8
    //   282: aload_0
    //   283: getfield mAnimationStartTime : J
    //   286: lsub
    //   287: l2f
    //   288: ldc_w 1.0E-9
    //   291: fmul
    //   292: invokeinterface getInterpolation : (F)F
    //   297: fstore #10
    //   299: aload_0
    //   300: fload #10
    //   302: putfield mTransitionLastPosition : F
    //   305: aload_0
    //   306: lload #8
    //   308: putfield mTransitionLastTime : J
    //   311: aload_0
    //   312: getfield mInterpolator : Landroid/view/animation/Interpolator;
    //   315: astore #12
    //   317: fload #10
    //   319: fstore #11
    //   321: aload #12
    //   323: instanceof androidx/constraintlayout/motion/widget/MotionInterpolator
    //   326: ifeq -> 432
    //   329: aload #12
    //   331: checkcast androidx/constraintlayout/motion/widget/MotionInterpolator
    //   334: invokevirtual getVelocity : ()F
    //   337: fstore #13
    //   339: aload_0
    //   340: fload #13
    //   342: putfield mLastVelocity : F
    //   345: fload #13
    //   347: invokestatic abs : (F)F
    //   350: aload_0
    //   351: getfield mTransitionDuration : F
    //   354: fmul
    //   355: ldc 1.0E-5
    //   357: fcmpg
    //   358: ifgt -> 366
    //   361: aload_0
    //   362: iconst_0
    //   363: putfield mInTransition : Z
    //   366: fload #10
    //   368: fstore_2
    //   369: fload #13
    //   371: fconst_0
    //   372: fcmpl
    //   373: ifle -> 398
    //   376: fload #10
    //   378: fstore_2
    //   379: fload #10
    //   381: fconst_1
    //   382: fcmpl
    //   383: iflt -> 398
    //   386: aload_0
    //   387: fconst_1
    //   388: putfield mTransitionLastPosition : F
    //   391: aload_0
    //   392: iconst_0
    //   393: putfield mInTransition : Z
    //   396: fconst_1
    //   397: fstore_2
    //   398: fload_2
    //   399: fstore #11
    //   401: fload #13
    //   403: fconst_0
    //   404: fcmpg
    //   405: ifge -> 432
    //   408: fload_2
    //   409: fstore #11
    //   411: fload_2
    //   412: fconst_0
    //   413: fcmpg
    //   414: ifgt -> 432
    //   417: aload_0
    //   418: fconst_0
    //   419: putfield mTransitionLastPosition : F
    //   422: aload_0
    //   423: iconst_0
    //   424: putfield mInTransition : Z
    //   427: fconst_0
    //   428: fstore_2
    //   429: goto -> 501
    //   432: fload #11
    //   434: fstore_2
    //   435: goto -> 501
    //   438: aload #12
    //   440: fload #11
    //   442: invokeinterface getInterpolation : (F)F
    //   447: fstore_2
    //   448: aload_0
    //   449: getfield mInterpolator : Landroid/view/animation/Interpolator;
    //   452: astore #12
    //   454: aload #12
    //   456: instanceof androidx/constraintlayout/motion/widget/MotionInterpolator
    //   459: ifeq -> 477
    //   462: aload_0
    //   463: aload #12
    //   465: checkcast androidx/constraintlayout/motion/widget/MotionInterpolator
    //   468: invokevirtual getVelocity : ()F
    //   471: putfield mLastVelocity : F
    //   474: goto -> 501
    //   477: aload_0
    //   478: aload #12
    //   480: fload #11
    //   482: fload #10
    //   484: fadd
    //   485: invokeinterface getInterpolation : (F)F
    //   490: fload_2
    //   491: fsub
    //   492: fload #7
    //   494: fmul
    //   495: fload #10
    //   497: fdiv
    //   498: putfield mLastVelocity : F
    //   501: aload_0
    //   502: getfield mLastVelocity : F
    //   505: invokestatic abs : (F)F
    //   508: ldc 1.0E-5
    //   510: fcmpl
    //   511: ifle -> 521
    //   514: aload_0
    //   515: getstatic androidx/constraintlayout/motion/widget/MotionLayout$TransitionState.MOVING : Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    //   518: invokevirtual setState : (Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    //   521: iload #4
    //   523: ifle -> 535
    //   526: fload_2
    //   527: aload_0
    //   528: getfield mTransitionGoalPosition : F
    //   531: fcmpl
    //   532: ifge -> 557
    //   535: fload_2
    //   536: fstore #11
    //   538: fload #7
    //   540: fconst_0
    //   541: fcmpg
    //   542: ifgt -> 568
    //   545: fload_2
    //   546: fstore #11
    //   548: fload_2
    //   549: aload_0
    //   550: getfield mTransitionGoalPosition : F
    //   553: fcmpg
    //   554: ifgt -> 568
    //   557: aload_0
    //   558: getfield mTransitionGoalPosition : F
    //   561: fstore #11
    //   563: aload_0
    //   564: iconst_0
    //   565: putfield mInTransition : Z
    //   568: fload #11
    //   570: fconst_1
    //   571: fcmpl
    //   572: istore #14
    //   574: iload #14
    //   576: ifge -> 586
    //   579: fload #11
    //   581: fconst_0
    //   582: fcmpg
    //   583: ifgt -> 598
    //   586: aload_0
    //   587: iconst_0
    //   588: putfield mInTransition : Z
    //   591: aload_0
    //   592: getstatic androidx/constraintlayout/motion/widget/MotionLayout$TransitionState.FINISHED : Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    //   595: invokevirtual setState : (Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    //   598: aload_0
    //   599: invokevirtual getChildCount : ()I
    //   602: istore #15
    //   604: aload_0
    //   605: iconst_0
    //   606: putfield mKeepAnimating : Z
    //   609: aload_0
    //   610: invokevirtual getNanoTime : ()J
    //   613: lstore #8
    //   615: aload_0
    //   616: fload #11
    //   618: putfield mPostInterpolationPosition : F
    //   621: iconst_0
    //   622: istore #6
    //   624: iload #6
    //   626: iload #15
    //   628: if_icmpge -> 690
    //   631: aload_0
    //   632: iload #6
    //   634: invokevirtual getChildAt : (I)Landroid/view/View;
    //   637: astore #12
    //   639: aload_0
    //   640: getfield mFrameArrayList : Ljava/util/HashMap;
    //   643: aload #12
    //   645: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   648: checkcast androidx/constraintlayout/motion/widget/MotionController
    //   651: astore #16
    //   653: aload #16
    //   655: ifnull -> 684
    //   658: aload_0
    //   659: getfield mKeepAnimating : Z
    //   662: istore_1
    //   663: aload_0
    //   664: aload #16
    //   666: aload #12
    //   668: fload #11
    //   670: lload #8
    //   672: aload_0
    //   673: getfield mKeyCache : Landroidx/constraintlayout/motion/widget/KeyCache;
    //   676: invokevirtual interpolate : (Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    //   679: iload_1
    //   680: ior
    //   681: putfield mKeepAnimating : Z
    //   684: iinc #6, 1
    //   687: goto -> 624
    //   690: iload #4
    //   692: ifle -> 705
    //   695: fload #11
    //   697: aload_0
    //   698: getfield mTransitionGoalPosition : F
    //   701: fcmpl
    //   702: ifge -> 722
    //   705: fload #7
    //   707: fconst_0
    //   708: fcmpg
    //   709: ifgt -> 728
    //   712: fload #11
    //   714: aload_0
    //   715: getfield mTransitionGoalPosition : F
    //   718: fcmpg
    //   719: ifgt -> 728
    //   722: iconst_1
    //   723: istore #6
    //   725: goto -> 731
    //   728: iconst_0
    //   729: istore #6
    //   731: aload_0
    //   732: getfield mKeepAnimating : Z
    //   735: ifne -> 757
    //   738: aload_0
    //   739: getfield mInTransition : Z
    //   742: ifne -> 757
    //   745: iload #6
    //   747: ifeq -> 757
    //   750: aload_0
    //   751: getstatic androidx/constraintlayout/motion/widget/MotionLayout$TransitionState.FINISHED : Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    //   754: invokevirtual setState : (Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    //   757: aload_0
    //   758: getfield mMeasureDuringTransition : Z
    //   761: ifeq -> 768
    //   764: aload_0
    //   765: invokevirtual requestLayout : ()V
    //   768: aload_0
    //   769: iload #6
    //   771: iconst_1
    //   772: ixor
    //   773: aload_0
    //   774: getfield mKeepAnimating : Z
    //   777: ior
    //   778: putfield mKeepAnimating : Z
    //   781: iload #5
    //   783: istore #6
    //   785: fload #11
    //   787: fconst_0
    //   788: fcmpg
    //   789: ifgt -> 850
    //   792: aload_0
    //   793: getfield mBeginState : I
    //   796: istore #15
    //   798: iload #5
    //   800: istore #6
    //   802: iload #15
    //   804: iconst_m1
    //   805: if_icmpeq -> 850
    //   808: iload #5
    //   810: istore #6
    //   812: aload_0
    //   813: getfield mCurrentState : I
    //   816: iload #15
    //   818: if_icmpeq -> 850
    //   821: aload_0
    //   822: iload #15
    //   824: putfield mCurrentState : I
    //   827: aload_0
    //   828: getfield mScene : Landroidx/constraintlayout/motion/widget/MotionScene;
    //   831: iload #15
    //   833: invokevirtual getConstraintSet : (I)Landroidx/constraintlayout/widget/ConstraintSet;
    //   836: aload_0
    //   837: invokevirtual applyCustomAttributes : (Landroidx/constraintlayout/widget/ConstraintLayout;)V
    //   840: aload_0
    //   841: getstatic androidx/constraintlayout/motion/widget/MotionLayout$TransitionState.FINISHED : Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    //   844: invokevirtual setState : (Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    //   847: iconst_1
    //   848: istore #6
    //   850: iload #6
    //   852: istore #5
    //   854: fload #11
    //   856: f2d
    //   857: dconst_1
    //   858: dcmpl
    //   859: iflt -> 914
    //   862: aload_0
    //   863: getfield mCurrentState : I
    //   866: istore #15
    //   868: aload_0
    //   869: getfield mEndState : I
    //   872: istore #17
    //   874: iload #6
    //   876: istore #5
    //   878: iload #15
    //   880: iload #17
    //   882: if_icmpeq -> 914
    //   885: aload_0
    //   886: iload #17
    //   888: putfield mCurrentState : I
    //   891: aload_0
    //   892: getfield mScene : Landroidx/constraintlayout/motion/widget/MotionScene;
    //   895: iload #17
    //   897: invokevirtual getConstraintSet : (I)Landroidx/constraintlayout/widget/ConstraintSet;
    //   900: aload_0
    //   901: invokevirtual applyCustomAttributes : (Landroidx/constraintlayout/widget/ConstraintLayout;)V
    //   904: aload_0
    //   905: getstatic androidx/constraintlayout/motion/widget/MotionLayout$TransitionState.FINISHED : Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    //   908: invokevirtual setState : (Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    //   911: iconst_1
    //   912: istore #5
    //   914: aload_0
    //   915: getfield mKeepAnimating : Z
    //   918: ifne -> 965
    //   921: aload_0
    //   922: getfield mInTransition : Z
    //   925: ifeq -> 931
    //   928: goto -> 965
    //   931: iload #4
    //   933: ifle -> 941
    //   936: iload #14
    //   938: ifeq -> 955
    //   941: fload #7
    //   943: fconst_0
    //   944: fcmpg
    //   945: ifge -> 969
    //   948: fload #11
    //   950: fconst_0
    //   951: fcmpl
    //   952: ifne -> 969
    //   955: aload_0
    //   956: getstatic androidx/constraintlayout/motion/widget/MotionLayout$TransitionState.FINISHED : Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    //   959: invokevirtual setState : (Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    //   962: goto -> 969
    //   965: aload_0
    //   966: invokevirtual invalidate : ()V
    //   969: aload_0
    //   970: getfield mKeepAnimating : Z
    //   973: ifne -> 993
    //   976: aload_0
    //   977: getfield mInTransition : Z
    //   980: ifeq -> 993
    //   983: iload #4
    //   985: ifle -> 993
    //   988: iload #14
    //   990: ifeq -> 1015
    //   993: iload #5
    //   995: istore #6
    //   997: fload #7
    //   999: fconst_0
    //   1000: fcmpg
    //   1001: ifge -> 1023
    //   1004: iload #5
    //   1006: istore #6
    //   1008: fload #11
    //   1010: fconst_0
    //   1011: fcmpl
    //   1012: ifne -> 1023
    //   1015: aload_0
    //   1016: invokespecial onNewStateAttachHandlers : ()V
    //   1019: iload #5
    //   1021: istore #6
    //   1023: aload_0
    //   1024: getfield mTransitionLastPosition : F
    //   1027: fstore_2
    //   1028: fload_2
    //   1029: fconst_1
    //   1030: fcmpl
    //   1031: iflt -> 1063
    //   1034: aload_0
    //   1035: getfield mCurrentState : I
    //   1038: aload_0
    //   1039: getfield mEndState : I
    //   1042: if_icmpeq -> 1048
    //   1045: iconst_1
    //   1046: istore #6
    //   1048: aload_0
    //   1049: aload_0
    //   1050: getfield mEndState : I
    //   1053: putfield mCurrentState : I
    //   1056: iload #6
    //   1058: istore #5
    //   1060: goto -> 1099
    //   1063: iload #6
    //   1065: istore #5
    //   1067: fload_2
    //   1068: fconst_0
    //   1069: fcmpg
    //   1070: ifgt -> 1099
    //   1073: aload_0
    //   1074: getfield mCurrentState : I
    //   1077: aload_0
    //   1078: getfield mBeginState : I
    //   1081: if_icmpeq -> 1087
    //   1084: iconst_1
    //   1085: istore #6
    //   1087: aload_0
    //   1088: aload_0
    //   1089: getfield mBeginState : I
    //   1092: putfield mCurrentState : I
    //   1095: iload #6
    //   1097: istore #5
    //   1099: aload_0
    //   1100: aload_0
    //   1101: getfield mNeedsFireTransitionCompleted : Z
    //   1104: iload #5
    //   1106: ior
    //   1107: putfield mNeedsFireTransitionCompleted : Z
    //   1110: iload #5
    //   1112: ifeq -> 1126
    //   1115: aload_0
    //   1116: getfield mInLayout : Z
    //   1119: ifne -> 1126
    //   1122: aload_0
    //   1123: invokevirtual requestLayout : ()V
    //   1126: aload_0
    //   1127: aload_0
    //   1128: getfield mTransitionLastPosition : F
    //   1131: putfield mTransitionPosition : F
    //   1134: return
  }
  
  protected void fireTransitionCompleted() {
    // Byte code:
    //   0: aload_0
    //   1: getfield mTransitionListener : Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;
    //   4: ifnonnull -> 23
    //   7: aload_0
    //   8: getfield mTransitionListeners : Ljava/util/ArrayList;
    //   11: astore_1
    //   12: aload_1
    //   13: ifnull -> 103
    //   16: aload_1
    //   17: invokevirtual isEmpty : ()Z
    //   20: ifne -> 103
    //   23: aload_0
    //   24: getfield mListenerState : I
    //   27: iconst_m1
    //   28: if_icmpne -> 103
    //   31: aload_0
    //   32: aload_0
    //   33: getfield mCurrentState : I
    //   36: putfield mListenerState : I
    //   39: aload_0
    //   40: getfield mTransitionCompleted : Ljava/util/ArrayList;
    //   43: invokevirtual isEmpty : ()Z
    //   46: ifne -> 74
    //   49: aload_0
    //   50: getfield mTransitionCompleted : Ljava/util/ArrayList;
    //   53: astore_1
    //   54: aload_1
    //   55: aload_1
    //   56: invokevirtual size : ()I
    //   59: iconst_1
    //   60: isub
    //   61: invokevirtual get : (I)Ljava/lang/Object;
    //   64: checkcast java/lang/Integer
    //   67: invokevirtual intValue : ()I
    //   70: istore_2
    //   71: goto -> 76
    //   74: iconst_m1
    //   75: istore_2
    //   76: aload_0
    //   77: getfield mCurrentState : I
    //   80: istore_3
    //   81: iload_2
    //   82: iload_3
    //   83: if_icmpeq -> 103
    //   86: iload_3
    //   87: iconst_m1
    //   88: if_icmpeq -> 103
    //   91: aload_0
    //   92: getfield mTransitionCompleted : Ljava/util/ArrayList;
    //   95: iload_3
    //   96: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   99: invokevirtual add : (Ljava/lang/Object;)Z
    //   102: pop
    //   103: aload_0
    //   104: invokespecial processTransitionCompleted : ()V
    //   107: return
  }
  
  public void fireTrigger(int paramInt, boolean paramBoolean, float paramFloat) {
    TransitionListener transitionListener = this.mTransitionListener;
    if (transitionListener != null)
      transitionListener.onTransitionTrigger(this, paramInt, paramBoolean, paramFloat); 
    ArrayList<TransitionListener> arrayList = this.mTransitionListeners;
    if (arrayList != null) {
      Iterator<TransitionListener> iterator = arrayList.iterator();
      while (iterator.hasNext())
        ((TransitionListener)iterator.next()).onTransitionTrigger(this, paramInt, paramBoolean, paramFloat); 
    } 
  }
  
  void getAnchorDpDt(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3, float[] paramArrayOffloat) {
    HashMap<View, MotionController> hashMap = this.mFrameArrayList;
    View view = getViewById(paramInt);
    MotionController motionController = hashMap.get(view);
    if (motionController != null) {
      motionController.getDpDt(paramFloat1, paramFloat2, paramFloat3, paramArrayOffloat);
      paramFloat2 = view.getY();
      paramFloat3 = this.lastPos;
      paramFloat3 = this.lastY;
      this.lastPos = paramFloat1;
      this.lastY = paramFloat2;
    } else {
      String str;
      if (view == null) {
        StringBuilder stringBuilder1 = new StringBuilder();
        stringBuilder1.append("");
        stringBuilder1.append(paramInt);
        str = stringBuilder1.toString();
      } else {
        str = view.getContext().getResources().getResourceName(paramInt);
      } 
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("WARNING could not find view id ");
      stringBuilder.append(str);
      Log.w("MotionLayout", stringBuilder.toString());
    } 
  }
  
  public ConstraintSet getConstraintSet(int paramInt) {
    MotionScene motionScene = this.mScene;
    return (motionScene == null) ? null : motionScene.getConstraintSet(paramInt);
  }
  
  public int[] getConstraintSetIds() {
    MotionScene motionScene = this.mScene;
    return (motionScene == null) ? null : motionScene.getConstraintSetIds();
  }
  
  String getConstraintSetNames(int paramInt) {
    MotionScene motionScene = this.mScene;
    return (motionScene == null) ? null : motionScene.lookUpConstraintName(paramInt);
  }
  
  public int getCurrentState() {
    return this.mCurrentState;
  }
  
  public void getDebugMode(boolean paramBoolean) {
    boolean bool;
    if (paramBoolean) {
      bool = true;
    } else {
      bool = true;
    } 
    this.mDebugPath = bool;
    invalidate();
  }
  
  public ArrayList<MotionScene.Transition> getDefinedTransitions() {
    MotionScene motionScene = this.mScene;
    return (motionScene == null) ? null : motionScene.getDefinedTransitions();
  }
  
  public DesignTool getDesignTool() {
    if (this.mDesignTool == null)
      this.mDesignTool = new DesignTool(this); 
    return this.mDesignTool;
  }
  
  public int getEndState() {
    return this.mEndState;
  }
  
  protected long getNanoTime() {
    return System.nanoTime();
  }
  
  public float getProgress() {
    return this.mTransitionLastPosition;
  }
  
  public int getStartState() {
    return this.mBeginState;
  }
  
  public float getTargetPosition() {
    return this.mTransitionGoalPosition;
  }
  
  public MotionScene.Transition getTransition(int paramInt) {
    return this.mScene.getTransitionById(paramInt);
  }
  
  public Bundle getTransitionState() {
    if (this.mStateCache == null)
      this.mStateCache = new StateCache(); 
    this.mStateCache.recordState();
    return this.mStateCache.getTransitionState();
  }
  
  public long getTransitionTimeMs() {
    MotionScene motionScene = this.mScene;
    if (motionScene != null)
      this.mTransitionDuration = motionScene.getDuration() / 1000.0F; 
    return (long)(this.mTransitionDuration * 1000.0F);
  }
  
  public float getVelocity() {
    return this.mLastVelocity;
  }
  
  public void getViewVelocity(View paramView, float paramFloat1, float paramFloat2, float[] paramArrayOffloat, int paramInt) {
    float f1 = this.mLastVelocity;
    float f2 = this.mTransitionLastPosition;
    float f3 = f2;
    if (this.mInterpolator != null) {
      f1 = Math.signum(this.mTransitionGoalPosition - f2);
      f2 = this.mInterpolator.getInterpolation(this.mTransitionLastPosition + 1.0E-5F);
      f3 = this.mInterpolator.getInterpolation(this.mTransitionLastPosition);
      f1 = f1 * (f2 - f3) / 1.0E-5F / this.mTransitionDuration;
    } 
    Interpolator interpolator = this.mInterpolator;
    if (interpolator instanceof MotionInterpolator)
      f1 = ((MotionInterpolator)interpolator).getVelocity(); 
    MotionController motionController = this.mFrameArrayList.get(paramView);
    if ((paramInt & 0x1) == 0) {
      motionController.getPostLayoutDvDp(f3, paramView.getWidth(), paramView.getHeight(), paramFloat1, paramFloat2, paramArrayOffloat);
    } else {
      motionController.getDpDt(f3, paramFloat1, paramFloat2, paramArrayOffloat);
    } 
    if (paramInt < 2) {
      paramArrayOffloat[0] = paramArrayOffloat[0] * f1;
      paramArrayOffloat[1] = paramArrayOffloat[1] * f1;
    } 
  }
  
  public boolean isAttachedToWindow() {
    boolean bool;
    if (Build.VERSION.SDK_INT >= 19)
      return super.isAttachedToWindow(); 
    if (getWindowToken() != null) {
      bool = true;
    } else {
      bool = false;
    } 
    return bool;
  }
  
  public boolean isInteractionEnabled() {
    return this.mInteractionEnabled;
  }
  
  public void loadLayoutDescription(int paramInt) {
    if (paramInt != 0) {
      try {
        MotionScene motionScene = new MotionScene();
        this(getContext(), this, paramInt);
        this.mScene = motionScene;
        if (Build.VERSION.SDK_INT < 19 || isAttachedToWindow()) {
          this.mScene.readFallback(this);
          this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
          rebuildScene();
          this.mScene.setRtl(isRtl());
        } 
      } catch (Exception exception) {
        throw new IllegalArgumentException("unable to parse MotionScene file", exception);
      } 
    } else {
      this.mScene = null;
    } 
  }
  
  int lookUpConstraintId(String paramString) {
    MotionScene motionScene = this.mScene;
    return (motionScene == null) ? 0 : motionScene.lookUpConstraintId(paramString);
  }
  
  protected MotionTracker obtainVelocityTracker() {
    return MyTracker.obtain();
  }
  
  protected void onAttachedToWindow() {
    super.onAttachedToWindow();
    MotionScene motionScene = this.mScene;
    if (motionScene != null) {
      int i = this.mCurrentState;
      if (i != -1) {
        ConstraintSet constraintSet = motionScene.getConstraintSet(i);
        this.mScene.readFallback(this);
        if (constraintSet != null)
          constraintSet.applyTo(this); 
        this.mBeginState = this.mCurrentState;
      } 
    } 
    onNewStateAttachHandlers();
    StateCache stateCache = this.mStateCache;
    if (stateCache != null)
      stateCache.apply(); 
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent) {
    MotionScene motionScene = this.mScene;
    if (motionScene != null && this.mInteractionEnabled) {
      MotionScene.Transition transition = motionScene.mCurrentTransition;
      if (transition != null && transition.isEnabled()) {
        TouchResponse touchResponse = transition.getTouchResponse();
        if (touchResponse != null) {
          if (paramMotionEvent.getAction() == 0) {
            RectF rectF = touchResponse.getTouchRegion((ViewGroup)this, new RectF());
            if (rectF != null && !rectF.contains(paramMotionEvent.getX(), paramMotionEvent.getY()))
              return false; 
          } 
          int i = touchResponse.getTouchRegionId();
          if (i != -1) {
            View view = this.mRegionView;
            if (view == null || view.getId() != i)
              this.mRegionView = findViewById(i); 
            view = this.mRegionView;
            if (view != null) {
              this.mBoundsCheck.set(view.getLeft(), this.mRegionView.getTop(), this.mRegionView.getRight(), this.mRegionView.getBottom());
              if (this.mBoundsCheck.contains(paramMotionEvent.getX(), paramMotionEvent.getY()) && !handlesTouchEvent(0.0F, 0.0F, this.mRegionView, paramMotionEvent))
                return onTouchEvent(paramMotionEvent); 
            } 
          } 
        } 
      } 
    } 
    return false;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this.mInLayout = true;
    try {
      if (this.mScene == null) {
        super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
        return;
      } 
      paramInt1 = paramInt3 - paramInt1;
      paramInt2 = paramInt4 - paramInt2;
      if (this.mLastLayoutWidth != paramInt1 || this.mLastLayoutHeight != paramInt2) {
        rebuildScene();
        evaluate(true);
      } 
      this.mLastLayoutWidth = paramInt1;
      this.mLastLayoutHeight = paramInt2;
      this.mOldWidth = paramInt1;
      this.mOldHeight = paramInt2;
      return;
    } finally {
      this.mInLayout = false;
    } 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    if (this.mScene == null) {
      super.onMeasure(paramInt1, paramInt2);
      return;
    } 
    int i = this.mLastWidthMeasureSpec;
    int j = 0;
    if (i != paramInt1 || this.mLastHeightMeasureSpec != paramInt2) {
      i = 1;
    } else {
      i = 0;
    } 
    if (this.mNeedsFireTransitionCompleted) {
      this.mNeedsFireTransitionCompleted = false;
      onNewStateAttachHandlers();
      processTransitionCompleted();
      i = 1;
    } 
    if (this.mDirtyHierarchy)
      i = 1; 
    this.mLastWidthMeasureSpec = paramInt1;
    this.mLastHeightMeasureSpec = paramInt2;
    int k = this.mScene.getStartId();
    int m = this.mScene.getEndId();
    if ((i != 0 || this.mModel.isNotConfiguredWith(k, m)) && this.mBeginState != -1) {
      super.onMeasure(paramInt1, paramInt2);
      this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(k), this.mScene.getConstraintSet(m));
      this.mModel.reEvaluateState();
      this.mModel.setMeasuredId(k, m);
      paramInt1 = j;
    } else {
      paramInt1 = 1;
    } 
    if (this.mMeasureDuringTransition || paramInt1 != 0) {
      i = getPaddingTop();
      paramInt2 = getPaddingBottom();
      j = getPaddingLeft();
      paramInt1 = getPaddingRight();
      paramInt1 = this.mLayoutWidget.getWidth() + j + paramInt1;
      paramInt2 = this.mLayoutWidget.getHeight() + i + paramInt2;
      i = this.mWidthMeasureMode;
      if (i == Integer.MIN_VALUE || i == 0) {
        paramInt1 = this.mStartWrapWidth;
        paramInt1 = (int)(paramInt1 + this.mPostInterpolationPosition * (this.mEndWrapWidth - paramInt1));
        requestLayout();
      } 
      i = this.mHeightMeasureMode;
      if (i == Integer.MIN_VALUE || i == 0) {
        paramInt2 = this.mStartWrapHeight;
        paramInt2 = (int)(paramInt2 + this.mPostInterpolationPosition * (this.mEndWrapHeight - paramInt2));
        requestLayout();
      } 
      setMeasuredDimension(paramInt1, paramInt2);
    } 
    evaluateLayout();
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean) {
    return false;
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2) {
    return false;
  }
  
  public void onNestedPreScroll(final View target, int paramInt1, int paramInt2, int[] paramArrayOfint, int paramInt3) {
    MotionScene motionScene = this.mScene;
    if (motionScene != null && motionScene.mCurrentTransition != null) {
      if (!this.mScene.mCurrentTransition.isEnabled())
        return; 
      MotionScene.Transition transition = this.mScene.mCurrentTransition;
      if (transition != null && transition.isEnabled()) {
        TouchResponse touchResponse = transition.getTouchResponse();
        if (touchResponse != null) {
          paramInt3 = touchResponse.getTouchRegionId();
          if (paramInt3 != -1 && target.getId() != paramInt3)
            return; 
        } 
      } 
      MotionScene motionScene1 = this.mScene;
      if (motionScene1 != null && motionScene1.getMoveWhenScrollAtTop()) {
        float f = this.mTransitionPosition;
        if ((f == 1.0F || f == 0.0F) && target.canScrollVertically(-1))
          return; 
      } 
      if (transition.getTouchResponse() != null && (this.mScene.mCurrentTransition.getTouchResponse().getFlags() & 0x1) != 0) {
        float f = this.mScene.getProgressDirection(paramInt1, paramInt2);
        if ((this.mTransitionLastPosition <= 0.0F && f < 0.0F) || (this.mTransitionLastPosition >= 1.0F && f > 0.0F)) {
          if (Build.VERSION.SDK_INT >= 21) {
            target.setNestedScrollingEnabled(false);
            target.post(new Runnable() {
                  public void run() {
                    target.setNestedScrollingEnabled(true);
                  }
                });
          } 
          return;
        } 
      } 
      float f2 = this.mTransitionPosition;
      long l = getNanoTime();
      float f1 = paramInt1;
      this.mScrollTargetDX = f1;
      float f3 = paramInt2;
      this.mScrollTargetDY = f3;
      this.mScrollTargetDT = (float)((l - this.mScrollTargetTime) * 1.0E-9D);
      this.mScrollTargetTime = l;
      this.mScene.processScrollMove(f1, f3);
      if (f2 != this.mTransitionPosition) {
        paramArrayOfint[0] = paramInt1;
        paramArrayOfint[1] = paramInt2;
      } 
      evaluate(false);
      if (paramArrayOfint[0] != 0 || paramArrayOfint[1] != 0)
        this.mUndergoingMotion = true; 
    } 
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {}
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int[] paramArrayOfint) {
    if (this.mUndergoingMotion || paramInt1 != 0 || paramInt2 != 0) {
      paramArrayOfint[0] = paramArrayOfint[0] + paramInt3;
      paramArrayOfint[1] = paramArrayOfint[1] + paramInt4;
    } 
    this.mUndergoingMotion = false;
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt1, int paramInt2) {}
  
  public void onRtlPropertiesChanged(int paramInt) {
    MotionScene motionScene = this.mScene;
    if (motionScene != null)
      motionScene.setRtl(isRtl()); 
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt1, int paramInt2) {
    MotionScene motionScene = this.mScene;
    return !(motionScene == null || motionScene.mCurrentTransition == null || this.mScene.mCurrentTransition.getTouchResponse() == null || (this.mScene.mCurrentTransition.getTouchResponse().getFlags() & 0x2) != 0);
  }
  
  public void onStopNestedScroll(View paramView, int paramInt) {
    MotionScene motionScene = this.mScene;
    if (motionScene == null)
      return; 
    float f1 = this.mScrollTargetDX;
    float f2 = this.mScrollTargetDT;
    motionScene.processScrollUp(f1 / f2, this.mScrollTargetDY / f2);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    MotionScene motionScene = this.mScene;
    if (motionScene != null && this.mInteractionEnabled && motionScene.supportTouch()) {
      MotionScene.Transition transition = this.mScene.mCurrentTransition;
      if (transition != null && !transition.isEnabled())
        return super.onTouchEvent(paramMotionEvent); 
      this.mScene.processTouchEvent(paramMotionEvent, getCurrentState(), this);
      return true;
    } 
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void onViewAdded(View paramView) {
    super.onViewAdded(paramView);
    if (paramView instanceof MotionHelper) {
      MotionHelper motionHelper = (MotionHelper)paramView;
      if (this.mTransitionListeners == null)
        this.mTransitionListeners = new ArrayList<TransitionListener>(); 
      this.mTransitionListeners.add(motionHelper);
      if (motionHelper.isUsedOnShow()) {
        if (this.mOnShowHelpers == null)
          this.mOnShowHelpers = new ArrayList<MotionHelper>(); 
        this.mOnShowHelpers.add(motionHelper);
      } 
      if (motionHelper.isUseOnHide()) {
        if (this.mOnHideHelpers == null)
          this.mOnHideHelpers = new ArrayList<MotionHelper>(); 
        this.mOnHideHelpers.add(motionHelper);
      } 
    } 
  }
  
  public void onViewRemoved(View paramView) {
    super.onViewRemoved(paramView);
    ArrayList<MotionHelper> arrayList = this.mOnShowHelpers;
    if (arrayList != null)
      arrayList.remove(paramView); 
    arrayList = this.mOnHideHelpers;
    if (arrayList != null)
      arrayList.remove(paramView); 
  }
  
  protected void parseLayoutDescription(int paramInt) {
    this.mConstraintLayoutSpec = null;
  }
  
  @Deprecated
  public void rebuildMotion() {
    Log.e("MotionLayout", "This method is deprecated. Please call rebuildScene() instead.");
    rebuildScene();
  }
  
  public void rebuildScene() {
    this.mModel.reEvaluateState();
    invalidate();
  }
  
  public boolean removeTransitionListener(TransitionListener paramTransitionListener) {
    ArrayList<TransitionListener> arrayList = this.mTransitionListeners;
    return (arrayList == null) ? false : arrayList.remove(paramTransitionListener);
  }
  
  public void requestLayout() {
    if (!this.mMeasureDuringTransition && this.mCurrentState == -1) {
      MotionScene motionScene = this.mScene;
      if (motionScene != null && motionScene.mCurrentTransition != null && this.mScene.mCurrentTransition.getLayoutDuringTransition() == 0)
        return; 
    } 
    super.requestLayout();
  }
  
  public void setDebugMode(int paramInt) {
    this.mDebugPath = paramInt;
    invalidate();
  }
  
  public void setInteractionEnabled(boolean paramBoolean) {
    this.mInteractionEnabled = paramBoolean;
  }
  
  public void setInterpolatedProgress(float paramFloat) {
    if (this.mScene != null) {
      setState(TransitionState.MOVING);
      Interpolator interpolator = this.mScene.getInterpolator();
      if (interpolator != null) {
        setProgress(interpolator.getInterpolation(paramFloat));
        return;
      } 
    } 
    setProgress(paramFloat);
  }
  
  public void setOnHide(float paramFloat) {
    ArrayList<MotionHelper> arrayList = this.mOnHideHelpers;
    if (arrayList != null) {
      int i = arrayList.size();
      for (byte b = 0; b < i; b++)
        ((MotionHelper)this.mOnHideHelpers.get(b)).setProgress(paramFloat); 
    } 
  }
  
  public void setOnShow(float paramFloat) {
    ArrayList<MotionHelper> arrayList = this.mOnShowHelpers;
    if (arrayList != null) {
      int i = arrayList.size();
      for (byte b = 0; b < i; b++)
        ((MotionHelper)this.mOnShowHelpers.get(b)).setProgress(paramFloat); 
    } 
  }
  
  public void setProgress(float paramFloat) {
    if (!isAttachedToWindow()) {
      if (this.mStateCache == null)
        this.mStateCache = new StateCache(); 
      this.mStateCache.setProgress(paramFloat);
      return;
    } 
    if (paramFloat <= 0.0F) {
      this.mCurrentState = this.mBeginState;
      if (this.mTransitionLastPosition == 0.0F)
        setState(TransitionState.FINISHED); 
    } else if (paramFloat >= 1.0F) {
      this.mCurrentState = this.mEndState;
      if (this.mTransitionLastPosition == 1.0F)
        setState(TransitionState.FINISHED); 
    } else {
      this.mCurrentState = -1;
      setState(TransitionState.MOVING);
    } 
    if (this.mScene == null)
      return; 
    this.mTransitionInstantly = true;
    this.mTransitionGoalPosition = paramFloat;
    this.mTransitionPosition = paramFloat;
    this.mTransitionLastTime = -1L;
    this.mAnimationStartTime = -1L;
    this.mInterpolator = null;
    this.mInTransition = true;
    invalidate();
  }
  
  public void setProgress(float paramFloat1, float paramFloat2) {
    if (!isAttachedToWindow()) {
      if (this.mStateCache == null)
        this.mStateCache = new StateCache(); 
      this.mStateCache.setProgress(paramFloat1);
      this.mStateCache.setVelocity(paramFloat2);
      return;
    } 
    setProgress(paramFloat1);
    setState(TransitionState.MOVING);
    this.mLastVelocity = paramFloat2;
    animateTo(1.0F);
  }
  
  public void setScene(MotionScene paramMotionScene) {
    this.mScene = paramMotionScene;
    this.mScene.setRtl(isRtl());
    rebuildScene();
  }
  
  public void setState(int paramInt1, int paramInt2, int paramInt3) {
    setState(TransitionState.SETUP);
    this.mCurrentState = paramInt1;
    this.mBeginState = -1;
    this.mEndState = -1;
    if (this.mConstraintLayoutSpec != null) {
      this.mConstraintLayoutSpec.updateConstraints(paramInt1, paramInt2, paramInt3);
    } else {
      MotionScene motionScene = this.mScene;
      if (motionScene != null)
        motionScene.getConstraintSet(paramInt1).applyTo(this); 
    } 
  }
  
  void setState(TransitionState paramTransitionState) {
    if (paramTransitionState == TransitionState.FINISHED && this.mCurrentState == -1)
      return; 
    TransitionState transitionState = this.mTransitionState;
    this.mTransitionState = paramTransitionState;
    if (transitionState == TransitionState.MOVING && paramTransitionState == TransitionState.MOVING)
      fireTransitionChange(); 
    int i = null.$SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[transitionState.ordinal()];
    if (i != 1 && i != 2) {
      if (i == 3 && paramTransitionState == TransitionState.FINISHED)
        fireTransitionCompleted(); 
    } else {
      if (paramTransitionState == TransitionState.MOVING)
        fireTransitionChange(); 
      if (paramTransitionState == TransitionState.FINISHED)
        fireTransitionCompleted(); 
    } 
  }
  
  public void setTransition(int paramInt) {
    if (this.mScene != null) {
      MotionScene.Transition transition = getTransition(paramInt);
      paramInt = this.mCurrentState;
      this.mBeginState = transition.getStartConstraintSetId();
      this.mEndState = transition.getEndConstraintSetId();
      if (!isAttachedToWindow()) {
        if (this.mStateCache == null)
          this.mStateCache = new StateCache(); 
        this.mStateCache.setStartState(this.mBeginState);
        this.mStateCache.setEndState(this.mEndState);
        return;
      } 
      float f1 = Float.NaN;
      paramInt = this.mCurrentState;
      int i = this.mBeginState;
      float f2 = 0.0F;
      if (paramInt == i) {
        f1 = 0.0F;
      } else if (paramInt == this.mEndState) {
        f1 = 1.0F;
      } 
      this.mScene.setTransition(transition);
      this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
      rebuildScene();
      if (!Float.isNaN(f1))
        f2 = f1; 
      this.mTransitionLastPosition = f2;
      if (Float.isNaN(f1)) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(Debug.getLocation());
        stringBuilder.append(" transitionToStart ");
        Log.v("MotionLayout", stringBuilder.toString());
        transitionToStart();
      } else {
        setProgress(f1);
      } 
    } 
  }
  
  public void setTransition(int paramInt1, int paramInt2) {
    if (!isAttachedToWindow()) {
      if (this.mStateCache == null)
        this.mStateCache = new StateCache(); 
      this.mStateCache.setStartState(paramInt1);
      this.mStateCache.setEndState(paramInt2);
      return;
    } 
    MotionScene motionScene = this.mScene;
    if (motionScene != null) {
      this.mBeginState = paramInt1;
      this.mEndState = paramInt2;
      motionScene.setTransition(paramInt1, paramInt2);
      this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(paramInt1), this.mScene.getConstraintSet(paramInt2));
      rebuildScene();
      this.mTransitionLastPosition = 0.0F;
      transitionToStart();
    } 
  }
  
  protected void setTransition(MotionScene.Transition paramTransition) {
    long l;
    this.mScene.setTransition(paramTransition);
    setState(TransitionState.SETUP);
    if (this.mCurrentState == this.mScene.getEndId()) {
      this.mTransitionLastPosition = 1.0F;
      this.mTransitionPosition = 1.0F;
      this.mTransitionGoalPosition = 1.0F;
    } else {
      this.mTransitionLastPosition = 0.0F;
      this.mTransitionPosition = 0.0F;
      this.mTransitionGoalPosition = 0.0F;
    } 
    if (paramTransition.isTransitionFlag(1)) {
      l = -1L;
    } else {
      l = getNanoTime();
    } 
    this.mTransitionLastTime = l;
    int i = this.mScene.getStartId();
    int j = this.mScene.getEndId();
    if (i == this.mBeginState && j == this.mEndState)
      return; 
    this.mBeginState = i;
    this.mEndState = j;
    this.mScene.setTransition(this.mBeginState, this.mEndState);
    this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
    this.mModel.setMeasuredId(this.mBeginState, this.mEndState);
    this.mModel.reEvaluateState();
    rebuildScene();
  }
  
  public void setTransitionDuration(int paramInt) {
    MotionScene motionScene = this.mScene;
    if (motionScene == null) {
      Log.e("MotionLayout", "MotionScene not defined");
      return;
    } 
    motionScene.setDuration(paramInt);
  }
  
  public void setTransitionListener(TransitionListener paramTransitionListener) {
    this.mTransitionListener = paramTransitionListener;
  }
  
  public void setTransitionState(Bundle paramBundle) {
    if (this.mStateCache == null)
      this.mStateCache = new StateCache(); 
    this.mStateCache.setTransitionState(paramBundle);
    if (isAttachedToWindow())
      this.mStateCache.apply(); 
  }
  
  public String toString() {
    Context context = getContext();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(Debug.getName(context, this.mBeginState));
    stringBuilder.append("->");
    stringBuilder.append(Debug.getName(context, this.mEndState));
    stringBuilder.append(" (pos:");
    stringBuilder.append(this.mTransitionLastPosition);
    stringBuilder.append(" Dpos/Dt:");
    stringBuilder.append(this.mLastVelocity);
    return stringBuilder.toString();
  }
  
  public void touchAnimateTo(int paramInt, float paramFloat1, float paramFloat2) {
    if (this.mScene == null)
      return; 
    if (this.mTransitionLastPosition == paramFloat1)
      return; 
    this.mTemporalInterpolator = true;
    this.mAnimationStartTime = getNanoTime();
    this.mTransitionDuration = this.mScene.getDuration() / 1000.0F;
    this.mTransitionGoalPosition = paramFloat1;
    this.mInTransition = true;
    if (paramInt != 0 && paramInt != 1 && paramInt != 2) {
      if (paramInt != 3)
        if (paramInt != 4) {
          if (paramInt == 5)
            if (willJump(paramFloat2, this.mTransitionLastPosition, this.mScene.getMaxAcceleration())) {
              this.mDecelerateLogic.config(paramFloat2, this.mTransitionLastPosition, this.mScene.getMaxAcceleration());
              this.mInterpolator = this.mDecelerateLogic;
            } else {
              this.mStopLogic.config(this.mTransitionLastPosition, paramFloat1, paramFloat2, this.mTransitionDuration, this.mScene.getMaxAcceleration(), this.mScene.getMaxVelocity());
              this.mLastVelocity = 0.0F;
              paramInt = this.mCurrentState;
              this.mTransitionGoalPosition = paramFloat1;
              this.mCurrentState = paramInt;
              this.mInterpolator = (Interpolator)this.mStopLogic;
            }  
        } else {
          this.mDecelerateLogic.config(paramFloat2, this.mTransitionLastPosition, this.mScene.getMaxAcceleration());
          this.mInterpolator = this.mDecelerateLogic;
        }  
    } else {
      if (paramInt == 1) {
        paramFloat1 = 0.0F;
      } else if (paramInt == 2) {
        paramFloat1 = 1.0F;
      } 
      this.mStopLogic.config(this.mTransitionLastPosition, paramFloat1, paramFloat2, this.mTransitionDuration, this.mScene.getMaxAcceleration(), this.mScene.getMaxVelocity());
      paramInt = this.mCurrentState;
      this.mTransitionGoalPosition = paramFloat1;
      this.mCurrentState = paramInt;
      this.mInterpolator = (Interpolator)this.mStopLogic;
    } 
    this.mTransitionInstantly = false;
    this.mAnimationStartTime = getNanoTime();
    invalidate();
  }
  
  public void transitionToEnd() {
    animateTo(1.0F);
  }
  
  public void transitionToStart() {
    animateTo(0.0F);
  }
  
  public void transitionToState(int paramInt) {
    if (!isAttachedToWindow()) {
      if (this.mStateCache == null)
        this.mStateCache = new StateCache(); 
      this.mStateCache.setEndState(paramInt);
      return;
    } 
    transitionToState(paramInt, -1, -1);
  }
  
  public void transitionToState(int paramInt1, int paramInt2, int paramInt3) {
    MotionScene motionScene = this.mScene;
    int i = paramInt1;
    if (motionScene != null) {
      i = paramInt1;
      if (motionScene.mStateSet != null) {
        paramInt2 = this.mScene.mStateSet.convertToConstraintSet(this.mCurrentState, paramInt1, paramInt2, paramInt3);
        i = paramInt1;
        if (paramInt2 != -1)
          i = paramInt2; 
      } 
    } 
    paramInt1 = this.mCurrentState;
    if (paramInt1 == i)
      return; 
    if (this.mBeginState == i) {
      animateTo(0.0F);
      return;
    } 
    if (this.mEndState == i) {
      animateTo(1.0F);
      return;
    } 
    this.mEndState = i;
    if (paramInt1 != -1) {
      setTransition(paramInt1, i);
      animateTo(1.0F);
      this.mTransitionLastPosition = 0.0F;
      transitionToEnd();
      return;
    } 
    paramInt3 = 0;
    this.mTemporalInterpolator = false;
    this.mTransitionGoalPosition = 1.0F;
    this.mTransitionPosition = 0.0F;
    this.mTransitionLastPosition = 0.0F;
    this.mTransitionLastTime = getNanoTime();
    this.mAnimationStartTime = getNanoTime();
    this.mTransitionInstantly = false;
    this.mInterpolator = null;
    this.mTransitionDuration = this.mScene.getDuration() / 1000.0F;
    this.mBeginState = -1;
    this.mScene.setTransition(this.mBeginState, this.mEndState);
    this.mScene.getStartId();
    int j = getChildCount();
    this.mFrameArrayList.clear();
    for (paramInt1 = 0; paramInt1 < j; paramInt1++) {
      View view = getChildAt(paramInt1);
      MotionController motionController = new MotionController(view);
      this.mFrameArrayList.put(view, motionController);
    } 
    this.mInTransition = true;
    this.mModel.initFrom(this.mLayoutWidget, null, this.mScene.getConstraintSet(i));
    rebuildScene();
    this.mModel.build();
    computeCurrentPositions();
    paramInt2 = getWidth();
    i = getHeight();
    for (paramInt1 = 0; paramInt1 < j; paramInt1++) {
      MotionController motionController = this.mFrameArrayList.get(getChildAt(paramInt1));
      this.mScene.getKeyFrames(motionController);
      motionController.setup(paramInt2, i, this.mTransitionDuration, getNanoTime());
    } 
    float f = this.mScene.getStaggered();
    if (f != 0.0F) {
      paramInt1 = 0;
      float f1 = Float.MAX_VALUE;
      float f2 = -3.4028235E38F;
      while (true) {
        paramInt2 = paramInt3;
        if (paramInt1 < j) {
          MotionController motionController = this.mFrameArrayList.get(getChildAt(paramInt1));
          float f3 = motionController.getFinalX();
          f3 = motionController.getFinalY() + f3;
          f1 = Math.min(f1, f3);
          f2 = Math.max(f2, f3);
          paramInt1++;
          continue;
        } 
        break;
      } 
      while (paramInt2 < j) {
        MotionController motionController = this.mFrameArrayList.get(getChildAt(paramInt2));
        float f3 = motionController.getFinalX();
        float f4 = motionController.getFinalY();
        motionController.mStaggerScale = 1.0F / (1.0F - f);
        motionController.mStaggerOffset = f - (f3 + f4 - f1) * f / (f2 - f1);
        paramInt2++;
      } 
    } 
    this.mTransitionPosition = 0.0F;
    this.mTransitionLastPosition = 0.0F;
    this.mInTransition = true;
    invalidate();
  }
  
  public void updateState() {
    this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
    rebuildScene();
  }
  
  public void updateState(int paramInt, ConstraintSet paramConstraintSet) {
    MotionScene motionScene = this.mScene;
    if (motionScene != null)
      motionScene.setConstraintSet(paramInt, paramConstraintSet); 
    updateState();
    if (this.mCurrentState == paramInt)
      paramConstraintSet.applyTo(this); 
  }
  
  class DecelerateInterpolator extends MotionInterpolator {
    float currentP = 0.0F;
    
    float initalV = 0.0F;
    
    float maxA;
    
    public void config(float param1Float1, float param1Float2, float param1Float3) {
      this.initalV = param1Float1;
      this.currentP = param1Float2;
      this.maxA = param1Float3;
    }
    
    public float getInterpolation(float param1Float) {
      float f1 = this.initalV;
      if (f1 > 0.0F) {
        float f5 = this.maxA;
        float f6 = param1Float;
        if (f1 / f5 < param1Float)
          f6 = f1 / f5; 
        MotionLayout motionLayout1 = MotionLayout.this;
        param1Float = this.initalV;
        f1 = this.maxA;
        motionLayout1.mLastVelocity = param1Float - f1 * f6;
        param1Float = param1Float * f6 - f1 * f6 * f6 / 2.0F;
        f6 = this.currentP;
        return param1Float + f6;
      } 
      float f4 = -f1;
      float f2 = this.maxA;
      float f3 = param1Float;
      if (f4 / f2 < param1Float)
        f3 = -f1 / f2; 
      MotionLayout motionLayout = MotionLayout.this;
      f1 = this.initalV;
      param1Float = this.maxA;
      motionLayout.mLastVelocity = param1Float * f3 + f1;
      param1Float = f1 * f3 + param1Float * f3 * f3 / 2.0F;
      f3 = this.currentP;
      return param1Float + f3;
    }
    
    public float getVelocity() {
      return MotionLayout.this.mLastVelocity;
    }
  }
  
  private class DevModeDraw {
    private static final int DEBUG_PATH_TICKS_PER_MS = 16;
    
    final int DIAMOND_SIZE = 10;
    
    final int GRAPH_COLOR = -13391360;
    
    final int KEYFRAME_COLOR = -2067046;
    
    final int RED_COLOR = -21965;
    
    final int SHADOW_COLOR = 1996488704;
    
    Rect mBounds = new Rect();
    
    DashPathEffect mDashPathEffect;
    
    Paint mFillPaint;
    
    int mKeyFrameCount;
    
    float[] mKeyFramePoints;
    
    Paint mPaint = new Paint();
    
    Paint mPaintGraph;
    
    Paint mPaintKeyframes;
    
    Path mPath;
    
    int[] mPathMode;
    
    float[] mPoints;
    
    boolean mPresentationMode = false;
    
    private float[] mRectangle;
    
    int mShadowTranslate = 1;
    
    Paint mTextPaint;
    
    public DevModeDraw() {
      this.mPaint.setAntiAlias(true);
      this.mPaint.setColor(-21965);
      this.mPaint.setStrokeWidth(2.0F);
      this.mPaint.setStyle(Paint.Style.STROKE);
      this.mPaintKeyframes = new Paint();
      this.mPaintKeyframes.setAntiAlias(true);
      this.mPaintKeyframes.setColor(-2067046);
      this.mPaintKeyframes.setStrokeWidth(2.0F);
      this.mPaintKeyframes.setStyle(Paint.Style.STROKE);
      this.mPaintGraph = new Paint();
      this.mPaintGraph.setAntiAlias(true);
      this.mPaintGraph.setColor(-13391360);
      this.mPaintGraph.setStrokeWidth(2.0F);
      this.mPaintGraph.setStyle(Paint.Style.STROKE);
      this.mTextPaint = new Paint();
      this.mTextPaint.setAntiAlias(true);
      this.mTextPaint.setColor(-13391360);
      this.mTextPaint.setTextSize((MotionLayout.this.getContext().getResources().getDisplayMetrics()).density * 12.0F);
      this.mRectangle = new float[8];
      this.mFillPaint = new Paint();
      this.mFillPaint.setAntiAlias(true);
      this.mDashPathEffect = new DashPathEffect(new float[] { 4.0F, 8.0F }, 0.0F);
      this.mPaintGraph.setPathEffect((PathEffect)this.mDashPathEffect);
      this.mKeyFramePoints = new float[100];
      this.mPathMode = new int[50];
      if (this.mPresentationMode) {
        this.mPaint.setStrokeWidth(8.0F);
        this.mFillPaint.setStrokeWidth(8.0F);
        this.mPaintKeyframes.setStrokeWidth(8.0F);
        this.mShadowTranslate = 4;
      } 
    }
    
    private void drawBasicPath(Canvas param1Canvas) {
      param1Canvas.drawLines(this.mPoints, this.mPaint);
    }
    
    private void drawPathAsConfigured(Canvas param1Canvas) {
      byte b = 0;
      boolean bool1 = false;
      boolean bool2 = false;
      while (b < this.mKeyFrameCount) {
        if (this.mPathMode[b] == 1)
          bool1 = true; 
        if (this.mPathMode[b] == 2)
          bool2 = true; 
        b++;
      } 
      if (bool1)
        drawPathRelative(param1Canvas); 
      if (bool2)
        drawPathCartesian(param1Canvas); 
    }
    
    private void drawPathCartesian(Canvas param1Canvas) {
      float[] arrayOfFloat = this.mPoints;
      float f1 = arrayOfFloat[0];
      float f2 = arrayOfFloat[1];
      float f3 = arrayOfFloat[arrayOfFloat.length - 2];
      float f4 = arrayOfFloat[arrayOfFloat.length - 1];
      param1Canvas.drawLine(Math.min(f1, f3), Math.max(f2, f4), Math.max(f1, f3), Math.max(f2, f4), this.mPaintGraph);
      param1Canvas.drawLine(Math.min(f1, f3), Math.min(f2, f4), Math.min(f1, f3), Math.max(f2, f4), this.mPaintGraph);
    }
    
    private void drawPathCartesianTicks(Canvas param1Canvas, float param1Float1, float param1Float2) {
      float[] arrayOfFloat = this.mPoints;
      float f1 = arrayOfFloat[0];
      float f2 = arrayOfFloat[1];
      float f3 = arrayOfFloat[arrayOfFloat.length - 2];
      float f4 = arrayOfFloat[arrayOfFloat.length - 1];
      float f5 = Math.min(f1, f3);
      float f6 = Math.max(f2, f4);
      float f7 = param1Float1 - Math.min(f1, f3);
      float f8 = Math.max(f2, f4) - param1Float2;
      StringBuilder stringBuilder2 = new StringBuilder();
      stringBuilder2.append("");
      stringBuilder2.append((int)((f7 * 100.0F / Math.abs(f3 - f1)) + 0.5D) / 100.0F);
      String str2 = stringBuilder2.toString();
      getTextBounds(str2, this.mTextPaint);
      param1Canvas.drawText(str2, f7 / 2.0F - (this.mBounds.width() / 2) + f5, param1Float2 - 20.0F, this.mTextPaint);
      param1Canvas.drawLine(param1Float1, param1Float2, Math.min(f1, f3), param1Float2, this.mPaintGraph);
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append("");
      stringBuilder1.append((int)((f8 * 100.0F / Math.abs(f4 - f2)) + 0.5D) / 100.0F);
      String str1 = stringBuilder1.toString();
      getTextBounds(str1, this.mTextPaint);
      param1Canvas.drawText(str1, param1Float1 + 5.0F, f6 - f8 / 2.0F - (this.mBounds.height() / 2), this.mTextPaint);
      param1Canvas.drawLine(param1Float1, param1Float2, param1Float1, Math.max(f2, f4), this.mPaintGraph);
    }
    
    private void drawPathRelative(Canvas param1Canvas) {
      float[] arrayOfFloat = this.mPoints;
      param1Canvas.drawLine(arrayOfFloat[0], arrayOfFloat[1], arrayOfFloat[arrayOfFloat.length - 2], arrayOfFloat[arrayOfFloat.length - 1], this.mPaintGraph);
    }
    
    private void drawPathRelativeTicks(Canvas param1Canvas, float param1Float1, float param1Float2) {
      float[] arrayOfFloat = this.mPoints;
      float f1 = arrayOfFloat[0];
      float f2 = arrayOfFloat[1];
      float f3 = arrayOfFloat[arrayOfFloat.length - 2];
      float f4 = arrayOfFloat[arrayOfFloat.length - 1];
      float f5 = (float)Math.hypot((f1 - f3), (f2 - f4));
      float f6 = f3 - f1;
      f3 = f4 - f2;
      f4 = ((param1Float1 - f1) * f6 + (param1Float2 - f2) * f3) / f5 * f5;
      f1 += f6 * f4;
      f4 = f2 + f4 * f3;
      Path path = new Path();
      path.moveTo(param1Float1, param1Float2);
      path.lineTo(f1, f4);
      f2 = (float)Math.hypot((f1 - param1Float1), (f4 - param1Float2));
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("");
      stringBuilder.append((int)(f2 * 100.0F / f5) / 100.0F);
      String str = stringBuilder.toString();
      getTextBounds(str, this.mTextPaint);
      param1Canvas.drawTextOnPath(str, path, f2 / 2.0F - (this.mBounds.width() / 2), -20.0F, this.mTextPaint);
      param1Canvas.drawLine(param1Float1, param1Float2, f1, f4, this.mPaintGraph);
    }
    
    private void drawPathScreenTicks(Canvas param1Canvas, float param1Float1, float param1Float2, int param1Int1, int param1Int2) {
      StringBuilder stringBuilder2 = new StringBuilder();
      stringBuilder2.append("");
      stringBuilder2.append((int)(((param1Float1 - (param1Int1 / 2)) * 100.0F / (MotionLayout.this.getWidth() - param1Int1)) + 0.5D) / 100.0F);
      String str2 = stringBuilder2.toString();
      getTextBounds(str2, this.mTextPaint);
      param1Canvas.drawText(str2, param1Float1 / 2.0F - (this.mBounds.width() / 2) + 0.0F, param1Float2 - 20.0F, this.mTextPaint);
      param1Canvas.drawLine(param1Float1, param1Float2, Math.min(0.0F, 1.0F), param1Float2, this.mPaintGraph);
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append("");
      stringBuilder1.append((int)(((param1Float2 - (param1Int2 / 2)) * 100.0F / (MotionLayout.this.getHeight() - param1Int2)) + 0.5D) / 100.0F);
      String str1 = stringBuilder1.toString();
      getTextBounds(str1, this.mTextPaint);
      param1Canvas.drawText(str1, param1Float1 + 5.0F, 0.0F - param1Float2 / 2.0F - (this.mBounds.height() / 2), this.mTextPaint);
      param1Canvas.drawLine(param1Float1, param1Float2, param1Float1, Math.max(0.0F, 1.0F), this.mPaintGraph);
    }
    
    private void drawRectangle(Canvas param1Canvas, MotionController param1MotionController) {
      this.mPath.reset();
      for (byte b = 0; b <= 50; b++) {
        param1MotionController.buildRect(b / 50, this.mRectangle, 0);
        Path path2 = this.mPath;
        float[] arrayOfFloat4 = this.mRectangle;
        path2.moveTo(arrayOfFloat4[0], arrayOfFloat4[1]);
        Path path4 = this.mPath;
        float[] arrayOfFloat2 = this.mRectangle;
        path4.lineTo(arrayOfFloat2[2], arrayOfFloat2[3]);
        Path path1 = this.mPath;
        float[] arrayOfFloat3 = this.mRectangle;
        path1.lineTo(arrayOfFloat3[4], arrayOfFloat3[5]);
        Path path3 = this.mPath;
        float[] arrayOfFloat1 = this.mRectangle;
        path3.lineTo(arrayOfFloat1[6], arrayOfFloat1[7]);
        this.mPath.close();
      } 
      this.mPaint.setColor(1140850688);
      param1Canvas.translate(2.0F, 2.0F);
      param1Canvas.drawPath(this.mPath, this.mPaint);
      param1Canvas.translate(-2.0F, -2.0F);
      this.mPaint.setColor(-65536);
      param1Canvas.drawPath(this.mPath, this.mPaint);
    }
    
    private void drawTicks(Canvas param1Canvas, int param1Int1, int param1Int2, MotionController param1MotionController) {
      boolean bool1;
      boolean bool2;
      if (param1MotionController.mView != null) {
        bool1 = param1MotionController.mView.getWidth();
        bool2 = param1MotionController.mView.getHeight();
      } else {
        bool1 = false;
        bool2 = false;
      } 
      for (byte b = 1; b < param1Int2 - 1; b++) {
        if (param1Int1 != 4 || this.mPathMode[b - 1] != 0) {
          float[] arrayOfFloat1 = this.mKeyFramePoints;
          int i = b * 2;
          float f1 = arrayOfFloat1[i];
          float f2 = arrayOfFloat1[i + 1];
          this.mPath.reset();
          this.mPath.moveTo(f1, f2 + 10.0F);
          this.mPath.lineTo(f1 + 10.0F, f2);
          this.mPath.lineTo(f1, f2 - 10.0F);
          this.mPath.lineTo(f1 - 10.0F, f2);
          this.mPath.close();
          i = b - 1;
          param1MotionController.getKeyFrame(i);
          if (param1Int1 == 4) {
            int[] arrayOfInt = this.mPathMode;
            if (arrayOfInt[i] == 1) {
              drawPathRelativeTicks(param1Canvas, f1 - 0.0F, f2 - 0.0F);
            } else if (arrayOfInt[i] == 2) {
              drawPathCartesianTicks(param1Canvas, f1 - 0.0F, f2 - 0.0F);
            } else if (arrayOfInt[i] == 3) {
              drawPathScreenTicks(param1Canvas, f1 - 0.0F, f2 - 0.0F, bool1, bool2);
            } 
            param1Canvas.drawPath(this.mPath, this.mFillPaint);
          } 
          if (param1Int1 == 2)
            drawPathRelativeTicks(param1Canvas, f1 - 0.0F, f2 - 0.0F); 
          if (param1Int1 == 3)
            drawPathCartesianTicks(param1Canvas, f1 - 0.0F, f2 - 0.0F); 
          if (param1Int1 == 6)
            drawPathScreenTicks(param1Canvas, f1 - 0.0F, f2 - 0.0F, bool1, bool2); 
          param1Canvas.drawPath(this.mPath, this.mFillPaint);
        } 
      } 
      float[] arrayOfFloat = this.mPoints;
      if (arrayOfFloat.length > 1) {
        param1Canvas.drawCircle(arrayOfFloat[0], arrayOfFloat[1], 8.0F, this.mPaintKeyframes);
        arrayOfFloat = this.mPoints;
        param1Canvas.drawCircle(arrayOfFloat[arrayOfFloat.length - 2], arrayOfFloat[arrayOfFloat.length - 1], 8.0F, this.mPaintKeyframes);
      } 
    }
    
    private void drawTranslation(Canvas param1Canvas, float param1Float1, float param1Float2, float param1Float3, float param1Float4) {
      param1Canvas.drawRect(param1Float1, param1Float2, param1Float3, param1Float4, this.mPaintGraph);
      param1Canvas.drawLine(param1Float1, param1Float2, param1Float3, param1Float4, this.mPaintGraph);
    }
    
    public void draw(Canvas param1Canvas, HashMap<View, MotionController> param1HashMap, int param1Int1, int param1Int2) {
      if (param1HashMap != null && param1HashMap.size() != 0) {
        param1Canvas.save();
        if (!MotionLayout.this.isInEditMode() && (param1Int2 & 0x1) == 2) {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append(MotionLayout.this.getContext().getResources().getResourceName(MotionLayout.this.mEndState));
          stringBuilder.append(":");
          stringBuilder.append(MotionLayout.this.getProgress());
          String str = stringBuilder.toString();
          param1Canvas.drawText(str, 10.0F, (MotionLayout.this.getHeight() - 30), this.mTextPaint);
          param1Canvas.drawText(str, 11.0F, (MotionLayout.this.getHeight() - 29), this.mPaint);
        } 
        for (MotionController motionController : param1HashMap.values()) {
          int i = motionController.getDrawPath();
          int j = i;
          if (param1Int2 > 0) {
            j = i;
            if (i == 0)
              j = 1; 
          } 
          if (j == 0)
            continue; 
          this.mKeyFrameCount = motionController.buildKeyFrames(this.mKeyFramePoints, this.mPathMode);
          if (j >= 1) {
            i = param1Int1 / 16;
            float[] arrayOfFloat = this.mPoints;
            if (arrayOfFloat == null || arrayOfFloat.length != i * 2) {
              this.mPoints = new float[i * 2];
              this.mPath = new Path();
            } 
            int k = this.mShadowTranslate;
            param1Canvas.translate(k, k);
            this.mPaint.setColor(1996488704);
            this.mFillPaint.setColor(1996488704);
            this.mPaintKeyframes.setColor(1996488704);
            this.mPaintGraph.setColor(1996488704);
            motionController.buildPath(this.mPoints, i);
            drawAll(param1Canvas, j, this.mKeyFrameCount, motionController);
            this.mPaint.setColor(-21965);
            this.mPaintKeyframes.setColor(-2067046);
            this.mFillPaint.setColor(-2067046);
            this.mPaintGraph.setColor(-13391360);
            i = this.mShadowTranslate;
            param1Canvas.translate(-i, -i);
            drawAll(param1Canvas, j, this.mKeyFrameCount, motionController);
            if (j == 5)
              drawRectangle(param1Canvas, motionController); 
          } 
        } 
        param1Canvas.restore();
      } 
    }
    
    public void drawAll(Canvas param1Canvas, int param1Int1, int param1Int2, MotionController param1MotionController) {
      if (param1Int1 == 4)
        drawPathAsConfigured(param1Canvas); 
      if (param1Int1 == 2)
        drawPathRelative(param1Canvas); 
      if (param1Int1 == 3)
        drawPathCartesian(param1Canvas); 
      drawBasicPath(param1Canvas);
      drawTicks(param1Canvas, param1Int1, param1Int2, param1MotionController);
    }
    
    void getTextBounds(String param1String, Paint param1Paint) {
      param1Paint.getTextBounds(param1String, 0, param1String.length(), this.mBounds);
    }
  }
  
  class Model {
    ConstraintSet mEnd = null;
    
    int mEndId;
    
    ConstraintWidgetContainer mLayoutEnd = new ConstraintWidgetContainer();
    
    ConstraintWidgetContainer mLayoutStart = new ConstraintWidgetContainer();
    
    ConstraintSet mStart = null;
    
    int mStartId;
    
    private void debugLayout(String param1String, ConstraintWidgetContainer param1ConstraintWidgetContainer) {
      View view = (View)param1ConstraintWidgetContainer.getCompanionWidget();
      StringBuilder stringBuilder2 = new StringBuilder();
      stringBuilder2.append(param1String);
      stringBuilder2.append(" ");
      stringBuilder2.append(Debug.getName(view));
      String str = stringBuilder2.toString();
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append(str);
      stringBuilder1.append("  ========= ");
      stringBuilder1.append(param1ConstraintWidgetContainer);
      Log.v("MotionLayout", stringBuilder1.toString());
      int i = param1ConstraintWidgetContainer.getChildren().size();
      for (byte b = 0; b < i; b++) {
        stringBuilder1 = new StringBuilder();
        stringBuilder1.append(str);
        stringBuilder1.append("[");
        stringBuilder1.append(b);
        stringBuilder1.append("] ");
        String str3 = stringBuilder1.toString();
        ConstraintWidget constraintWidget = param1ConstraintWidgetContainer.getChildren().get(b);
        StringBuilder stringBuilder4 = new StringBuilder();
        stringBuilder4.append("");
        ConstraintAnchor constraintAnchor = constraintWidget.mTop.mTarget;
        String str2 = "_";
        if (constraintAnchor != null) {
          str1 = "T";
        } else {
          str1 = "_";
        } 
        stringBuilder4.append(str1);
        String str1 = stringBuilder4.toString();
        stringBuilder4 = new StringBuilder();
        stringBuilder4.append(str1);
        if (constraintWidget.mBottom.mTarget != null) {
          str1 = "B";
        } else {
          str1 = "_";
        } 
        stringBuilder4.append(str1);
        str1 = stringBuilder4.toString();
        stringBuilder4 = new StringBuilder();
        stringBuilder4.append(str1);
        if (constraintWidget.mLeft.mTarget != null) {
          str1 = "L";
        } else {
          str1 = "_";
        } 
        stringBuilder4.append(str1);
        str1 = stringBuilder4.toString();
        stringBuilder4 = new StringBuilder();
        stringBuilder4.append(str1);
        str1 = str2;
        if (constraintWidget.mRight.mTarget != null)
          str1 = "R"; 
        stringBuilder4.append(str1);
        String str4 = stringBuilder4.toString();
        View view1 = (View)constraintWidget.getCompanionWidget();
        str2 = Debug.getName(view1);
        str1 = str2;
        if (view1 instanceof TextView) {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append(str2);
          stringBuilder.append("(");
          stringBuilder.append(((TextView)view1).getText());
          stringBuilder.append(")");
          str1 = stringBuilder.toString();
        } 
        StringBuilder stringBuilder3 = new StringBuilder();
        stringBuilder3.append(str3);
        stringBuilder3.append("  ");
        stringBuilder3.append(str1);
        stringBuilder3.append(" ");
        stringBuilder3.append(constraintWidget);
        stringBuilder3.append(" ");
        stringBuilder3.append(str4);
        Log.v("MotionLayout", stringBuilder3.toString());
      } 
      stringBuilder1 = new StringBuilder();
      stringBuilder1.append(str);
      stringBuilder1.append(" done. ");
      Log.v("MotionLayout", stringBuilder1.toString());
    }
    
    private void debugLayoutParam(String param1String, ConstraintLayout.LayoutParams param1LayoutParams) {
      StringBuilder stringBuilder2 = new StringBuilder();
      stringBuilder2.append(" ");
      if (param1LayoutParams.startToStart != -1) {
        str2 = "SS";
      } else {
        str2 = "__";
      } 
      stringBuilder2.append(str2);
      String str2 = stringBuilder2.toString();
      StringBuilder stringBuilder3 = new StringBuilder();
      stringBuilder3.append(str2);
      int i = param1LayoutParams.startToEnd;
      String str1 = "|__";
      if (i != -1) {
        str2 = "|SE";
      } else {
        str2 = "|__";
      } 
      stringBuilder3.append(str2);
      str2 = stringBuilder3.toString();
      stringBuilder3 = new StringBuilder();
      stringBuilder3.append(str2);
      if (param1LayoutParams.endToStart != -1) {
        str2 = "|ES";
      } else {
        str2 = "|__";
      } 
      stringBuilder3.append(str2);
      str2 = stringBuilder3.toString();
      stringBuilder3 = new StringBuilder();
      stringBuilder3.append(str2);
      if (param1LayoutParams.endToEnd != -1) {
        str2 = "|EE";
      } else {
        str2 = "|__";
      } 
      stringBuilder3.append(str2);
      str2 = stringBuilder3.toString();
      stringBuilder3 = new StringBuilder();
      stringBuilder3.append(str2);
      if (param1LayoutParams.leftToLeft != -1) {
        str2 = "|LL";
      } else {
        str2 = "|__";
      } 
      stringBuilder3.append(str2);
      str2 = stringBuilder3.toString();
      stringBuilder3 = new StringBuilder();
      stringBuilder3.append(str2);
      if (param1LayoutParams.leftToRight != -1) {
        str2 = "|LR";
      } else {
        str2 = "|__";
      } 
      stringBuilder3.append(str2);
      str2 = stringBuilder3.toString();
      stringBuilder3 = new StringBuilder();
      stringBuilder3.append(str2);
      if (param1LayoutParams.rightToLeft != -1) {
        str2 = "|RL";
      } else {
        str2 = "|__";
      } 
      stringBuilder3.append(str2);
      str2 = stringBuilder3.toString();
      stringBuilder3 = new StringBuilder();
      stringBuilder3.append(str2);
      if (param1LayoutParams.rightToRight != -1) {
        str2 = "|RR";
      } else {
        str2 = "|__";
      } 
      stringBuilder3.append(str2);
      str2 = stringBuilder3.toString();
      stringBuilder3 = new StringBuilder();
      stringBuilder3.append(str2);
      if (param1LayoutParams.topToTop != -1) {
        str2 = "|TT";
      } else {
        str2 = "|__";
      } 
      stringBuilder3.append(str2);
      str2 = stringBuilder3.toString();
      stringBuilder3 = new StringBuilder();
      stringBuilder3.append(str2);
      if (param1LayoutParams.topToBottom != -1) {
        str2 = "|TB";
      } else {
        str2 = "|__";
      } 
      stringBuilder3.append(str2);
      str2 = stringBuilder3.toString();
      stringBuilder3 = new StringBuilder();
      stringBuilder3.append(str2);
      if (param1LayoutParams.bottomToTop != -1) {
        str2 = "|BT";
      } else {
        str2 = "|__";
      } 
      stringBuilder3.append(str2);
      str2 = stringBuilder3.toString();
      stringBuilder3 = new StringBuilder();
      stringBuilder3.append(str2);
      str2 = str1;
      if (param1LayoutParams.bottomToBottom != -1)
        str2 = "|BB"; 
      stringBuilder3.append(str2);
      str2 = stringBuilder3.toString();
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append(param1String);
      stringBuilder1.append(str2);
      Log.v("MotionLayout", stringBuilder1.toString());
    }
    
    private void debugWidget(String param1String, ConstraintWidget param1ConstraintWidget) {
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append(" ");
      ConstraintAnchor constraintAnchor2 = param1ConstraintWidget.mTop.mTarget;
      String str3 = "B";
      String str4 = "__";
      if (constraintAnchor2 != null) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("T");
        if (param1ConstraintWidget.mTop.mTarget.mType == ConstraintAnchor.Type.TOP) {
          str2 = "T";
        } else {
          str2 = "B";
        } 
        stringBuilder.append(str2);
        str2 = stringBuilder.toString();
      } else {
        str2 = "__";
      } 
      stringBuilder1.append(str2);
      String str2 = stringBuilder1.toString();
      stringBuilder1 = new StringBuilder();
      stringBuilder1.append(str2);
      if (param1ConstraintWidget.mBottom.mTarget != null) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("B");
        str2 = str3;
        if (param1ConstraintWidget.mBottom.mTarget.mType == ConstraintAnchor.Type.TOP)
          str2 = "T"; 
        stringBuilder.append(str2);
        str2 = stringBuilder.toString();
      } else {
        str2 = "__";
      } 
      stringBuilder1.append(str2);
      str2 = stringBuilder1.toString();
      stringBuilder1 = new StringBuilder();
      stringBuilder1.append(str2);
      ConstraintAnchor constraintAnchor1 = param1ConstraintWidget.mLeft.mTarget;
      str3 = "R";
      if (constraintAnchor1 != null) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("L");
        if (param1ConstraintWidget.mLeft.mTarget.mType == ConstraintAnchor.Type.LEFT) {
          str1 = "L";
        } else {
          str1 = "R";
        } 
        stringBuilder.append(str1);
        str1 = stringBuilder.toString();
      } else {
        str1 = "__";
      } 
      stringBuilder1.append(str1);
      String str1 = stringBuilder1.toString();
      stringBuilder1 = new StringBuilder();
      stringBuilder1.append(str1);
      str1 = str4;
      if (param1ConstraintWidget.mRight.mTarget != null) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("R");
        str1 = str3;
        if (param1ConstraintWidget.mRight.mTarget.mType == ConstraintAnchor.Type.LEFT)
          str1 = "L"; 
        stringBuilder.append(str1);
        str1 = stringBuilder.toString();
      } 
      stringBuilder1.append(str1);
      str1 = stringBuilder1.toString();
      StringBuilder stringBuilder2 = new StringBuilder();
      stringBuilder2.append(param1String);
      stringBuilder2.append(str1);
      stringBuilder2.append(" ---  ");
      stringBuilder2.append(param1ConstraintWidget);
      Log.v("MotionLayout", stringBuilder2.toString());
    }
    
    private void setupConstraintWidget(ConstraintWidgetContainer param1ConstraintWidgetContainer, ConstraintSet param1ConstraintSet) {
      SparseArray sparseArray = new SparseArray();
      Constraints.LayoutParams layoutParams = new Constraints.LayoutParams(-2, -2);
      sparseArray.clear();
      sparseArray.put(0, param1ConstraintWidgetContainer);
      sparseArray.put(MotionLayout.this.getId(), param1ConstraintWidgetContainer);
      for (ConstraintWidget constraintWidget : param1ConstraintWidgetContainer.getChildren())
        sparseArray.put(((View)constraintWidget.getCompanionWidget()).getId(), constraintWidget); 
      for (ConstraintWidget constraintWidget : param1ConstraintWidgetContainer.getChildren()) {
        View view = (View)constraintWidget.getCompanionWidget();
        param1ConstraintSet.applyToLayoutParams(view.getId(), (ConstraintLayout.LayoutParams)layoutParams);
        constraintWidget.setWidth(param1ConstraintSet.getWidth(view.getId()));
        constraintWidget.setHeight(param1ConstraintSet.getHeight(view.getId()));
        if (view instanceof ConstraintHelper) {
          param1ConstraintSet.applyToHelper((ConstraintHelper)view, constraintWidget, (ConstraintLayout.LayoutParams)layoutParams, sparseArray);
          if (view instanceof Barrier)
            ((Barrier)view).validateParams(); 
        } 
        if (Build.VERSION.SDK_INT >= 17) {
          layoutParams.resolveLayoutDirection(MotionLayout.this.getLayoutDirection());
        } else {
          layoutParams.resolveLayoutDirection(0);
        } 
        MotionLayout.this.applyConstraintsFromLayoutParams(false, view, constraintWidget, (ConstraintLayout.LayoutParams)layoutParams, sparseArray);
        if (param1ConstraintSet.getVisibilityMode(view.getId()) == 1) {
          constraintWidget.setVisibility(view.getVisibility());
          continue;
        } 
        constraintWidget.setVisibility(param1ConstraintSet.getVisibility(view.getId()));
      } 
      for (ConstraintWidget constraintWidget : param1ConstraintWidgetContainer.getChildren()) {
        if (constraintWidget instanceof VirtualLayout) {
          ConstraintHelper constraintHelper = (ConstraintHelper)constraintWidget.getCompanionWidget();
          Helper helper = (Helper)constraintWidget;
          constraintHelper.updatePreLayout(param1ConstraintWidgetContainer, helper, sparseArray);
          ((VirtualLayout)helper).captureWidgets();
        } 
      } 
    }
    
    public void build() {
      byte b3;
      int i = MotionLayout.this.getChildCount();
      MotionLayout.this.mFrameArrayList.clear();
      byte b1 = 0;
      byte b2 = 0;
      while (true) {
        b3 = b1;
        if (b2 < i) {
          View view = MotionLayout.this.getChildAt(b2);
          MotionController motionController = new MotionController(view);
          MotionLayout.this.mFrameArrayList.put(view, motionController);
          b2++;
          continue;
        } 
        break;
      } 
      while (b3 < i) {
        View view = MotionLayout.this.getChildAt(b3);
        MotionController motionController = MotionLayout.this.mFrameArrayList.get(view);
        if (motionController != null) {
          if (this.mStart != null) {
            ConstraintWidget constraintWidget = getWidget(this.mLayoutStart, view);
            if (constraintWidget != null) {
              motionController.setStartState(constraintWidget, this.mStart);
            } else if (MotionLayout.this.mDebugPath != 0) {
              StringBuilder stringBuilder = new StringBuilder();
              stringBuilder.append(Debug.getLocation());
              stringBuilder.append("no widget for  ");
              stringBuilder.append(Debug.getName(view));
              stringBuilder.append(" (");
              stringBuilder.append(view.getClass().getName());
              stringBuilder.append(")");
              Log.e("MotionLayout", stringBuilder.toString());
            } 
          } 
          if (this.mEnd != null) {
            ConstraintWidget constraintWidget = getWidget(this.mLayoutEnd, view);
            if (constraintWidget != null) {
              motionController.setEndState(constraintWidget, this.mEnd);
            } else if (MotionLayout.this.mDebugPath != 0) {
              StringBuilder stringBuilder = new StringBuilder();
              stringBuilder.append(Debug.getLocation());
              stringBuilder.append("no widget for  ");
              stringBuilder.append(Debug.getName(view));
              stringBuilder.append(" (");
              stringBuilder.append(view.getClass().getName());
              stringBuilder.append(")");
              Log.e("MotionLayout", stringBuilder.toString());
            } 
          } 
        } 
        b3++;
      } 
    }
    
    void copy(ConstraintWidgetContainer param1ConstraintWidgetContainer1, ConstraintWidgetContainer param1ConstraintWidgetContainer2) {
      ArrayList arrayList = param1ConstraintWidgetContainer1.getChildren();
      HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
      hashMap.put(param1ConstraintWidgetContainer1, param1ConstraintWidgetContainer2);
      param1ConstraintWidgetContainer2.getChildren().clear();
      param1ConstraintWidgetContainer2.copy((ConstraintWidget)param1ConstraintWidgetContainer1, hashMap);
      for (ConstraintWidget constraintWidget2 : arrayList) {
        ConstraintWidget constraintWidget1;
        if (constraintWidget2 instanceof Barrier) {
          Barrier barrier = new Barrier();
        } else if (constraintWidget2 instanceof Guideline) {
          Guideline guideline = new Guideline();
        } else if (constraintWidget2 instanceof Flow) {
          Flow flow = new Flow();
        } else if (constraintWidget2 instanceof Helper) {
          HelperWidget helperWidget = new HelperWidget();
        } else {
          constraintWidget1 = new ConstraintWidget();
        } 
        param1ConstraintWidgetContainer2.add(constraintWidget1);
        hashMap.put(constraintWidget2, constraintWidget1);
      } 
      for (ConstraintWidget constraintWidget : arrayList)
        ((ConstraintWidget)hashMap.get(constraintWidget)).copy(constraintWidget, hashMap); 
    }
    
    ConstraintWidget getWidget(ConstraintWidgetContainer param1ConstraintWidgetContainer, View param1View) {
      if (param1ConstraintWidgetContainer.getCompanionWidget() == param1View)
        return (ConstraintWidget)param1ConstraintWidgetContainer; 
      ArrayList<ConstraintWidget> arrayList = param1ConstraintWidgetContainer.getChildren();
      int i = arrayList.size();
      for (byte b = 0; b < i; b++) {
        ConstraintWidget constraintWidget = arrayList.get(b);
        if (constraintWidget.getCompanionWidget() == param1View)
          return constraintWidget; 
      } 
      return null;
    }
    
    void initFrom(ConstraintWidgetContainer param1ConstraintWidgetContainer, ConstraintSet param1ConstraintSet1, ConstraintSet param1ConstraintSet2) {
      this.mStart = param1ConstraintSet1;
      this.mEnd = param1ConstraintSet2;
      this.mLayoutStart = new ConstraintWidgetContainer();
      this.mLayoutEnd = new ConstraintWidgetContainer();
      this.mLayoutStart.setMeasurer(MotionLayout.this.mLayoutWidget.getMeasurer());
      this.mLayoutEnd.setMeasurer(MotionLayout.this.mLayoutWidget.getMeasurer());
      this.mLayoutStart.removeAllChildren();
      this.mLayoutEnd.removeAllChildren();
      copy(MotionLayout.this.mLayoutWidget, this.mLayoutStart);
      copy(MotionLayout.this.mLayoutWidget, this.mLayoutEnd);
      if (MotionLayout.this.mTransitionLastPosition > 0.5D) {
        if (param1ConstraintSet1 != null)
          setupConstraintWidget(this.mLayoutStart, param1ConstraintSet1); 
        setupConstraintWidget(this.mLayoutEnd, param1ConstraintSet2);
      } else {
        setupConstraintWidget(this.mLayoutEnd, param1ConstraintSet2);
        if (param1ConstraintSet1 != null)
          setupConstraintWidget(this.mLayoutStart, param1ConstraintSet1); 
      } 
      this.mLayoutStart.setRtl(MotionLayout.this.isRtl());
      this.mLayoutStart.updateHierarchy();
      this.mLayoutEnd.setRtl(MotionLayout.this.isRtl());
      this.mLayoutEnd.updateHierarchy();
      ViewGroup.LayoutParams layoutParams = MotionLayout.this.getLayoutParams();
      if (layoutParams != null) {
        if (layoutParams.width == -2) {
          this.mLayoutStart.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
          this.mLayoutEnd.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
        } 
        if (layoutParams.height == -2) {
          this.mLayoutStart.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
          this.mLayoutEnd.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
        } 
      } 
    }
    
    public boolean isNotConfiguredWith(int param1Int1, int param1Int2) {
      return (param1Int1 != this.mStartId || param1Int2 != this.mEndId);
    }
    
    public void measure(int param1Int1, int param1Int2) {
      boolean bool1;
      boolean bool2;
      int i = View.MeasureSpec.getMode(param1Int1);
      int j = View.MeasureSpec.getMode(param1Int2);
      MotionLayout motionLayout = MotionLayout.this;
      motionLayout.mWidthMeasureMode = i;
      motionLayout.mHeightMeasureMode = j;
      int k = motionLayout.getOptimizationLevel();
      if (MotionLayout.this.mCurrentState == MotionLayout.this.getStartState()) {
        MotionLayout.this.resolveSystem(this.mLayoutEnd, k, param1Int1, param1Int2);
        if (this.mStart != null)
          MotionLayout.this.resolveSystem(this.mLayoutStart, k, param1Int1, param1Int2); 
      } else {
        if (this.mStart != null)
          MotionLayout.this.resolveSystem(this.mLayoutStart, k, param1Int1, param1Int2); 
        MotionLayout.this.resolveSystem(this.mLayoutEnd, k, param1Int1, param1Int2);
      } 
      if (MotionLayout.this.getParent() instanceof MotionLayout && i == 1073741824 && j == 1073741824) {
        m = 0;
      } else {
        m = 1;
      } 
      if (m) {
        motionLayout = MotionLayout.this;
        motionLayout.mWidthMeasureMode = i;
        motionLayout.mHeightMeasureMode = j;
        if (motionLayout.mCurrentState == MotionLayout.this.getStartState()) {
          MotionLayout.this.resolveSystem(this.mLayoutEnd, k, param1Int1, param1Int2);
          if (this.mStart != null)
            MotionLayout.this.resolveSystem(this.mLayoutStart, k, param1Int1, param1Int2); 
        } else {
          if (this.mStart != null)
            MotionLayout.this.resolveSystem(this.mLayoutStart, k, param1Int1, param1Int2); 
          MotionLayout.this.resolveSystem(this.mLayoutEnd, k, param1Int1, param1Int2);
        } 
        MotionLayout.this.mStartWrapWidth = this.mLayoutStart.getWidth();
        MotionLayout.this.mStartWrapHeight = this.mLayoutStart.getHeight();
        MotionLayout.this.mEndWrapWidth = this.mLayoutEnd.getWidth();
        MotionLayout.this.mEndWrapHeight = this.mLayoutEnd.getHeight();
        motionLayout = MotionLayout.this;
        if (motionLayout.mStartWrapWidth != MotionLayout.this.mEndWrapWidth || MotionLayout.this.mStartWrapHeight != MotionLayout.this.mEndWrapHeight) {
          bool1 = true;
        } else {
          bool1 = false;
        } 
        motionLayout.mMeasureDuringTransition = bool1;
      } 
      int m = MotionLayout.this.mStartWrapWidth;
      k = MotionLayout.this.mStartWrapHeight;
      if (MotionLayout.this.mWidthMeasureMode == Integer.MIN_VALUE || MotionLayout.this.mWidthMeasureMode == 0)
        m = (int)(MotionLayout.this.mStartWrapWidth + MotionLayout.this.mPostInterpolationPosition * (MotionLayout.this.mEndWrapWidth - MotionLayout.this.mStartWrapWidth)); 
      if (MotionLayout.this.mHeightMeasureMode == Integer.MIN_VALUE || MotionLayout.this.mHeightMeasureMode == 0)
        k = (int)(MotionLayout.this.mStartWrapHeight + MotionLayout.this.mPostInterpolationPosition * (MotionLayout.this.mEndWrapHeight - MotionLayout.this.mStartWrapHeight)); 
      if (this.mLayoutStart.isWidthMeasuredTooSmall() || this.mLayoutEnd.isWidthMeasuredTooSmall()) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      if (this.mLayoutStart.isHeightMeasuredTooSmall() || this.mLayoutEnd.isHeightMeasuredTooSmall()) {
        bool2 = true;
      } else {
        bool2 = false;
      } 
      MotionLayout.this.resolveMeasuredDimension(param1Int1, param1Int2, m, k, bool1, bool2);
    }
    
    public void reEvaluateState() {
      measure(MotionLayout.this.mLastWidthMeasureSpec, MotionLayout.this.mLastHeightMeasureSpec);
      MotionLayout.this.setupMotionViews();
    }
    
    public void setMeasuredId(int param1Int1, int param1Int2) {
      this.mStartId = param1Int1;
      this.mEndId = param1Int2;
    }
  }
  
  protected static interface MotionTracker {
    void addMovement(MotionEvent param1MotionEvent);
    
    void clear();
    
    void computeCurrentVelocity(int param1Int);
    
    void computeCurrentVelocity(int param1Int, float param1Float);
    
    float getXVelocity();
    
    float getXVelocity(int param1Int);
    
    float getYVelocity();
    
    float getYVelocity(int param1Int);
    
    void recycle();
  }
  
  private static class MyTracker implements MotionTracker {
    private static MyTracker me = new MyTracker();
    
    VelocityTracker tracker;
    
    public static MyTracker obtain() {
      me.tracker = VelocityTracker.obtain();
      return me;
    }
    
    public void addMovement(MotionEvent param1MotionEvent) {
      VelocityTracker velocityTracker = this.tracker;
      if (velocityTracker != null)
        velocityTracker.addMovement(param1MotionEvent); 
    }
    
    public void clear() {
      this.tracker.clear();
    }
    
    public void computeCurrentVelocity(int param1Int) {
      this.tracker.computeCurrentVelocity(param1Int);
    }
    
    public void computeCurrentVelocity(int param1Int, float param1Float) {
      this.tracker.computeCurrentVelocity(param1Int, param1Float);
    }
    
    public float getXVelocity() {
      return this.tracker.getXVelocity();
    }
    
    public float getXVelocity(int param1Int) {
      return this.tracker.getXVelocity(param1Int);
    }
    
    public float getYVelocity() {
      return this.tracker.getYVelocity();
    }
    
    public float getYVelocity(int param1Int) {
      return getYVelocity(param1Int);
    }
    
    public void recycle() {
      this.tracker.recycle();
      this.tracker = null;
    }
  }
  
  class StateCache {
    final String KeyEndState = "motion.EndState";
    
    final String KeyProgress = "motion.progress";
    
    final String KeyStartState = "motion.StartState";
    
    final String KeyVelocity = "motion.velocity";
    
    int endState = -1;
    
    float mProgress = Float.NaN;
    
    float mVelocity = Float.NaN;
    
    int startState = -1;
    
    void apply() {
      if (this.startState != -1 || this.endState != -1) {
        int i = this.startState;
        if (i == -1) {
          MotionLayout.this.transitionToState(this.endState);
        } else {
          int j = this.endState;
          if (j == -1) {
            MotionLayout.this.setState(i, -1, -1);
          } else {
            MotionLayout.this.setTransition(i, j);
          } 
        } 
        MotionLayout.this.setState(MotionLayout.TransitionState.SETUP);
      } 
      if (Float.isNaN(this.mVelocity)) {
        if (Float.isNaN(this.mProgress))
          return; 
        MotionLayout.this.setProgress(this.mProgress);
        return;
      } 
      MotionLayout.this.setProgress(this.mProgress, this.mVelocity);
      this.mProgress = Float.NaN;
      this.mVelocity = Float.NaN;
      this.startState = -1;
      this.endState = -1;
    }
    
    public Bundle getTransitionState() {
      Bundle bundle = new Bundle();
      bundle.putFloat("motion.progress", this.mProgress);
      bundle.putFloat("motion.velocity", this.mVelocity);
      bundle.putInt("motion.StartState", this.startState);
      bundle.putInt("motion.EndState", this.endState);
      return bundle;
    }
    
    public void recordState() {
      this.endState = MotionLayout.this.mEndState;
      this.startState = MotionLayout.this.mBeginState;
      this.mVelocity = MotionLayout.this.getVelocity();
      this.mProgress = MotionLayout.this.getProgress();
    }
    
    public void setEndState(int param1Int) {
      this.endState = param1Int;
    }
    
    public void setProgress(float param1Float) {
      this.mProgress = param1Float;
    }
    
    public void setStartState(int param1Int) {
      this.startState = param1Int;
    }
    
    public void setTransitionState(Bundle param1Bundle) {
      this.mProgress = param1Bundle.getFloat("motion.progress");
      this.mVelocity = param1Bundle.getFloat("motion.velocity");
      this.startState = param1Bundle.getInt("motion.StartState");
      this.endState = param1Bundle.getInt("motion.EndState");
    }
    
    public void setVelocity(float param1Float) {
      this.mVelocity = param1Float;
    }
  }
  
  public static interface TransitionListener {
    void onTransitionChange(MotionLayout param1MotionLayout, int param1Int1, int param1Int2, float param1Float);
    
    void onTransitionCompleted(MotionLayout param1MotionLayout, int param1Int);
    
    void onTransitionStarted(MotionLayout param1MotionLayout, int param1Int1, int param1Int2);
    
    void onTransitionTrigger(MotionLayout param1MotionLayout, int param1Int, boolean param1Boolean, float param1Float);
  }
  
  enum TransitionState {
    FINISHED, MOVING, SETUP, UNDEFINED;
    
    static {
      MOVING = new TransitionState("MOVING", 2);
      FINISHED = new TransitionState("FINISHED", 3);
      $VALUES = new TransitionState[] { UNDEFINED, SETUP, MOVING, FINISHED };
    }
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/motion/widget/MotionLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */