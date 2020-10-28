package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R;
import androidx.constraintlayout.widget.StateSet;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class MotionScene {
  static final int ANTICIPATE = 4;
  
  static final int BOUNCE = 5;
  
  private static final boolean DEBUG = false;
  
  static final int EASE_IN = 1;
  
  static final int EASE_IN_OUT = 0;
  
  static final int EASE_OUT = 2;
  
  private static final int INTERPOLATOR_REFRENCE_ID = -2;
  
  public static final int LAYOUT_HONOR_REQUEST = 1;
  
  public static final int LAYOUT_IGNORE_REQUEST = 0;
  
  static final int LINEAR = 3;
  
  private static final int SPLINE_STRING = -1;
  
  public static final String TAG = "MotionScene";
  
  static final int TRANSITION_BACKWARD = 0;
  
  static final int TRANSITION_FORWARD = 1;
  
  public static final int UNSET = -1;
  
  private boolean DEBUG_DESKTOP = false;
  
  private ArrayList<Transition> mAbstractTransitionList = new ArrayList<Transition>();
  
  private HashMap<String, Integer> mConstraintSetIdMap = new HashMap<String, Integer>();
  
  private SparseArray<ConstraintSet> mConstraintSetMap = new SparseArray();
  
  Transition mCurrentTransition = null;
  
  private int mDefaultDuration = 400;
  
  private Transition mDefaultTransition = null;
  
  private SparseIntArray mDeriveMap = new SparseIntArray();
  
  private boolean mDisableAutoTransition = false;
  
  private MotionEvent mLastTouchDown;
  
  float mLastTouchX;
  
  float mLastTouchY;
  
  private int mLayoutDuringTransition = 0;
  
  private final MotionLayout mMotionLayout;
  
  private boolean mMotionOutsideRegion = false;
  
  private boolean mRtl;
  
  StateSet mStateSet = null;
  
  private ArrayList<Transition> mTransitionList = new ArrayList<Transition>();
  
  private MotionLayout.MotionTracker mVelocityTracker;
  
  MotionScene(Context paramContext, MotionLayout paramMotionLayout, int paramInt) {
    this.mMotionLayout = paramMotionLayout;
    load(paramContext, paramInt);
    this.mConstraintSetMap.put(R.id.motion_base, new ConstraintSet());
    this.mConstraintSetIdMap.put("motion_base", Integer.valueOf(R.id.motion_base));
  }
  
  public MotionScene(MotionLayout paramMotionLayout) {
    this.mMotionLayout = paramMotionLayout;
  }
  
  private int getId(Context paramContext, String paramString) {
    byte b;
    if (paramString.contains("/")) {
      String str = paramString.substring(paramString.indexOf('/') + 1);
      int j = paramContext.getResources().getIdentifier(str, "id", paramContext.getPackageName());
      b = j;
      if (this.DEBUG_DESKTOP) {
        PrintStream printStream = System.out;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("id getMap res = ");
        stringBuilder.append(j);
        printStream.println(stringBuilder.toString());
        b = j;
      } 
    } else {
      b = -1;
    } 
    int i = b;
    if (b == -1)
      if (paramString != null && paramString.length() > 1) {
        i = Integer.parseInt(paramString.substring(1));
      } else {
        Log.e("MotionScene", "error in parsing id");
        i = b;
      }  
    return i;
  }
  
  private int getIndex(Transition paramTransition) {
    int i = paramTransition.mId;
    if (i != -1) {
      for (byte b = 0; b < this.mTransitionList.size(); b++) {
        if ((this.mTransitionList.get(b)).mId == i)
          return b; 
      } 
      return -1;
    } 
    throw new IllegalArgumentException("The transition must have an id");
  }
  
  private int getRealID(int paramInt) {
    StateSet stateSet = this.mStateSet;
    if (stateSet != null) {
      int i = stateSet.stateGetConstraintID(paramInt, -1, -1);
      if (i != -1)
        return i; 
    } 
    return paramInt;
  }
  
  private boolean hasCycleDependency(int paramInt) {
    int i = this.mDeriveMap.get(paramInt);
    for (int j = this.mDeriveMap.size(); i > 0; j--) {
      if (i == paramInt)
        return true; 
      if (j < 0)
        return true; 
      i = this.mDeriveMap.get(i);
    } 
    return false;
  }
  
  private boolean isProcessingTouch() {
    boolean bool;
    if (this.mVelocityTracker != null) {
      bool = true;
    } else {
      bool = false;
    } 
    return bool;
  }
  
  private void load(Context paramContext, int paramInt) {
    XmlResourceParser xmlResourceParser = paramContext.getResources().getXml(paramInt);
    Transition transition = null;
    try {
      int i;
      for (i = xmlResourceParser.getEventType();; i = xmlResourceParser.next()) {
        boolean bool = true;
        if (i != 1) {
          if (i != 0) {
            if (i == 2) {
              KeyFrames keyFrames;
              StateSet stateSet;
              TouchResponse touchResponse;
              ArrayList<Transition> arrayList;
              StringBuilder stringBuilder;
              String str = xmlResourceParser.getName();
              if (this.DEBUG_DESKTOP) {
                PrintStream printStream = System.out;
                StringBuilder stringBuilder1 = new StringBuilder();
                this();
                stringBuilder1.append("parsing = ");
                stringBuilder1.append(str);
                printStream.println(stringBuilder1.toString());
              } 
              i = str.hashCode();
              switch (i) {
                default:
                  i = -1;
                  break;
                case 1382829617:
                  if (str.equals("StateSet")) {
                    i = 4;
                    break;
                  } 
                case 793277014:
                  if (str.equals("MotionScene")) {
                    i = 0;
                    break;
                  } 
                case 327855227:
                  if (str.equals("OnSwipe")) {
                    i = 2;
                    break;
                  } 
                case 312750793:
                  if (str.equals("OnClick")) {
                    i = 3;
                    break;
                  } 
                case 269306229:
                  if (str.equals("Transition")) {
                    i = bool;
                    break;
                  } 
                case -1239391468:
                  if (str.equals("KeyFrameSet")) {
                    i = 6;
                    break;
                  } 
                case -1349929691:
                  if (str.equals("ConstraintSet")) {
                    i = 5;
                    break;
                  } 
              } 
              switch (i) {
                default:
                  stringBuilder = new StringBuilder();
                  this();
                  stringBuilder.append("WARNING UNKNOWN ATTRIBUTE ");
                  stringBuilder.append(str);
                  Log.v("MotionScene", stringBuilder.toString());
                  i = xmlResourceParser.next();
                  continue;
                case 6:
                  keyFrames = new KeyFrames();
                  this(paramContext, (XmlPullParser)xmlResourceParser);
                  transition.mKeyFramesList.add(keyFrames);
                  break;
                case 5:
                  parseConstraintSet(paramContext, (XmlPullParser)xmlResourceParser);
                  break;
                case 4:
                  stateSet = new StateSet();
                  this(paramContext, (XmlPullParser)xmlResourceParser);
                  this.mStateSet = stateSet;
                  break;
                case 3:
                  transition.addOnClick(paramContext, (XmlPullParser)xmlResourceParser);
                  break;
                case 2:
                  if (transition == null) {
                    String str1 = paramContext.getResources().getResourceEntryName(paramInt);
                    i = xmlResourceParser.getLineNumber();
                    StringBuilder stringBuilder1 = new StringBuilder();
                    this();
                    stringBuilder1.append(" OnSwipe (");
                    stringBuilder1.append(str1);
                    stringBuilder1.append(".xml:");
                    stringBuilder1.append(i);
                    stringBuilder1.append(")");
                    Log.v("MotionScene", stringBuilder1.toString());
                  } 
                  touchResponse = new TouchResponse();
                  this(paramContext, this.mMotionLayout, (XmlPullParser)xmlResourceParser);
                  Transition.access$202(transition, touchResponse);
                  break;
                case 1:
                  arrayList = this.mTransitionList;
                  transition = new Transition();
                  this(this, paramContext, (XmlPullParser)xmlResourceParser);
                  arrayList.add(transition);
                  if (this.mCurrentTransition == null && !transition.mIsAbstract) {
                    this.mCurrentTransition = transition;
                    if (this.mCurrentTransition != null && this.mCurrentTransition.mTouchResponse != null)
                      this.mCurrentTransition.mTouchResponse.setRTL(this.mRtl); 
                  } 
                  if (transition.mIsAbstract) {
                    if (transition.mConstraintSetEnd == -1) {
                      this.mDefaultTransition = transition;
                    } else {
                      this.mAbstractTransitionList.add(transition);
                    } 
                    this.mTransitionList.remove(transition);
                  } 
                  break;
                case 0:
                  parseMotionSceneTags(paramContext, (XmlPullParser)xmlResourceParser);
                  break;
              } 
            } 
          } else {
            xmlResourceParser.getName();
          } 
        } else {
          break;
        } 
      } 
    } catch (XmlPullParserException xmlPullParserException) {
      xmlPullParserException.printStackTrace();
    } catch (IOException iOException) {
      iOException.printStackTrace();
    } 
  }
  
  private void parseConstraintSet(Context paramContext, XmlPullParser paramXmlPullParser) {
    // Byte code:
    //   0: new androidx/constraintlayout/widget/ConstraintSet
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore_3
    //   8: aload_3
    //   9: iconst_0
    //   10: invokevirtual setForceId : (Z)V
    //   13: aload_2
    //   14: invokeinterface getAttributeCount : ()I
    //   19: istore #4
    //   21: iconst_0
    //   22: istore #5
    //   24: iconst_m1
    //   25: istore #6
    //   27: iconst_m1
    //   28: istore #7
    //   30: iload #5
    //   32: iload #4
    //   34: if_icmpge -> 226
    //   37: aload_2
    //   38: iload #5
    //   40: invokeinterface getAttributeName : (I)Ljava/lang/String;
    //   45: astore #8
    //   47: aload_2
    //   48: iload #5
    //   50: invokeinterface getAttributeValue : (I)Ljava/lang/String;
    //   55: astore #9
    //   57: aload_0
    //   58: getfield DEBUG_DESKTOP : Z
    //   61: ifeq -> 105
    //   64: getstatic java/lang/System.out : Ljava/io/PrintStream;
    //   67: astore #10
    //   69: new java/lang/StringBuilder
    //   72: dup
    //   73: invokespecial <init> : ()V
    //   76: astore #11
    //   78: aload #11
    //   80: ldc_w 'id string = '
    //   83: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: pop
    //   87: aload #11
    //   89: aload #9
    //   91: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: pop
    //   95: aload #10
    //   97: aload #11
    //   99: invokevirtual toString : ()Ljava/lang/String;
    //   102: invokevirtual println : (Ljava/lang/String;)V
    //   105: aload #8
    //   107: invokevirtual hashCode : ()I
    //   110: istore #12
    //   112: iload #12
    //   114: ldc_w -1496482599
    //   117: if_icmpeq -> 147
    //   120: iload #12
    //   122: sipush #3355
    //   125: if_icmpeq -> 131
    //   128: goto -> 164
    //   131: aload #8
    //   133: ldc 'id'
    //   135: invokevirtual equals : (Ljava/lang/Object;)Z
    //   138: ifeq -> 164
    //   141: iconst_0
    //   142: istore #12
    //   144: goto -> 167
    //   147: aload #8
    //   149: ldc_w 'deriveConstraintsFrom'
    //   152: invokevirtual equals : (Ljava/lang/Object;)Z
    //   155: ifeq -> 164
    //   158: iconst_1
    //   159: istore #12
    //   161: goto -> 167
    //   164: iconst_m1
    //   165: istore #12
    //   167: iload #12
    //   169: ifeq -> 193
    //   172: iload #12
    //   174: iconst_1
    //   175: if_icmpeq -> 181
    //   178: goto -> 220
    //   181: aload_0
    //   182: aload_1
    //   183: aload #9
    //   185: invokespecial getId : (Landroid/content/Context;Ljava/lang/String;)I
    //   188: istore #7
    //   190: goto -> 220
    //   193: aload_0
    //   194: aload_1
    //   195: aload #9
    //   197: invokespecial getId : (Landroid/content/Context;Ljava/lang/String;)I
    //   200: istore #6
    //   202: aload_0
    //   203: getfield mConstraintSetIdMap : Ljava/util/HashMap;
    //   206: aload #9
    //   208: invokestatic stripID : (Ljava/lang/String;)Ljava/lang/String;
    //   211: iload #6
    //   213: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   216: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   219: pop
    //   220: iinc #5, 1
    //   223: goto -> 30
    //   226: iload #6
    //   228: iconst_m1
    //   229: if_icmpeq -> 280
    //   232: aload_0
    //   233: getfield mMotionLayout : Landroidx/constraintlayout/motion/widget/MotionLayout;
    //   236: getfield mDebugPath : I
    //   239: ifeq -> 247
    //   242: aload_3
    //   243: iconst_1
    //   244: invokevirtual setValidateOnParse : (Z)V
    //   247: aload_3
    //   248: aload_1
    //   249: aload_2
    //   250: invokevirtual load : (Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    //   253: iload #7
    //   255: iconst_m1
    //   256: if_icmpeq -> 270
    //   259: aload_0
    //   260: getfield mDeriveMap : Landroid/util/SparseIntArray;
    //   263: iload #6
    //   265: iload #7
    //   267: invokevirtual put : (II)V
    //   270: aload_0
    //   271: getfield mConstraintSetMap : Landroid/util/SparseArray;
    //   274: iload #6
    //   276: aload_3
    //   277: invokevirtual put : (ILjava/lang/Object;)V
    //   280: return
  }
  
  private void parseMotionSceneTags(Context paramContext, XmlPullParser paramXmlPullParser) {
    TypedArray typedArray = paramContext.obtainStyledAttributes(Xml.asAttributeSet(paramXmlPullParser), R.styleable.MotionScene);
    int i = typedArray.getIndexCount();
    for (byte b = 0; b < i; b++) {
      int j = typedArray.getIndex(b);
      if (j == R.styleable.MotionScene_defaultDuration) {
        this.mDefaultDuration = typedArray.getInt(j, this.mDefaultDuration);
      } else if (j == R.styleable.MotionScene_layoutDuringTransition) {
        this.mLayoutDuringTransition = typedArray.getInteger(j, 0);
      } 
    } 
    typedArray.recycle();
  }
  
  private void readConstraintChain(int paramInt) {
    int i = this.mDeriveMap.get(paramInt);
    if (i > 0) {
      StringBuilder stringBuilder;
      readConstraintChain(this.mDeriveMap.get(paramInt));
      ConstraintSet constraintSet1 = (ConstraintSet)this.mConstraintSetMap.get(paramInt);
      ConstraintSet constraintSet2 = (ConstraintSet)this.mConstraintSetMap.get(i);
      if (constraintSet2 == null) {
        stringBuilder = new StringBuilder();
        stringBuilder.append("ERROR! invalid deriveConstraintsFrom: @id/");
        stringBuilder.append(Debug.getName(this.mMotionLayout.getContext(), i));
        Log.e("MotionScene", stringBuilder.toString());
        return;
      } 
      constraintSet1.readFallback((ConstraintSet)stringBuilder);
      this.mDeriveMap.put(paramInt, -1);
    } 
  }
  
  public static String stripID(String paramString) {
    if (paramString == null)
      return ""; 
    int i = paramString.indexOf('/');
    return (i < 0) ? paramString : paramString.substring(i + 1);
  }
  
  public void addOnClickListeners(MotionLayout paramMotionLayout, int paramInt) {
    for (Transition transition : this.mTransitionList) {
      if (transition.mOnClicks.size() > 0) {
        Iterator<Transition.TransitionOnClick> iterator = transition.mOnClicks.iterator();
        while (iterator.hasNext())
          ((Transition.TransitionOnClick)iterator.next()).removeOnClickListeners(paramMotionLayout); 
      } 
    } 
    for (Transition transition : this.mAbstractTransitionList) {
      if (transition.mOnClicks.size() > 0) {
        Iterator<Transition.TransitionOnClick> iterator = transition.mOnClicks.iterator();
        while (iterator.hasNext())
          ((Transition.TransitionOnClick)iterator.next()).removeOnClickListeners(paramMotionLayout); 
      } 
    } 
    for (Transition transition : this.mTransitionList) {
      if (transition.mOnClicks.size() > 0) {
        Iterator<Transition.TransitionOnClick> iterator = transition.mOnClicks.iterator();
        while (iterator.hasNext())
          ((Transition.TransitionOnClick)iterator.next()).addOnClickListeners(paramMotionLayout, paramInt, transition); 
      } 
    } 
    for (Transition transition : this.mAbstractTransitionList) {
      if (transition.mOnClicks.size() > 0) {
        Iterator<Transition.TransitionOnClick> iterator = transition.mOnClicks.iterator();
        while (iterator.hasNext())
          ((Transition.TransitionOnClick)iterator.next()).addOnClickListeners(paramMotionLayout, paramInt, transition); 
      } 
    } 
  }
  
  public void addTransition(Transition paramTransition) {
    int i = getIndex(paramTransition);
    if (i == -1) {
      this.mTransitionList.add(paramTransition);
    } else {
      this.mTransitionList.set(i, paramTransition);
    } 
  }
  
  boolean autoTransition(MotionLayout paramMotionLayout, int paramInt) {
    if (isProcessingTouch())
      return false; 
    if (this.mDisableAutoTransition)
      return false; 
    for (Transition transition : this.mTransitionList) {
      if (transition.mAutoTransition == 0)
        continue; 
      if (paramInt == transition.mConstraintSetStart && (transition.mAutoTransition == 4 || transition.mAutoTransition == 2)) {
        paramMotionLayout.setState(MotionLayout.TransitionState.FINISHED);
        paramMotionLayout.setTransition(transition);
        if (transition.mAutoTransition == 4) {
          paramMotionLayout.transitionToEnd();
          paramMotionLayout.setState(MotionLayout.TransitionState.SETUP);
          paramMotionLayout.setState(MotionLayout.TransitionState.MOVING);
        } else {
          paramMotionLayout.setProgress(1.0F);
          paramMotionLayout.evaluate(true);
          paramMotionLayout.setState(MotionLayout.TransitionState.SETUP);
          paramMotionLayout.setState(MotionLayout.TransitionState.MOVING);
          paramMotionLayout.setState(MotionLayout.TransitionState.FINISHED);
        } 
        return true;
      } 
      if (paramInt == transition.mConstraintSetEnd && (transition.mAutoTransition == 3 || transition.mAutoTransition == 1)) {
        paramMotionLayout.setState(MotionLayout.TransitionState.FINISHED);
        paramMotionLayout.setTransition(transition);
        if (transition.mAutoTransition == 3) {
          paramMotionLayout.transitionToStart();
          paramMotionLayout.setState(MotionLayout.TransitionState.SETUP);
          paramMotionLayout.setState(MotionLayout.TransitionState.MOVING);
        } else {
          paramMotionLayout.setProgress(0.0F);
          paramMotionLayout.evaluate(true);
          paramMotionLayout.setState(MotionLayout.TransitionState.SETUP);
          paramMotionLayout.setState(MotionLayout.TransitionState.MOVING);
          paramMotionLayout.setState(MotionLayout.TransitionState.FINISHED);
        } 
        return true;
      } 
    } 
    return false;
  }
  
  public Transition bestTransitionFor(int paramInt, float paramFloat1, float paramFloat2, MotionEvent paramMotionEvent) {
    if (paramInt != -1) {
      List<Transition> list = getTransitionsWithState(paramInt);
      float f = 0.0F;
      Transition transition = null;
      RectF rectF = new RectF();
      for (Transition transition1 : list) {
        if (!transition1.mDisable && transition1.mTouchResponse != null) {
          transition1.mTouchResponse.setRTL(this.mRtl);
          RectF rectF1 = transition1.mTouchResponse.getTouchRegion((ViewGroup)this.mMotionLayout, rectF);
          if (rectF1 != null && paramMotionEvent != null && !rectF1.contains(paramMotionEvent.getX(), paramMotionEvent.getY()))
            continue; 
          rectF1 = transition1.mTouchResponse.getTouchRegion((ViewGroup)this.mMotionLayout, rectF);
          if (rectF1 != null && paramMotionEvent != null && !rectF1.contains(paramMotionEvent.getX(), paramMotionEvent.getY()))
            continue; 
          float f1 = transition1.mTouchResponse.dot(paramFloat1, paramFloat2);
          if (transition1.mConstraintSetEnd == paramInt) {
            f2 = -1.0F;
          } else {
            f2 = 1.1F;
          } 
          float f2 = f1 * f2;
          if (f2 > f) {
            transition = transition1;
            f = f2;
          } 
        } 
      } 
      return transition;
    } 
    return this.mCurrentTransition;
  }
  
  public void disableAutoTransition(boolean paramBoolean) {
    this.mDisableAutoTransition = paramBoolean;
  }
  
  public int gatPathMotionArc() {
    byte b;
    Transition transition = this.mCurrentTransition;
    if (transition != null) {
      b = transition.mPathMotionArc;
    } else {
      b = -1;
    } 
    return b;
  }
  
  ConstraintSet getConstraintSet(int paramInt) {
    return getConstraintSet(paramInt, -1, -1);
  }
  
  ConstraintSet getConstraintSet(int paramInt1, int paramInt2, int paramInt3) {
    if (this.DEBUG_DESKTOP) {
      PrintStream printStream1 = System.out;
      StringBuilder stringBuilder2 = new StringBuilder();
      stringBuilder2.append("id ");
      stringBuilder2.append(paramInt1);
      printStream1.println(stringBuilder2.toString());
      PrintStream printStream2 = System.out;
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append("size ");
      stringBuilder1.append(this.mConstraintSetMap.size());
      printStream2.println(stringBuilder1.toString());
    } 
    StateSet stateSet = this.mStateSet;
    int i = paramInt1;
    if (stateSet != null) {
      paramInt2 = stateSet.stateGetConstraintID(paramInt1, paramInt2, paramInt3);
      i = paramInt1;
      if (paramInt2 != -1)
        i = paramInt2; 
    } 
    if (this.mConstraintSetMap.get(i) == null) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("Warning could not find ConstraintSet id/");
      stringBuilder.append(Debug.getName(this.mMotionLayout.getContext(), i));
      stringBuilder.append(" In MotionScene");
      Log.e("MotionScene", stringBuilder.toString());
      SparseArray<ConstraintSet> sparseArray = this.mConstraintSetMap;
      return (ConstraintSet)sparseArray.get(sparseArray.keyAt(0));
    } 
    return (ConstraintSet)this.mConstraintSetMap.get(i);
  }
  
  public ConstraintSet getConstraintSet(Context paramContext, String paramString) {
    if (this.DEBUG_DESKTOP) {
      PrintStream printStream = System.out;
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("id ");
      stringBuilder.append(paramString);
      printStream.println(stringBuilder.toString());
      printStream = System.out;
      stringBuilder = new StringBuilder();
      stringBuilder.append("size ");
      stringBuilder.append(this.mConstraintSetMap.size());
      printStream.println(stringBuilder.toString());
    } 
    for (byte b = 0; b < this.mConstraintSetMap.size(); b++) {
      int i = this.mConstraintSetMap.keyAt(b);
      String str = paramContext.getResources().getResourceName(i);
      if (this.DEBUG_DESKTOP) {
        PrintStream printStream = System.out;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Id for <");
        stringBuilder.append(b);
        stringBuilder.append("> is <");
        stringBuilder.append(str);
        stringBuilder.append("> looking for <");
        stringBuilder.append(paramString);
        stringBuilder.append(">");
        printStream.println(stringBuilder.toString());
      } 
      if (paramString.equals(str))
        return (ConstraintSet)this.mConstraintSetMap.get(i); 
    } 
    return null;
  }
  
  public int[] getConstraintSetIds() {
    int[] arrayOfInt = new int[this.mConstraintSetMap.size()];
    for (byte b = 0; b < arrayOfInt.length; b++)
      arrayOfInt[b] = this.mConstraintSetMap.keyAt(b); 
    return arrayOfInt;
  }
  
  public ArrayList<Transition> getDefinedTransitions() {
    return this.mTransitionList;
  }
  
  public int getDuration() {
    Transition transition = this.mCurrentTransition;
    return (transition != null) ? transition.mDuration : this.mDefaultDuration;
  }
  
  int getEndId() {
    Transition transition = this.mCurrentTransition;
    return (transition == null) ? -1 : transition.mConstraintSetEnd;
  }
  
  public Interpolator getInterpolator() {
    switch (this.mCurrentTransition.mDefaultInterpolator) {
      default:
        return null;
      case 5:
        return (Interpolator)new BounceInterpolator();
      case 4:
        return (Interpolator)new AnticipateInterpolator();
      case 3:
        return null;
      case 2:
        return (Interpolator)new DecelerateInterpolator();
      case 1:
        return (Interpolator)new AccelerateInterpolator();
      case 0:
        return (Interpolator)new AccelerateDecelerateInterpolator();
      case -1:
        return new Interpolator() {
            public float getInterpolation(float param1Float) {
              return (float)easing.get(param1Float);
            }
          };
      case -2:
        break;
    } 
    return AnimationUtils.loadInterpolator(this.mMotionLayout.getContext(), this.mCurrentTransition.mDefaultInterpolatorID);
  }
  
  Key getKeyFrame(Context paramContext, int paramInt1, int paramInt2, int paramInt3) {
    Transition transition = this.mCurrentTransition;
    if (transition == null)
      return null; 
    for (KeyFrames keyFrames : transition.mKeyFramesList) {
      for (Integer integer : keyFrames.getKeys()) {
        if (paramInt2 == integer.intValue())
          for (Key key : keyFrames.getKeyFramesForView(integer.intValue())) {
            if (key.mFramePosition == paramInt3 && key.mType == paramInt1)
              return key; 
          }  
      } 
    } 
    return null;
  }
  
  public void getKeyFrames(MotionController paramMotionController) {
    Transition transition = this.mCurrentTransition;
    if (transition == null) {
      transition = this.mDefaultTransition;
      if (transition != null) {
        iterator = transition.mKeyFramesList.iterator();
        while (iterator.hasNext())
          ((KeyFrames)iterator.next()).addFrames(paramMotionController); 
      } 
      return;
    } 
    Iterator<KeyFrames> iterator = ((Transition)iterator).mKeyFramesList.iterator();
    while (iterator.hasNext())
      ((KeyFrames)iterator.next()).addFrames(paramMotionController); 
  }
  
  float getMaxAcceleration() {
    Transition transition = this.mCurrentTransition;
    return (transition != null && transition.mTouchResponse != null) ? this.mCurrentTransition.mTouchResponse.getMaxAcceleration() : 0.0F;
  }
  
  float getMaxVelocity() {
    Transition transition = this.mCurrentTransition;
    return (transition != null && transition.mTouchResponse != null) ? this.mCurrentTransition.mTouchResponse.getMaxVelocity() : 0.0F;
  }
  
  boolean getMoveWhenScrollAtTop() {
    Transition transition = this.mCurrentTransition;
    return (transition != null && transition.mTouchResponse != null) ? this.mCurrentTransition.mTouchResponse.getMoveWhenScrollAtTop() : false;
  }
  
  public float getPathPercent(View paramView, int paramInt) {
    return 0.0F;
  }
  
  float getProgressDirection(float paramFloat1, float paramFloat2) {
    Transition transition = this.mCurrentTransition;
    return (transition != null && transition.mTouchResponse != null) ? this.mCurrentTransition.mTouchResponse.getProgressDirection(paramFloat1, paramFloat2) : 0.0F;
  }
  
  public float getStaggered() {
    Transition transition = this.mCurrentTransition;
    return (transition != null) ? transition.mStagger : 0.0F;
  }
  
  int getStartId() {
    Transition transition = this.mCurrentTransition;
    return (transition == null) ? -1 : transition.mConstraintSetStart;
  }
  
  public Transition getTransitionById(int paramInt) {
    for (Transition transition : this.mTransitionList) {
      if (transition.mId == paramInt)
        return transition; 
    } 
    return null;
  }
  
  int getTransitionDirection(int paramInt) {
    Iterator<Transition> iterator = this.mTransitionList.iterator();
    while (iterator.hasNext()) {
      if ((iterator.next()).mConstraintSetStart == paramInt)
        return 0; 
    } 
    return 1;
  }
  
  public List<Transition> getTransitionsWithState(int paramInt) {
    paramInt = getRealID(paramInt);
    ArrayList<Transition> arrayList = new ArrayList();
    for (Transition transition : this.mTransitionList) {
      if (transition.mConstraintSetStart == paramInt || transition.mConstraintSetEnd == paramInt)
        arrayList.add(transition); 
    } 
    return arrayList;
  }
  
  boolean hasKeyFramePosition(View paramView, int paramInt) {
    Transition transition = this.mCurrentTransition;
    if (transition == null)
      return false; 
    Iterator<KeyFrames> iterator = transition.mKeyFramesList.iterator();
    while (iterator.hasNext()) {
      Iterator<Key> iterator1 = ((KeyFrames)iterator.next()).getKeyFramesForView(paramView.getId()).iterator();
      while (iterator1.hasNext()) {
        if (((Key)iterator1.next()).mFramePosition == paramInt)
          return true; 
      } 
    } 
    return false;
  }
  
  public int lookUpConstraintId(String paramString) {
    return ((Integer)this.mConstraintSetIdMap.get(paramString)).intValue();
  }
  
  public String lookUpConstraintName(int paramInt) {
    for (Map.Entry<String, Integer> entry : this.mConstraintSetIdMap.entrySet()) {
      if (((Integer)entry.getValue()).intValue() == paramInt)
        return (String)entry.getKey(); 
    } 
    return null;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  void processScrollMove(float paramFloat1, float paramFloat2) {
    Transition transition = this.mCurrentTransition;
    if (transition != null && transition.mTouchResponse != null)
      this.mCurrentTransition.mTouchResponse.scrollMove(paramFloat1, paramFloat2); 
  }
  
  void processScrollUp(float paramFloat1, float paramFloat2) {
    Transition transition = this.mCurrentTransition;
    if (transition != null && transition.mTouchResponse != null)
      this.mCurrentTransition.mTouchResponse.scrollUp(paramFloat1, paramFloat2); 
  }
  
  void processTouchEvent(MotionEvent paramMotionEvent, int paramInt, MotionLayout paramMotionLayout) {
    RectF rectF1;
    RectF rectF2 = new RectF();
    if (this.mVelocityTracker == null)
      this.mVelocityTracker = this.mMotionLayout.obtainVelocityTracker(); 
    this.mVelocityTracker.addMovement(paramMotionEvent);
    if (paramInt != -1) {
      int i = paramMotionEvent.getAction();
      boolean bool = false;
      if (i != 0) {
        if (i == 2) {
          MotionEvent motionEvent;
          float f1 = paramMotionEvent.getRawY() - this.mLastTouchY;
          float f2 = paramMotionEvent.getRawX() - this.mLastTouchX;
          if (f2 != 0.0D || f1 != 0.0D) {
            motionEvent = this.mLastTouchDown;
            if (motionEvent == null)
              return; 
          } else {
            return;
          } 
          Transition transition1 = bestTransitionFor(paramInt, f2, f1, motionEvent);
          if (transition1 != null) {
            paramMotionLayout.setTransition(transition1);
            rectF2 = this.mCurrentTransition.mTouchResponse.getTouchRegion((ViewGroup)this.mMotionLayout, rectF2);
            boolean bool1 = bool;
            if (rectF2 != null) {
              bool1 = bool;
              if (!rectF2.contains(this.mLastTouchDown.getX(), this.mLastTouchDown.getY()))
                bool1 = true; 
            } 
            this.mMotionOutsideRegion = bool1;
            this.mCurrentTransition.mTouchResponse.setUpTouchEvent(this.mLastTouchX, this.mLastTouchY);
          } 
        } 
      } else {
        this.mLastTouchX = paramMotionEvent.getRawX();
        this.mLastTouchY = paramMotionEvent.getRawY();
        this.mLastTouchDown = paramMotionEvent;
        if (this.mCurrentTransition.mTouchResponse != null) {
          rectF1 = this.mCurrentTransition.mTouchResponse.getLimitBoundsTo((ViewGroup)this.mMotionLayout, rectF2);
          if (rectF1 != null && !rectF1.contains(this.mLastTouchDown.getX(), this.mLastTouchDown.getY())) {
            this.mLastTouchDown = null;
            return;
          } 
          rectF1 = this.mCurrentTransition.mTouchResponse.getTouchRegion((ViewGroup)this.mMotionLayout, rectF2);
          if (rectF1 != null && !rectF1.contains(this.mLastTouchDown.getX(), this.mLastTouchDown.getY())) {
            this.mMotionOutsideRegion = true;
          } else {
            this.mMotionOutsideRegion = false;
          } 
          this.mCurrentTransition.mTouchResponse.setDown(this.mLastTouchX, this.mLastTouchY);
        } 
        return;
      } 
    } 
    Transition transition = this.mCurrentTransition;
    if (transition != null && transition.mTouchResponse != null && !this.mMotionOutsideRegion)
      this.mCurrentTransition.mTouchResponse.processTouchEvent((MotionEvent)rectF1, this.mVelocityTracker, paramInt, this); 
    this.mLastTouchX = rectF1.getRawX();
    this.mLastTouchY = rectF1.getRawY();
    if (rectF1.getAction() == 1) {
      MotionLayout.MotionTracker motionTracker = this.mVelocityTracker;
      if (motionTracker != null) {
        motionTracker.recycle();
        this.mVelocityTracker = null;
        if (paramMotionLayout.mCurrentState != -1)
          autoTransition(paramMotionLayout, paramMotionLayout.mCurrentState); 
      } 
    } 
  }
  
  void readFallback(MotionLayout paramMotionLayout) {
    int i;
    byte b1 = 0;
    byte b2 = 0;
    while (true) {
      i = b1;
      if (b2 < this.mConstraintSetMap.size()) {
        i = this.mConstraintSetMap.keyAt(b2);
        if (hasCycleDependency(i)) {
          Log.e("MotionScene", "Cannot be derived from yourself");
          return;
        } 
        readConstraintChain(i);
        b2++;
        continue;
      } 
      break;
    } 
    while (i < this.mConstraintSetMap.size()) {
      ((ConstraintSet)this.mConstraintSetMap.valueAt(i)).readFallback(paramMotionLayout);
      i++;
    } 
  }
  
  public void removeTransition(Transition paramTransition) {
    int i = getIndex(paramTransition);
    if (i != -1)
      this.mTransitionList.remove(i); 
  }
  
  public void setConstraintSet(int paramInt, ConstraintSet paramConstraintSet) {
    this.mConstraintSetMap.put(paramInt, paramConstraintSet);
  }
  
  public void setDuration(int paramInt) {
    Transition transition = this.mCurrentTransition;
    if (transition != null) {
      transition.setDuration(paramInt);
    } else {
      this.mDefaultDuration = paramInt;
    } 
  }
  
  public void setKeyframe(View paramView, int paramInt, String paramString, Object paramObject) {
    Transition transition = this.mCurrentTransition;
    if (transition == null)
      return; 
    Iterator<KeyFrames> iterator = transition.mKeyFramesList.iterator();
    while (iterator.hasNext()) {
      Iterator<Key> iterator1 = ((KeyFrames)iterator.next()).getKeyFramesForView(paramView.getId()).iterator();
      while (iterator1.hasNext()) {
        if (((Key)iterator1.next()).mFramePosition == paramInt) {
          if (paramObject != null) {
            float f = ((Float)paramObject).floatValue();
          } else {
            float f = 0.0F;
          } 
          paramString.equalsIgnoreCase("app:PerpendicularPath_percent");
        } 
      } 
    } 
  }
  
  public void setRtl(boolean paramBoolean) {
    this.mRtl = paramBoolean;
    Transition transition = this.mCurrentTransition;
    if (transition != null && transition.mTouchResponse != null)
      this.mCurrentTransition.mTouchResponse.setRTL(this.mRtl); 
  }
  
  void setTransition(int paramInt1, int paramInt2) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mStateSet : Landroidx/constraintlayout/widget/StateSet;
    //   4: astore_3
    //   5: aload_3
    //   6: ifnull -> 63
    //   9: aload_3
    //   10: iload_1
    //   11: iconst_m1
    //   12: iconst_m1
    //   13: invokevirtual stateGetConstraintID : (III)I
    //   16: istore #4
    //   18: iload #4
    //   20: iconst_m1
    //   21: if_icmpeq -> 27
    //   24: goto -> 30
    //   27: iload_1
    //   28: istore #4
    //   30: aload_0
    //   31: getfield mStateSet : Landroidx/constraintlayout/widget/StateSet;
    //   34: iload_2
    //   35: iconst_m1
    //   36: iconst_m1
    //   37: invokevirtual stateGetConstraintID : (III)I
    //   40: istore #5
    //   42: iload #4
    //   44: istore #6
    //   46: iload #5
    //   48: iconst_m1
    //   49: if_icmpeq -> 66
    //   52: iload #4
    //   54: istore #6
    //   56: iload #5
    //   58: istore #4
    //   60: goto -> 69
    //   63: iload_1
    //   64: istore #6
    //   66: iload_2
    //   67: istore #4
    //   69: aload_0
    //   70: getfield mTransitionList : Ljava/util/ArrayList;
    //   73: invokevirtual iterator : ()Ljava/util/Iterator;
    //   76: astore #7
    //   78: aload #7
    //   80: invokeinterface hasNext : ()Z
    //   85: ifeq -> 169
    //   88: aload #7
    //   90: invokeinterface next : ()Ljava/lang/Object;
    //   95: checkcast androidx/constraintlayout/motion/widget/MotionScene$Transition
    //   98: astore_3
    //   99: aload_3
    //   100: invokestatic access$000 : (Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    //   103: iload #4
    //   105: if_icmpne -> 117
    //   108: aload_3
    //   109: invokestatic access$100 : (Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    //   112: iload #6
    //   114: if_icmpeq -> 133
    //   117: aload_3
    //   118: invokestatic access$000 : (Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    //   121: iload_2
    //   122: if_icmpne -> 78
    //   125: aload_3
    //   126: invokestatic access$100 : (Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    //   129: iload_1
    //   130: if_icmpne -> 78
    //   133: aload_0
    //   134: aload_3
    //   135: putfield mCurrentTransition : Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    //   138: aload_0
    //   139: getfield mCurrentTransition : Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    //   142: astore_3
    //   143: aload_3
    //   144: ifnull -> 168
    //   147: aload_3
    //   148: invokestatic access$200 : (Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;
    //   151: ifnull -> 168
    //   154: aload_0
    //   155: getfield mCurrentTransition : Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    //   158: invokestatic access$200 : (Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;
    //   161: aload_0
    //   162: getfield mRtl : Z
    //   165: invokevirtual setRTL : (Z)V
    //   168: return
    //   169: aload_0
    //   170: getfield mDefaultTransition : Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    //   173: astore_3
    //   174: aload_0
    //   175: getfield mAbstractTransitionList : Ljava/util/ArrayList;
    //   178: invokevirtual iterator : ()Ljava/util/Iterator;
    //   181: astore #8
    //   183: aload #8
    //   185: invokeinterface hasNext : ()Z
    //   190: ifeq -> 220
    //   193: aload #8
    //   195: invokeinterface next : ()Ljava/lang/Object;
    //   200: checkcast androidx/constraintlayout/motion/widget/MotionScene$Transition
    //   203: astore #7
    //   205: aload #7
    //   207: invokestatic access$000 : (Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    //   210: iload_2
    //   211: if_icmpne -> 183
    //   214: aload #7
    //   216: astore_3
    //   217: goto -> 183
    //   220: new androidx/constraintlayout/motion/widget/MotionScene$Transition
    //   223: dup
    //   224: aload_0
    //   225: aload_3
    //   226: invokespecial <init> : (Landroidx/constraintlayout/motion/widget/MotionScene;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    //   229: astore_3
    //   230: aload_3
    //   231: iload #6
    //   233: invokestatic access$102 : (Landroidx/constraintlayout/motion/widget/MotionScene$Transition;I)I
    //   236: pop
    //   237: aload_3
    //   238: iload #4
    //   240: invokestatic access$002 : (Landroidx/constraintlayout/motion/widget/MotionScene$Transition;I)I
    //   243: pop
    //   244: iload #6
    //   246: iconst_m1
    //   247: if_icmpeq -> 259
    //   250: aload_0
    //   251: getfield mTransitionList : Ljava/util/ArrayList;
    //   254: aload_3
    //   255: invokevirtual add : (Ljava/lang/Object;)Z
    //   258: pop
    //   259: aload_0
    //   260: aload_3
    //   261: putfield mCurrentTransition : Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    //   264: return
  }
  
  public void setTransition(Transition paramTransition) {
    this.mCurrentTransition = paramTransition;
    paramTransition = this.mCurrentTransition;
    if (paramTransition != null && paramTransition.mTouchResponse != null)
      this.mCurrentTransition.mTouchResponse.setRTL(this.mRtl); 
  }
  
  void setupTouch() {
    Transition transition = this.mCurrentTransition;
    if (transition != null && transition.mTouchResponse != null)
      this.mCurrentTransition.mTouchResponse.setupTouch(); 
  }
  
  boolean supportTouch() {
    Iterator<Transition> iterator = this.mTransitionList.iterator();
    while (true) {
      boolean bool = iterator.hasNext();
      boolean bool1 = true;
      if (bool) {
        if ((iterator.next()).mTouchResponse != null)
          return true; 
        continue;
      } 
      Transition transition = this.mCurrentTransition;
      if (transition == null || transition.mTouchResponse == null)
        bool1 = false; 
      return bool1;
    } 
  }
  
  public boolean validateLayout(MotionLayout paramMotionLayout) {
    boolean bool;
    if (paramMotionLayout == this.mMotionLayout && paramMotionLayout.mScene == this) {
      bool = true;
    } else {
      bool = false;
    } 
    return bool;
  }
  
  public static class Transition {
    public static final int AUTO_ANIMATE_TO_END = 4;
    
    public static final int AUTO_ANIMATE_TO_START = 3;
    
    public static final int AUTO_JUMP_TO_END = 2;
    
    public static final int AUTO_JUMP_TO_START = 1;
    
    public static final int AUTO_NONE = 0;
    
    static final int TRANSITION_FLAG_FIRST_DRAW = 1;
    
    private int mAutoTransition = 0;
    
    private int mConstraintSetEnd = -1;
    
    private int mConstraintSetStart = -1;
    
    private int mDefaultInterpolator = 0;
    
    private int mDefaultInterpolatorID = -1;
    
    private String mDefaultInterpolatorString = null;
    
    private boolean mDisable = false;
    
    private int mDuration = 400;
    
    private int mId = -1;
    
    private boolean mIsAbstract = false;
    
    private ArrayList<KeyFrames> mKeyFramesList = new ArrayList<KeyFrames>();
    
    private int mLayoutDuringTransition = 0;
    
    private final MotionScene mMotionScene;
    
    private ArrayList<TransitionOnClick> mOnClicks = new ArrayList<TransitionOnClick>();
    
    private int mPathMotionArc = -1;
    
    private float mStagger = 0.0F;
    
    private TouchResponse mTouchResponse = null;
    
    private int mTransitionFlags = 0;
    
    public Transition(int param1Int1, MotionScene param1MotionScene, int param1Int2, int param1Int3) {
      this.mId = param1Int1;
      this.mMotionScene = param1MotionScene;
      this.mConstraintSetStart = param1Int2;
      this.mConstraintSetEnd = param1Int3;
      this.mDuration = param1MotionScene.mDefaultDuration;
      this.mLayoutDuringTransition = param1MotionScene.mLayoutDuringTransition;
    }
    
    Transition(MotionScene param1MotionScene, Context param1Context, XmlPullParser param1XmlPullParser) {
      this.mDuration = param1MotionScene.mDefaultDuration;
      this.mLayoutDuringTransition = param1MotionScene.mLayoutDuringTransition;
      this.mMotionScene = param1MotionScene;
      fillFromAttributeList(param1MotionScene, param1Context, Xml.asAttributeSet(param1XmlPullParser));
    }
    
    Transition(MotionScene param1MotionScene, Transition param1Transition) {
      this.mMotionScene = param1MotionScene;
      if (param1Transition != null) {
        this.mPathMotionArc = param1Transition.mPathMotionArc;
        this.mDefaultInterpolator = param1Transition.mDefaultInterpolator;
        this.mDefaultInterpolatorString = param1Transition.mDefaultInterpolatorString;
        this.mDefaultInterpolatorID = param1Transition.mDefaultInterpolatorID;
        this.mDuration = param1Transition.mDuration;
        this.mKeyFramesList = param1Transition.mKeyFramesList;
        this.mStagger = param1Transition.mStagger;
        this.mLayoutDuringTransition = param1Transition.mLayoutDuringTransition;
      } 
    }
    
    private void fill(MotionScene param1MotionScene, Context param1Context, TypedArray param1TypedArray) {
      int i = param1TypedArray.getIndexCount();
      for (byte b = 0; b < i; b++) {
        int j = param1TypedArray.getIndex(b);
        if (j == R.styleable.Transition_constraintSetEnd) {
          this.mConstraintSetEnd = param1TypedArray.getResourceId(j, this.mConstraintSetEnd);
          if ("layout".equals(param1Context.getResources().getResourceTypeName(this.mConstraintSetEnd))) {
            ConstraintSet constraintSet = new ConstraintSet();
            constraintSet.load(param1Context, this.mConstraintSetEnd);
            param1MotionScene.mConstraintSetMap.append(this.mConstraintSetEnd, constraintSet);
          } 
        } else if (j == R.styleable.Transition_constraintSetStart) {
          this.mConstraintSetStart = param1TypedArray.getResourceId(j, this.mConstraintSetStart);
          if ("layout".equals(param1Context.getResources().getResourceTypeName(this.mConstraintSetStart))) {
            ConstraintSet constraintSet = new ConstraintSet();
            constraintSet.load(param1Context, this.mConstraintSetStart);
            param1MotionScene.mConstraintSetMap.append(this.mConstraintSetStart, constraintSet);
          } 
        } else if (j == R.styleable.Transition_motionInterpolator) {
          TypedValue typedValue = param1TypedArray.peekValue(j);
          if (typedValue.type == 1) {
            this.mDefaultInterpolatorID = param1TypedArray.getResourceId(j, -1);
            if (this.mDefaultInterpolatorID != -1)
              this.mDefaultInterpolator = -2; 
          } else if (typedValue.type == 3) {
            this.mDefaultInterpolatorString = param1TypedArray.getString(j);
            if (this.mDefaultInterpolatorString.indexOf("/") > 0) {
              this.mDefaultInterpolatorID = param1TypedArray.getResourceId(j, -1);
              this.mDefaultInterpolator = -2;
            } else {
              this.mDefaultInterpolator = -1;
            } 
          } else {
            this.mDefaultInterpolator = param1TypedArray.getInteger(j, this.mDefaultInterpolator);
          } 
        } else if (j == R.styleable.Transition_duration) {
          this.mDuration = param1TypedArray.getInt(j, this.mDuration);
        } else if (j == R.styleable.Transition_staggered) {
          this.mStagger = param1TypedArray.getFloat(j, this.mStagger);
        } else if (j == R.styleable.Transition_autoTransition) {
          this.mAutoTransition = param1TypedArray.getInteger(j, this.mAutoTransition);
        } else if (j == R.styleable.Transition_android_id) {
          this.mId = param1TypedArray.getResourceId(j, this.mId);
        } else if (j == R.styleable.Transition_transitionDisable) {
          this.mDisable = param1TypedArray.getBoolean(j, this.mDisable);
        } else if (j == R.styleable.Transition_pathMotionArc) {
          this.mPathMotionArc = param1TypedArray.getInteger(j, -1);
        } else if (j == R.styleable.Transition_layoutDuringTransition) {
          this.mLayoutDuringTransition = param1TypedArray.getInteger(j, 0);
        } else if (j == R.styleable.Transition_transitionFlags) {
          this.mTransitionFlags = param1TypedArray.getInteger(j, 0);
        } 
      } 
      if (this.mConstraintSetStart == -1)
        this.mIsAbstract = true; 
    }
    
    private void fillFromAttributeList(MotionScene param1MotionScene, Context param1Context, AttributeSet param1AttributeSet) {
      TypedArray typedArray = param1Context.obtainStyledAttributes(param1AttributeSet, R.styleable.Transition);
      fill(param1MotionScene, param1Context, typedArray);
      typedArray.recycle();
    }
    
    public void addOnClick(Context param1Context, XmlPullParser param1XmlPullParser) {
      this.mOnClicks.add(new TransitionOnClick(param1Context, this, param1XmlPullParser));
    }
    
    public String debugString(Context param1Context) {
      String str1;
      String str2;
      if (this.mConstraintSetStart == -1) {
        str2 = "null";
      } else {
        str2 = param1Context.getResources().getResourceEntryName(this.mConstraintSetStart);
      } 
      if (this.mConstraintSetEnd == -1) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str2);
        stringBuilder.append(" -> null");
        str1 = stringBuilder.toString();
      } else {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str2);
        stringBuilder.append(" -> ");
        stringBuilder.append(str1.getResources().getResourceEntryName(this.mConstraintSetEnd));
        str1 = stringBuilder.toString();
      } 
      return str1;
    }
    
    public int getDuration() {
      return this.mDuration;
    }
    
    public int getEndConstraintSetId() {
      return this.mConstraintSetEnd;
    }
    
    public int getId() {
      return this.mId;
    }
    
    public List<KeyFrames> getKeyFrameList() {
      return this.mKeyFramesList;
    }
    
    public int getLayoutDuringTransition() {
      return this.mLayoutDuringTransition;
    }
    
    public List<TransitionOnClick> getOnClickList() {
      return this.mOnClicks;
    }
    
    public int getPathMotionArc() {
      return this.mPathMotionArc;
    }
    
    public float getStagger() {
      return this.mStagger;
    }
    
    public int getStartConstraintSetId() {
      return this.mConstraintSetStart;
    }
    
    public TouchResponse getTouchResponse() {
      return this.mTouchResponse;
    }
    
    public boolean isEnabled() {
      return this.mDisable ^ true;
    }
    
    public boolean isTransitionFlag(int param1Int) {
      boolean bool;
      if ((param1Int & this.mTransitionFlags) != 0) {
        bool = true;
      } else {
        bool = false;
      } 
      return bool;
    }
    
    public void setDuration(int param1Int) {
      this.mDuration = param1Int;
    }
    
    public void setEnable(boolean param1Boolean) {
      this.mDisable = param1Boolean ^ true;
    }
    
    public void setPathMotionArc(int param1Int) {
      this.mPathMotionArc = param1Int;
    }
    
    public void setStagger(float param1Float) {
      this.mStagger = param1Float;
    }
    
    static class TransitionOnClick implements View.OnClickListener {
      public static final int ANIM_TOGGLE = 17;
      
      public static final int ANIM_TO_END = 1;
      
      public static final int ANIM_TO_START = 16;
      
      public static final int JUMP_TO_END = 256;
      
      public static final int JUMP_TO_START = 4096;
      
      int mMode = 17;
      
      int mTargetId = -1;
      
      private final MotionScene.Transition mTransition;
      
      public TransitionOnClick(Context param2Context, MotionScene.Transition param2Transition, XmlPullParser param2XmlPullParser) {
        this.mTransition = param2Transition;
        TypedArray typedArray = param2Context.obtainStyledAttributes(Xml.asAttributeSet(param2XmlPullParser), R.styleable.OnClick);
        int i = typedArray.getIndexCount();
        for (byte b = 0; b < i; b++) {
          int j = typedArray.getIndex(b);
          if (j == R.styleable.OnClick_targetId) {
            this.mTargetId = typedArray.getResourceId(j, this.mTargetId);
          } else if (j == R.styleable.OnClick_clickAction) {
            this.mMode = typedArray.getInt(j, this.mMode);
          } 
        } 
        typedArray.recycle();
      }
      
      public void addOnClickListeners(MotionLayout param2MotionLayout, int param2Int, MotionScene.Transition param2Transition) {
        View view;
        StringBuilder stringBuilder;
        byte b;
        boolean bool2;
        int i = this.mTargetId;
        if (i != -1)
          view = param2MotionLayout.findViewById(i); 
        if (view == null) {
          stringBuilder = new StringBuilder();
          stringBuilder.append("OnClick could not find id ");
          stringBuilder.append(this.mTargetId);
          Log.e("MotionScene", stringBuilder.toString());
          return;
        } 
        int j = param2Transition.mConstraintSetStart;
        int k = param2Transition.mConstraintSetEnd;
        if (j == -1) {
          stringBuilder.setOnClickListener(this);
          return;
        } 
        i = this.mMode;
        boolean bool1 = true;
        if ((i & 0x1) != 0 && param2Int == j) {
          i = 1;
        } else {
          i = 0;
        } 
        if ((this.mMode & 0x100) != 0 && param2Int == j) {
          b = 1;
        } else {
          b = 0;
        } 
        if ((this.mMode & 0x1) != 0 && param2Int == j) {
          j = 1;
        } else {
          j = 0;
        } 
        if ((this.mMode & 0x10) != 0 && param2Int == k) {
          bool2 = true;
        } else {
          bool2 = false;
        } 
        if ((this.mMode & 0x1000) != 0 && param2Int == k) {
          param2Int = bool1;
        } else {
          param2Int = 0;
        } 
        if ((j | i | b | bool2 | param2Int) != 0)
          stringBuilder.setOnClickListener(this); 
      }
      
      boolean isTransitionViable(MotionScene.Transition param2Transition, MotionLayout param2MotionLayout) {
        MotionScene.Transition transition = this.mTransition;
        boolean bool1 = true;
        boolean bool2 = true;
        if (transition == param2Transition)
          return true; 
        int i = transition.mConstraintSetEnd;
        int j = this.mTransition.mConstraintSetStart;
        if (j == -1) {
          if (param2MotionLayout.mCurrentState == i)
            bool2 = false; 
          return bool2;
        } 
        bool2 = bool1;
        if (param2MotionLayout.mCurrentState != j)
          if (param2MotionLayout.mCurrentState == i) {
            bool2 = bool1;
          } else {
            bool2 = false;
          }  
        return bool2;
      }
      
      public void onClick(View param2View) {
        boolean bool;
        MotionLayout motionLayout = this.mTransition.mMotionScene.mMotionLayout;
        if (!motionLayout.isInteractionEnabled())
          return; 
        if (this.mTransition.mConstraintSetStart == -1) {
          int n = motionLayout.getCurrentState();
          if (n == -1) {
            motionLayout.transitionToState(this.mTransition.mConstraintSetEnd);
            return;
          } 
          MotionScene.Transition transition1 = new MotionScene.Transition(this.mTransition.mMotionScene, this.mTransition);
          MotionScene.Transition.access$102(transition1, n);
          MotionScene.Transition.access$002(transition1, this.mTransition.mConstraintSetEnd);
          motionLayout.setTransition(transition1);
          motionLayout.transitionToEnd();
          return;
        } 
        MotionScene.Transition transition = this.mTransition.mMotionScene.mCurrentTransition;
        int i = this.mMode;
        if ((i & 0x1) != 0 || (i & 0x100) != 0) {
          i = 1;
        } else {
          i = 0;
        } 
        int j = this.mMode;
        if ((j & 0x10) != 0 || (j & 0x1000) != 0) {
          j = 1;
        } else {
          j = 0;
        } 
        if (i != 0 && j != 0) {
          bool = true;
        } else {
          bool = false;
        } 
        int k = i;
        int m = j;
        if (bool) {
          MotionScene.Transition transition1 = this.mTransition.mMotionScene.mCurrentTransition;
          MotionScene.Transition transition2 = this.mTransition;
          if (transition1 != transition2)
            motionLayout.setTransition(transition2); 
          if (motionLayout.getCurrentState() == motionLayout.getEndState() || motionLayout.getProgress() > 0.5F) {
            k = 0;
            m = j;
          } else {
            m = 0;
            k = i;
          } 
        } 
        if (isTransitionViable(transition, motionLayout))
          if (k != 0 && (this.mMode & 0x1) != 0) {
            motionLayout.setTransition(this.mTransition);
            motionLayout.transitionToEnd();
          } else if (m != 0 && (this.mMode & 0x10) != 0) {
            motionLayout.setTransition(this.mTransition);
            motionLayout.transitionToStart();
          } else if (k != 0 && (this.mMode & 0x100) != 0) {
            motionLayout.setTransition(this.mTransition);
            motionLayout.setProgress(1.0F);
          } else if (m != 0 && (this.mMode & 0x1000) != 0) {
            motionLayout.setTransition(this.mTransition);
            motionLayout.setProgress(0.0F);
          }  
      }
      
      public void removeOnClickListeners(MotionLayout param2MotionLayout) {
        StringBuilder stringBuilder;
        int i = this.mTargetId;
        if (i == -1)
          return; 
        View view = param2MotionLayout.findViewById(i);
        if (view == null) {
          stringBuilder = new StringBuilder();
          stringBuilder.append(" (*)  could not find id ");
          stringBuilder.append(this.mTargetId);
          Log.e("MotionScene", stringBuilder.toString());
          return;
        } 
        stringBuilder.setOnClickListener(null);
      }
    }
  }
  
  static class TransitionOnClick implements View.OnClickListener {
    public static final int ANIM_TOGGLE = 17;
    
    public static final int ANIM_TO_END = 1;
    
    public static final int ANIM_TO_START = 16;
    
    public static final int JUMP_TO_END = 256;
    
    public static final int JUMP_TO_START = 4096;
    
    int mMode = 17;
    
    int mTargetId = -1;
    
    private final MotionScene.Transition mTransition;
    
    public TransitionOnClick(Context param1Context, MotionScene.Transition param1Transition, XmlPullParser param1XmlPullParser) {
      this.mTransition = param1Transition;
      TypedArray typedArray = param1Context.obtainStyledAttributes(Xml.asAttributeSet(param1XmlPullParser), R.styleable.OnClick);
      int i = typedArray.getIndexCount();
      for (byte b = 0; b < i; b++) {
        int j = typedArray.getIndex(b);
        if (j == R.styleable.OnClick_targetId) {
          this.mTargetId = typedArray.getResourceId(j, this.mTargetId);
        } else if (j == R.styleable.OnClick_clickAction) {
          this.mMode = typedArray.getInt(j, this.mMode);
        } 
      } 
      typedArray.recycle();
    }
    
    public void addOnClickListeners(MotionLayout param1MotionLayout, int param1Int, MotionScene.Transition param1Transition) {
      View view;
      StringBuilder stringBuilder;
      byte b;
      boolean bool2;
      int i = this.mTargetId;
      if (i != -1)
        view = param1MotionLayout.findViewById(i); 
      if (view == null) {
        stringBuilder = new StringBuilder();
        stringBuilder.append("OnClick could not find id ");
        stringBuilder.append(this.mTargetId);
        Log.e("MotionScene", stringBuilder.toString());
        return;
      } 
      int j = param1Transition.mConstraintSetStart;
      int k = param1Transition.mConstraintSetEnd;
      if (j == -1) {
        stringBuilder.setOnClickListener(this);
        return;
      } 
      i = this.mMode;
      boolean bool1 = true;
      if ((i & 0x1) != 0 && param1Int == j) {
        i = 1;
      } else {
        i = 0;
      } 
      if ((this.mMode & 0x100) != 0 && param1Int == j) {
        b = 1;
      } else {
        b = 0;
      } 
      if ((this.mMode & 0x1) != 0 && param1Int == j) {
        j = 1;
      } else {
        j = 0;
      } 
      if ((this.mMode & 0x10) != 0 && param1Int == k) {
        bool2 = true;
      } else {
        bool2 = false;
      } 
      if ((this.mMode & 0x1000) != 0 && param1Int == k) {
        param1Int = bool1;
      } else {
        param1Int = 0;
      } 
      if ((j | i | b | bool2 | param1Int) != 0)
        stringBuilder.setOnClickListener(this); 
    }
    
    boolean isTransitionViable(MotionScene.Transition param1Transition, MotionLayout param1MotionLayout) {
      MotionScene.Transition transition = this.mTransition;
      boolean bool1 = true;
      boolean bool2 = true;
      if (transition == param1Transition)
        return true; 
      int i = transition.mConstraintSetEnd;
      int j = this.mTransition.mConstraintSetStart;
      if (j == -1) {
        if (param1MotionLayout.mCurrentState == i)
          bool2 = false; 
        return bool2;
      } 
      bool2 = bool1;
      if (param1MotionLayout.mCurrentState != j)
        if (param1MotionLayout.mCurrentState == i) {
          bool2 = bool1;
        } else {
          bool2 = false;
        }  
      return bool2;
    }
    
    public void onClick(View param1View) {
      boolean bool;
      MotionLayout motionLayout = this.mTransition.mMotionScene.mMotionLayout;
      if (!motionLayout.isInteractionEnabled())
        return; 
      if (this.mTransition.mConstraintSetStart == -1) {
        int n = motionLayout.getCurrentState();
        if (n == -1) {
          motionLayout.transitionToState(this.mTransition.mConstraintSetEnd);
          return;
        } 
        MotionScene.Transition transition1 = new MotionScene.Transition(this.mTransition.mMotionScene, this.mTransition);
        MotionScene.Transition.access$102(transition1, n);
        MotionScene.Transition.access$002(transition1, this.mTransition.mConstraintSetEnd);
        motionLayout.setTransition(transition1);
        motionLayout.transitionToEnd();
        return;
      } 
      MotionScene.Transition transition = this.mTransition.mMotionScene.mCurrentTransition;
      int i = this.mMode;
      if ((i & 0x1) != 0 || (i & 0x100) != 0) {
        i = 1;
      } else {
        i = 0;
      } 
      int j = this.mMode;
      if ((j & 0x10) != 0 || (j & 0x1000) != 0) {
        j = 1;
      } else {
        j = 0;
      } 
      if (i != 0 && j != 0) {
        bool = true;
      } else {
        bool = false;
      } 
      int k = i;
      int m = j;
      if (bool) {
        MotionScene.Transition transition1 = this.mTransition.mMotionScene.mCurrentTransition;
        MotionScene.Transition transition2 = this.mTransition;
        if (transition1 != transition2)
          motionLayout.setTransition(transition2); 
        if (motionLayout.getCurrentState() == motionLayout.getEndState() || motionLayout.getProgress() > 0.5F) {
          k = 0;
          m = j;
        } else {
          m = 0;
          k = i;
        } 
      } 
      if (isTransitionViable(transition, motionLayout))
        if (k != 0 && (this.mMode & 0x1) != 0) {
          motionLayout.setTransition(this.mTransition);
          motionLayout.transitionToEnd();
        } else if (m != 0 && (this.mMode & 0x10) != 0) {
          motionLayout.setTransition(this.mTransition);
          motionLayout.transitionToStart();
        } else if (k != 0 && (this.mMode & 0x100) != 0) {
          motionLayout.setTransition(this.mTransition);
          motionLayout.setProgress(1.0F);
        } else if (m != 0 && (this.mMode & 0x1000) != 0) {
          motionLayout.setTransition(this.mTransition);
          motionLayout.setProgress(0.0F);
        }  
    }
    
    public void removeOnClickListeners(MotionLayout param1MotionLayout) {
      StringBuilder stringBuilder;
      int i = this.mTargetId;
      if (i == -1)
        return; 
      View view = param1MotionLayout.findViewById(i);
      if (view == null) {
        stringBuilder = new StringBuilder();
        stringBuilder.append(" (*)  could not find id ");
        stringBuilder.append(this.mTargetId);
        Log.e("MotionScene", stringBuilder.toString());
        return;
      } 
      stringBuilder.setOnClickListener(null);
    }
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/motion/widget/MotionScene.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */