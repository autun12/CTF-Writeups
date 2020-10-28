package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.Cache;
import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.analyzer.ChainRun;
import androidx.constraintlayout.solver.widgets.analyzer.HorizontalWidgetRun;
import androidx.constraintlayout.solver.widgets.analyzer.VerticalWidgetRun;
import androidx.constraintlayout.solver.widgets.analyzer.WidgetRun;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class ConstraintWidget {
  public static final int ANCHOR_BASELINE = 4;
  
  public static final int ANCHOR_BOTTOM = 3;
  
  public static final int ANCHOR_LEFT = 0;
  
  public static final int ANCHOR_RIGHT = 1;
  
  public static final int ANCHOR_TOP = 2;
  
  private static final boolean AUTOTAG_CENTER = false;
  
  public static final int CHAIN_PACKED = 2;
  
  public static final int CHAIN_SPREAD = 0;
  
  public static final int CHAIN_SPREAD_INSIDE = 1;
  
  public static float DEFAULT_BIAS = 0.5F;
  
  static final int DIMENSION_HORIZONTAL = 0;
  
  static final int DIMENSION_VERTICAL = 1;
  
  protected static final int DIRECT = 2;
  
  public static final int GONE = 8;
  
  public static final int HORIZONTAL = 0;
  
  public static final int INVISIBLE = 4;
  
  public static final int MATCH_CONSTRAINT_PERCENT = 2;
  
  public static final int MATCH_CONSTRAINT_RATIO = 3;
  
  public static final int MATCH_CONSTRAINT_RATIO_RESOLVED = 4;
  
  public static final int MATCH_CONSTRAINT_SPREAD = 0;
  
  public static final int MATCH_CONSTRAINT_WRAP = 1;
  
  protected static final int SOLVER = 1;
  
  public static final int UNKNOWN = -1;
  
  private static final boolean USE_WRAP_DIMENSION_FOR_SPREAD = false;
  
  public static final int VERTICAL = 1;
  
  public static final int VISIBLE = 0;
  
  private static final int WRAP = -2;
  
  private boolean hasBaseline = false;
  
  public ChainRun horizontalChainRun;
  
  public HorizontalWidgetRun horizontalRun = new HorizontalWidgetRun(this);
  
  private boolean inPlaceholder;
  
  public boolean[] isTerminalWidget = new boolean[] { true, true };
  
  protected ArrayList<ConstraintAnchor> mAnchors = new ArrayList<ConstraintAnchor>();
  
  ConstraintAnchor mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
  
  int mBaselineDistance = 0;
  
  public ConstraintAnchor mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
  
  boolean mBottomHasCentered;
  
  ConstraintAnchor mCenter = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
  
  ConstraintAnchor mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
  
  ConstraintAnchor mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
  
  private float mCircleConstraintAngle = 0.0F;
  
  private Object mCompanionWidget;
  
  private int mContainerItemSkip;
  
  private String mDebugName;
  
  public float mDimensionRatio = 0.0F;
  
  protected int mDimensionRatioSide = -1;
  
  int mDistToBottom;
  
  int mDistToLeft;
  
  int mDistToRight;
  
  int mDistToTop;
  
  boolean mGroupsToSolver;
  
  int mHeight = 0;
  
  float mHorizontalBiasPercent;
  
  boolean mHorizontalChainFixedPosition;
  
  int mHorizontalChainStyle;
  
  ConstraintWidget mHorizontalNextWidget;
  
  public int mHorizontalResolution = -1;
  
  boolean mHorizontalWrapVisited;
  
  private boolean mInVirtuaLayout = false;
  
  public boolean mIsHeightWrapContent;
  
  private boolean[] mIsInBarrier = new boolean[2];
  
  public boolean mIsWidthWrapContent;
  
  public ConstraintAnchor mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
  
  boolean mLeftHasCentered;
  
  public ConstraintAnchor[] mListAnchors = new ConstraintAnchor[] { this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, this.mCenter };
  
  public DimensionBehaviour[] mListDimensionBehaviors = new DimensionBehaviour[] { DimensionBehaviour.FIXED, DimensionBehaviour.FIXED };
  
  protected ConstraintWidget[] mListNextMatchConstraintsWidget;
  
  public int mMatchConstraintDefaultHeight = 0;
  
  public int mMatchConstraintDefaultWidth = 0;
  
  public int mMatchConstraintMaxHeight = 0;
  
  public int mMatchConstraintMaxWidth = 0;
  
  public int mMatchConstraintMinHeight = 0;
  
  public int mMatchConstraintMinWidth = 0;
  
  public float mMatchConstraintPercentHeight = 1.0F;
  
  public float mMatchConstraintPercentWidth = 1.0F;
  
  private int[] mMaxDimension = new int[] { Integer.MAX_VALUE, Integer.MAX_VALUE };
  
  protected int mMinHeight;
  
  protected int mMinWidth;
  
  protected ConstraintWidget[] mNextChainWidget;
  
  protected int mOffsetX = 0;
  
  protected int mOffsetY = 0;
  
  boolean mOptimizerMeasurable;
  
  public ConstraintWidget mParent = null;
  
  int mRelX = 0;
  
  int mRelY = 0;
  
  float mResolvedDimensionRatio = 1.0F;
  
  int mResolvedDimensionRatioSide = -1;
  
  boolean mResolvedHasRatio = false;
  
  public int[] mResolvedMatchConstraintDefault = new int[2];
  
  public ConstraintAnchor mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
  
  boolean mRightHasCentered;
  
  public ConstraintAnchor mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
  
  boolean mTopHasCentered;
  
  private String mType;
  
  float mVerticalBiasPercent;
  
  boolean mVerticalChainFixedPosition;
  
  int mVerticalChainStyle;
  
  ConstraintWidget mVerticalNextWidget;
  
  public int mVerticalResolution = -1;
  
  boolean mVerticalWrapVisited;
  
  private int mVisibility;
  
  public float[] mWeight;
  
  int mWidth = 0;
  
  protected int mX = 0;
  
  protected int mY = 0;
  
  public boolean measured = false;
  
  public WidgetRun[] run = new WidgetRun[2];
  
  public ChainRun verticalChainRun;
  
  public VerticalWidgetRun verticalRun = new VerticalWidgetRun(this);
  
  public int[] wrapMeasure = new int[] { 0, 0, 0, 0 };
  
  public ConstraintWidget() {
    float f = DEFAULT_BIAS;
    this.mHorizontalBiasPercent = f;
    this.mVerticalBiasPercent = f;
    this.mContainerItemSkip = 0;
    this.mVisibility = 0;
    this.mDebugName = null;
    this.mType = null;
    this.mOptimizerMeasurable = false;
    this.mGroupsToSolver = false;
    this.mHorizontalChainStyle = 0;
    this.mVerticalChainStyle = 0;
    this.mWeight = new float[] { -1.0F, -1.0F };
    this.mListNextMatchConstraintsWidget = new ConstraintWidget[] { null, null };
    this.mNextChainWidget = new ConstraintWidget[] { null, null };
    this.mHorizontalNextWidget = null;
    this.mVerticalNextWidget = null;
    addAnchors();
  }
  
  public ConstraintWidget(int paramInt1, int paramInt2) {
    this(0, 0, paramInt1, paramInt2);
  }
  
  public ConstraintWidget(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    float f = DEFAULT_BIAS;
    this.mHorizontalBiasPercent = f;
    this.mVerticalBiasPercent = f;
    this.mContainerItemSkip = 0;
    this.mVisibility = 0;
    this.mDebugName = null;
    this.mType = null;
    this.mOptimizerMeasurable = false;
    this.mGroupsToSolver = false;
    this.mHorizontalChainStyle = 0;
    this.mVerticalChainStyle = 0;
    this.mWeight = new float[] { -1.0F, -1.0F };
    this.mListNextMatchConstraintsWidget = new ConstraintWidget[] { null, null };
    this.mNextChainWidget = new ConstraintWidget[] { null, null };
    this.mHorizontalNextWidget = null;
    this.mVerticalNextWidget = null;
    this.mX = paramInt1;
    this.mY = paramInt2;
    this.mWidth = paramInt3;
    this.mHeight = paramInt4;
    addAnchors();
  }
  
  private void addAnchors() {
    this.mAnchors.add(this.mLeft);
    this.mAnchors.add(this.mTop);
    this.mAnchors.add(this.mRight);
    this.mAnchors.add(this.mBottom);
    this.mAnchors.add(this.mCenterX);
    this.mAnchors.add(this.mCenterY);
    this.mAnchors.add(this.mCenter);
    this.mAnchors.add(this.mBaseline);
  }
  
  private void applyConstraints(LinearSystem paramLinearSystem, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, DimensionBehaviour paramDimensionBehaviour, boolean paramBoolean5, ConstraintAnchor paramConstraintAnchor1, ConstraintAnchor paramConstraintAnchor2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, float paramFloat1, boolean paramBoolean6, boolean paramBoolean7, boolean paramBoolean8, boolean paramBoolean9, int paramInt5, int paramInt6, int paramInt7, int paramInt8, float paramFloat2, boolean paramBoolean10) {
    // Byte code:
    //   0: iload #23
    //   2: istore #27
    //   4: aload_1
    //   5: aload #10
    //   7: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   10: astore #28
    //   12: aload_1
    //   13: aload #11
    //   15: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   18: astore #29
    //   20: aload_1
    //   21: aload #10
    //   23: invokevirtual getTarget : ()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   26: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   29: astore #30
    //   31: aload_1
    //   32: aload #11
    //   34: invokevirtual getTarget : ()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   37: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   40: astore #31
    //   42: invokestatic getMetrics : ()Landroidx/constraintlayout/solver/Metrics;
    //   45: ifnull -> 65
    //   48: invokestatic getMetrics : ()Landroidx/constraintlayout/solver/Metrics;
    //   51: astore #32
    //   53: aload #32
    //   55: aload #32
    //   57: getfield nonresolvedWidgets : J
    //   60: lconst_1
    //   61: ladd
    //   62: putfield nonresolvedWidgets : J
    //   65: aload #10
    //   67: invokevirtual isConnected : ()Z
    //   70: istore #33
    //   72: aload #11
    //   74: invokevirtual isConnected : ()Z
    //   77: istore #34
    //   79: aload_0
    //   80: getfield mCenter : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   83: invokevirtual isConnected : ()Z
    //   86: istore #35
    //   88: iload #33
    //   90: ifeq -> 99
    //   93: iconst_1
    //   94: istore #23
    //   96: goto -> 102
    //   99: iconst_0
    //   100: istore #23
    //   102: iload #23
    //   104: istore #36
    //   106: iload #34
    //   108: ifeq -> 117
    //   111: iload #23
    //   113: iconst_1
    //   114: iadd
    //   115: istore #36
    //   117: iload #36
    //   119: istore #23
    //   121: iload #35
    //   123: ifeq -> 132
    //   126: iload #36
    //   128: iconst_1
    //   129: iadd
    //   130: istore #23
    //   132: iload #17
    //   134: ifeq -> 143
    //   137: iconst_3
    //   138: istore #21
    //   140: goto -> 143
    //   143: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$1.$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour : [I
    //   146: aload #8
    //   148: invokevirtual ordinal : ()I
    //   151: iaload
    //   152: istore #36
    //   154: iload #36
    //   156: iconst_1
    //   157: if_icmpeq -> 178
    //   160: iload #36
    //   162: iconst_2
    //   163: if_icmpeq -> 178
    //   166: iload #36
    //   168: iconst_3
    //   169: if_icmpeq -> 178
    //   172: iload #36
    //   174: iconst_4
    //   175: if_icmpeq -> 184
    //   178: iconst_0
    //   179: istore #36
    //   181: goto -> 196
    //   184: iload #21
    //   186: iconst_4
    //   187: if_icmpne -> 193
    //   190: goto -> 178
    //   193: iconst_1
    //   194: istore #36
    //   196: iload #21
    //   198: istore #37
    //   200: aload_0
    //   201: getfield mVisibility : I
    //   204: bipush #8
    //   206: if_icmpne -> 218
    //   209: iconst_0
    //   210: istore #13
    //   212: iconst_0
    //   213: istore #21
    //   215: goto -> 222
    //   218: iload #36
    //   220: istore #21
    //   222: iload #26
    //   224: ifeq -> 282
    //   227: iload #33
    //   229: ifne -> 253
    //   232: iload #34
    //   234: ifne -> 253
    //   237: iload #35
    //   239: ifne -> 253
    //   242: aload_1
    //   243: aload #28
    //   245: iload #12
    //   247: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;I)V
    //   250: goto -> 282
    //   253: iload #33
    //   255: ifeq -> 282
    //   258: iload #34
    //   260: ifne -> 282
    //   263: aload_1
    //   264: aload #28
    //   266: aload #30
    //   268: aload #10
    //   270: invokevirtual getMargin : ()I
    //   273: bipush #8
    //   275: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   278: pop
    //   279: goto -> 282
    //   282: aload #31
    //   284: astore #8
    //   286: iload #21
    //   288: ifne -> 378
    //   291: iload #9
    //   293: ifeq -> 346
    //   296: aload_1
    //   297: aload #29
    //   299: aload #28
    //   301: iconst_0
    //   302: iconst_3
    //   303: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   306: pop
    //   307: iload #14
    //   309: ifle -> 324
    //   312: aload_1
    //   313: aload #29
    //   315: aload #28
    //   317: iload #14
    //   319: bipush #8
    //   321: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   324: iload #15
    //   326: ldc 2147483647
    //   328: if_icmpge -> 359
    //   331: aload_1
    //   332: aload #29
    //   334: aload #28
    //   336: iload #15
    //   338: bipush #8
    //   340: invokevirtual addLowerThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   343: goto -> 359
    //   346: aload_1
    //   347: aload #29
    //   349: aload #28
    //   351: iload #13
    //   353: bipush #8
    //   355: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   358: pop
    //   359: iload #27
    //   361: istore #12
    //   363: iload #12
    //   365: istore #27
    //   367: iload #24
    //   369: istore #12
    //   371: iload #21
    //   373: istore #24
    //   375: goto -> 828
    //   378: iload #23
    //   380: iconst_2
    //   381: if_icmpeq -> 450
    //   384: iload #17
    //   386: ifne -> 450
    //   389: iload #37
    //   391: iconst_1
    //   392: if_icmpeq -> 400
    //   395: iload #37
    //   397: ifne -> 450
    //   400: iload #27
    //   402: iload #13
    //   404: invokestatic max : (II)I
    //   407: istore #13
    //   409: iload #13
    //   411: istore #12
    //   413: iload #24
    //   415: ifle -> 427
    //   418: iload #24
    //   420: iload #13
    //   422: invokestatic min : (II)I
    //   425: istore #12
    //   427: aload_1
    //   428: aload #29
    //   430: aload #28
    //   432: iload #12
    //   434: bipush #8
    //   436: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   439: pop
    //   440: iconst_0
    //   441: istore #21
    //   443: iload #27
    //   445: istore #12
    //   447: goto -> 363
    //   450: iload #27
    //   452: istore #12
    //   454: iload #27
    //   456: bipush #-2
    //   458: if_icmpne -> 465
    //   461: iload #13
    //   463: istore #12
    //   465: iload #24
    //   467: bipush #-2
    //   469: if_icmpne -> 479
    //   472: iload #13
    //   474: istore #15
    //   476: goto -> 483
    //   479: iload #24
    //   481: istore #15
    //   483: iload #13
    //   485: istore #24
    //   487: iload #13
    //   489: ifle -> 505
    //   492: iload #13
    //   494: istore #24
    //   496: iload #37
    //   498: iconst_1
    //   499: if_icmpeq -> 505
    //   502: iconst_0
    //   503: istore #24
    //   505: iload #24
    //   507: istore #13
    //   509: iload #12
    //   511: ifle -> 535
    //   514: aload_1
    //   515: aload #29
    //   517: aload #28
    //   519: iload #12
    //   521: bipush #8
    //   523: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   526: iload #24
    //   528: iload #12
    //   530: invokestatic max : (II)I
    //   533: istore #13
    //   535: iload #15
    //   537: ifle -> 591
    //   540: iload_3
    //   541: ifeq -> 556
    //   544: iload #37
    //   546: iconst_1
    //   547: if_icmpne -> 556
    //   550: iconst_0
    //   551: istore #24
    //   553: goto -> 559
    //   556: iconst_1
    //   557: istore #24
    //   559: iload #24
    //   561: ifeq -> 579
    //   564: aload_1
    //   565: aload #29
    //   567: aload #28
    //   569: iload #15
    //   571: bipush #8
    //   573: invokevirtual addLowerThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   576: goto -> 579
    //   579: iload #13
    //   581: iload #15
    //   583: invokestatic min : (II)I
    //   586: istore #13
    //   588: goto -> 591
    //   591: iload #37
    //   593: iconst_1
    //   594: if_icmpne -> 680
    //   597: iload_3
    //   598: ifeq -> 617
    //   601: aload_1
    //   602: aload #29
    //   604: aload #28
    //   606: iload #13
    //   608: bipush #8
    //   610: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   613: pop
    //   614: goto -> 673
    //   617: iload #18
    //   619: ifeq -> 649
    //   622: aload_1
    //   623: aload #29
    //   625: aload #28
    //   627: iload #13
    //   629: iconst_5
    //   630: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   633: pop
    //   634: aload_1
    //   635: aload #29
    //   637: aload #28
    //   639: iload #13
    //   641: bipush #8
    //   643: invokevirtual addLowerThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   646: goto -> 673
    //   649: aload_1
    //   650: aload #29
    //   652: aload #28
    //   654: iload #13
    //   656: iconst_5
    //   657: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   660: pop
    //   661: aload_1
    //   662: aload #29
    //   664: aload #28
    //   666: iload #13
    //   668: bipush #8
    //   670: invokevirtual addLowerThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   673: iload #15
    //   675: istore #24
    //   677: goto -> 363
    //   680: iload #37
    //   682: iconst_2
    //   683: if_icmpne -> 813
    //   686: aload #10
    //   688: invokevirtual getType : ()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   691: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.TOP : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   694: if_acmpeq -> 746
    //   697: aload #10
    //   699: invokevirtual getType : ()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   702: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.BOTTOM : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   705: if_acmpne -> 711
    //   708: goto -> 746
    //   711: aload_1
    //   712: aload_0
    //   713: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   716: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.LEFT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   719: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   722: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   725: astore #31
    //   727: aload_1
    //   728: aload_0
    //   729: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   732: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.RIGHT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   735: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   738: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   741: astore #32
    //   743: goto -> 778
    //   746: aload_1
    //   747: aload_0
    //   748: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   751: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.TOP : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   754: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   757: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   760: astore #31
    //   762: aload_1
    //   763: aload_0
    //   764: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   767: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.BOTTOM : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   770: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   773: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   776: astore #32
    //   778: aload_1
    //   779: aload_1
    //   780: invokevirtual createRow : ()Landroidx/constraintlayout/solver/ArrayRow;
    //   783: aload #29
    //   785: aload #28
    //   787: aload #32
    //   789: aload #31
    //   791: fload #25
    //   793: invokevirtual createRowDimensionRatio : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;
    //   796: invokevirtual addConstraint : (Landroidx/constraintlayout/solver/ArrayRow;)V
    //   799: iload #12
    //   801: istore #27
    //   803: iconst_0
    //   804: istore #24
    //   806: iload #15
    //   808: istore #12
    //   810: goto -> 828
    //   813: iconst_1
    //   814: istore #5
    //   816: iload #12
    //   818: istore #27
    //   820: iload #21
    //   822: istore #24
    //   824: iload #15
    //   826: istore #12
    //   828: aload #30
    //   830: astore #32
    //   832: iload #26
    //   834: ifeq -> 1985
    //   837: iload #18
    //   839: ifeq -> 845
    //   842: goto -> 1985
    //   845: iload #33
    //   847: ifne -> 867
    //   850: iload #34
    //   852: ifne -> 867
    //   855: iload #35
    //   857: ifne -> 867
    //   860: aload #8
    //   862: astore #31
    //   864: goto -> 1932
    //   867: iload #33
    //   869: ifeq -> 884
    //   872: iload #34
    //   874: ifne -> 884
    //   877: aload #8
    //   879: astore #31
    //   881: goto -> 1932
    //   884: iload #33
    //   886: ifne -> 936
    //   889: iload #34
    //   891: ifeq -> 936
    //   894: aload_1
    //   895: aload #29
    //   897: aload #8
    //   899: aload #11
    //   901: invokevirtual getMargin : ()I
    //   904: ineg
    //   905: bipush #8
    //   907: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   910: pop
    //   911: aload #8
    //   913: astore #31
    //   915: iload_3
    //   916: ifeq -> 1932
    //   919: aload_1
    //   920: aload #28
    //   922: aload #6
    //   924: iconst_0
    //   925: iconst_5
    //   926: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   929: aload #8
    //   931: astore #31
    //   933: goto -> 1932
    //   936: aload #8
    //   938: astore #31
    //   940: iload #33
    //   942: ifeq -> 1932
    //   945: aload #8
    //   947: astore #31
    //   949: iload #34
    //   951: ifeq -> 1932
    //   954: aload #10
    //   956: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   959: getfield mOwner : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   962: astore #38
    //   964: aload #11
    //   966: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   969: getfield mOwner : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   972: astore #39
    //   974: aload_0
    //   975: invokevirtual getParent : ()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   978: astore #31
    //   980: bipush #6
    //   982: istore #40
    //   984: iload #24
    //   986: ifeq -> 1357
    //   989: iload #37
    //   991: ifne -> 1080
    //   994: iload #12
    //   996: ifne -> 1021
    //   999: iload #27
    //   1001: ifne -> 1021
    //   1004: iconst_0
    //   1005: istore #23
    //   1007: iconst_1
    //   1008: istore #12
    //   1010: bipush #8
    //   1012: istore #13
    //   1014: bipush #8
    //   1016: istore #15
    //   1018: goto -> 1033
    //   1021: iconst_1
    //   1022: istore #23
    //   1024: iconst_0
    //   1025: istore #12
    //   1027: iconst_5
    //   1028: istore #13
    //   1030: iconst_5
    //   1031: istore #15
    //   1033: aload #38
    //   1035: instanceof androidx/constraintlayout/solver/widgets/Barrier
    //   1038: ifne -> 1055
    //   1041: aload #39
    //   1043: instanceof androidx/constraintlayout/solver/widgets/Barrier
    //   1046: ifeq -> 1052
    //   1049: goto -> 1055
    //   1052: goto -> 1058
    //   1055: iconst_4
    //   1056: istore #15
    //   1058: iload #13
    //   1060: istore #36
    //   1062: iconst_0
    //   1063: istore #21
    //   1065: bipush #6
    //   1067: istore #13
    //   1069: iload #12
    //   1071: istore #22
    //   1073: iload #36
    //   1075: istore #12
    //   1077: goto -> 1376
    //   1080: iload #37
    //   1082: iconst_1
    //   1083: if_icmpne -> 1117
    //   1086: bipush #6
    //   1088: istore #12
    //   1090: iconst_0
    //   1091: istore #22
    //   1093: iconst_4
    //   1094: istore #15
    //   1096: iconst_1
    //   1097: istore #21
    //   1099: iconst_1
    //   1100: istore #23
    //   1102: bipush #8
    //   1104: istore #36
    //   1106: iload #12
    //   1108: istore #13
    //   1110: iload #36
    //   1112: istore #12
    //   1114: goto -> 1376
    //   1117: iload #37
    //   1119: iconst_3
    //   1120: if_icmpne -> 1348
    //   1123: aload_0
    //   1124: getfield mResolvedDimensionRatioSide : I
    //   1127: iconst_m1
    //   1128: if_icmpne -> 1165
    //   1131: iload #19
    //   1133: ifeq -> 1152
    //   1136: iload_3
    //   1137: ifeq -> 1146
    //   1140: iconst_5
    //   1141: istore #12
    //   1143: goto -> 1156
    //   1146: iconst_4
    //   1147: istore #12
    //   1149: goto -> 1156
    //   1152: bipush #8
    //   1154: istore #12
    //   1156: iconst_1
    //   1157: istore #22
    //   1159: iconst_5
    //   1160: istore #15
    //   1162: goto -> 1096
    //   1165: iload #17
    //   1167: ifeq -> 1243
    //   1170: iload #22
    //   1172: iconst_2
    //   1173: if_icmpeq -> 1191
    //   1176: iload #22
    //   1178: iconst_1
    //   1179: if_icmpne -> 1185
    //   1182: goto -> 1191
    //   1185: iconst_0
    //   1186: istore #12
    //   1188: goto -> 1194
    //   1191: iconst_1
    //   1192: istore #12
    //   1194: iload #12
    //   1196: ifne -> 1209
    //   1199: bipush #8
    //   1201: istore #13
    //   1203: iconst_5
    //   1204: istore #12
    //   1206: goto -> 1215
    //   1209: iconst_5
    //   1210: istore #13
    //   1212: iconst_4
    //   1213: istore #12
    //   1215: iload #13
    //   1217: istore #36
    //   1219: bipush #6
    //   1221: istore #13
    //   1223: iconst_1
    //   1224: istore #23
    //   1226: iconst_1
    //   1227: istore #21
    //   1229: iconst_1
    //   1230: istore #22
    //   1232: iload #12
    //   1234: istore #15
    //   1236: iload #36
    //   1238: istore #12
    //   1240: goto -> 1376
    //   1243: iload #12
    //   1245: ifle -> 1263
    //   1248: iconst_1
    //   1249: istore #23
    //   1251: iconst_1
    //   1252: istore #21
    //   1254: iconst_1
    //   1255: istore #22
    //   1257: iconst_5
    //   1258: istore #15
    //   1260: goto -> 1369
    //   1263: iload #12
    //   1265: ifne -> 1336
    //   1268: iload #27
    //   1270: ifne -> 1336
    //   1273: iload #19
    //   1275: ifne -> 1294
    //   1278: iconst_1
    //   1279: istore #23
    //   1281: iconst_1
    //   1282: istore #21
    //   1284: iconst_1
    //   1285: istore #22
    //   1287: bipush #8
    //   1289: istore #15
    //   1291: goto -> 1369
    //   1294: aload #38
    //   1296: aload #31
    //   1298: if_acmpeq -> 1314
    //   1301: aload #39
    //   1303: aload #31
    //   1305: if_acmpeq -> 1314
    //   1308: iconst_4
    //   1309: istore #12
    //   1311: goto -> 1317
    //   1314: iconst_5
    //   1315: istore #12
    //   1317: bipush #6
    //   1319: istore #13
    //   1321: iconst_1
    //   1322: istore #23
    //   1324: iconst_1
    //   1325: istore #21
    //   1327: iconst_1
    //   1328: istore #22
    //   1330: iconst_4
    //   1331: istore #15
    //   1333: goto -> 1376
    //   1336: iconst_1
    //   1337: istore #23
    //   1339: iconst_1
    //   1340: istore #21
    //   1342: iconst_1
    //   1343: istore #22
    //   1345: goto -> 1366
    //   1348: iconst_0
    //   1349: istore #23
    //   1351: iconst_0
    //   1352: istore #21
    //   1354: goto -> 1363
    //   1357: iconst_1
    //   1358: istore #23
    //   1360: iconst_1
    //   1361: istore #21
    //   1363: iconst_0
    //   1364: istore #22
    //   1366: iconst_4
    //   1367: istore #15
    //   1369: bipush #6
    //   1371: istore #13
    //   1373: iconst_5
    //   1374: istore #12
    //   1376: iload #21
    //   1378: ifeq -> 1404
    //   1381: aload #32
    //   1383: aload #8
    //   1385: if_acmpne -> 1404
    //   1388: aload #38
    //   1390: aload #31
    //   1392: if_acmpeq -> 1404
    //   1395: iconst_0
    //   1396: istore #21
    //   1398: iconst_0
    //   1399: istore #36
    //   1401: goto -> 1407
    //   1404: iconst_1
    //   1405: istore #36
    //   1407: iload #23
    //   1409: ifeq -> 1456
    //   1412: aload_0
    //   1413: getfield mVisibility : I
    //   1416: bipush #8
    //   1418: if_icmpne -> 1427
    //   1421: iconst_4
    //   1422: istore #13
    //   1424: goto -> 1427
    //   1427: aload_1
    //   1428: aload #28
    //   1430: aload #32
    //   1432: aload #10
    //   1434: invokevirtual getMargin : ()I
    //   1437: fload #16
    //   1439: aload #8
    //   1441: aload #29
    //   1443: aload #11
    //   1445: invokevirtual getMargin : ()I
    //   1448: iload #13
    //   1450: invokevirtual addCentering : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   1453: goto -> 1456
    //   1456: aload #32
    //   1458: astore #30
    //   1460: aload #28
    //   1462: astore #32
    //   1464: aload #39
    //   1466: astore #28
    //   1468: aload_0
    //   1469: getfield mVisibility : I
    //   1472: bipush #8
    //   1474: if_icmpne -> 1478
    //   1477: return
    //   1478: iload #21
    //   1480: ifeq -> 1559
    //   1483: iload_3
    //   1484: ifeq -> 1525
    //   1487: aload #30
    //   1489: aload #8
    //   1491: if_acmpeq -> 1525
    //   1494: iload #24
    //   1496: ifne -> 1525
    //   1499: aload #38
    //   1501: instanceof androidx/constraintlayout/solver/widgets/Barrier
    //   1504: ifne -> 1518
    //   1507: aload #28
    //   1509: instanceof androidx/constraintlayout/solver/widgets/Barrier
    //   1512: ifeq -> 1525
    //   1515: goto -> 1518
    //   1518: bipush #6
    //   1520: istore #12
    //   1522: goto -> 1525
    //   1525: aload_1
    //   1526: aload #32
    //   1528: aload #30
    //   1530: aload #10
    //   1532: invokevirtual getMargin : ()I
    //   1535: iload #12
    //   1537: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   1540: aload_1
    //   1541: aload #29
    //   1543: aload #8
    //   1545: aload #11
    //   1547: invokevirtual getMargin : ()I
    //   1550: ineg
    //   1551: iload #12
    //   1553: invokevirtual addLowerThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   1556: goto -> 1559
    //   1559: iload_3
    //   1560: ifeq -> 1598
    //   1563: iload #20
    //   1565: ifeq -> 1598
    //   1568: aload #38
    //   1570: instanceof androidx/constraintlayout/solver/widgets/Barrier
    //   1573: ifne -> 1598
    //   1576: aload #28
    //   1578: instanceof androidx/constraintlayout/solver/widgets/Barrier
    //   1581: ifne -> 1598
    //   1584: bipush #6
    //   1586: istore #12
    //   1588: bipush #6
    //   1590: istore #15
    //   1592: iconst_1
    //   1593: istore #36
    //   1595: goto -> 1610
    //   1598: iload #15
    //   1600: istore #13
    //   1602: iload #12
    //   1604: istore #15
    //   1606: iload #13
    //   1608: istore #12
    //   1610: iload #36
    //   1612: ifeq -> 1817
    //   1615: iload #22
    //   1617: ifeq -> 1724
    //   1620: iload #19
    //   1622: ifeq -> 1630
    //   1625: iload #4
    //   1627: ifeq -> 1724
    //   1630: aload #31
    //   1632: astore #39
    //   1634: iload #40
    //   1636: istore #13
    //   1638: aload #38
    //   1640: aload #39
    //   1642: if_acmpeq -> 1663
    //   1645: aload #28
    //   1647: aload #39
    //   1649: if_acmpne -> 1659
    //   1652: iload #40
    //   1654: istore #13
    //   1656: goto -> 1663
    //   1659: iload #12
    //   1661: istore #13
    //   1663: aload #38
    //   1665: instanceof androidx/constraintlayout/solver/widgets/Guideline
    //   1668: ifne -> 1679
    //   1671: aload #28
    //   1673: instanceof androidx/constraintlayout/solver/widgets/Guideline
    //   1676: ifeq -> 1682
    //   1679: iconst_5
    //   1680: istore #13
    //   1682: aload #38
    //   1684: instanceof androidx/constraintlayout/solver/widgets/Barrier
    //   1687: ifne -> 1698
    //   1690: aload #28
    //   1692: instanceof androidx/constraintlayout/solver/widgets/Barrier
    //   1695: ifeq -> 1701
    //   1698: iconst_5
    //   1699: istore #13
    //   1701: iload #19
    //   1703: ifeq -> 1712
    //   1706: iconst_5
    //   1707: istore #13
    //   1709: goto -> 1712
    //   1712: iload #13
    //   1714: iload #12
    //   1716: invokestatic max : (II)I
    //   1719: istore #13
    //   1721: goto -> 1728
    //   1724: iload #12
    //   1726: istore #13
    //   1728: iload #13
    //   1730: istore #12
    //   1732: iload_3
    //   1733: ifeq -> 1784
    //   1736: iload #15
    //   1738: iload #13
    //   1740: invokestatic min : (II)I
    //   1743: istore #13
    //   1745: iload #13
    //   1747: istore #12
    //   1749: iload #17
    //   1751: ifeq -> 1784
    //   1754: iload #13
    //   1756: istore #12
    //   1758: iload #19
    //   1760: ifne -> 1784
    //   1763: aload #38
    //   1765: aload #31
    //   1767: if_acmpeq -> 1781
    //   1770: iload #13
    //   1772: istore #12
    //   1774: aload #28
    //   1776: aload #31
    //   1778: if_acmpne -> 1784
    //   1781: iconst_4
    //   1782: istore #12
    //   1784: aload_1
    //   1785: aload #32
    //   1787: aload #30
    //   1789: aload #10
    //   1791: invokevirtual getMargin : ()I
    //   1794: iload #12
    //   1796: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   1799: pop
    //   1800: aload_1
    //   1801: aload #29
    //   1803: aload #8
    //   1805: aload #11
    //   1807: invokevirtual getMargin : ()I
    //   1810: ineg
    //   1811: iload #12
    //   1813: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   1816: pop
    //   1817: iload_3
    //   1818: ifeq -> 1859
    //   1821: aload #6
    //   1823: aload #30
    //   1825: if_acmpne -> 1838
    //   1828: aload #10
    //   1830: invokevirtual getMargin : ()I
    //   1833: istore #12
    //   1835: goto -> 1841
    //   1838: iconst_0
    //   1839: istore #12
    //   1841: aload #30
    //   1843: aload #6
    //   1845: if_acmpeq -> 1859
    //   1848: aload_1
    //   1849: aload #32
    //   1851: aload #6
    //   1853: iload #12
    //   1855: iconst_5
    //   1856: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   1859: aload #8
    //   1861: astore #31
    //   1863: iload_3
    //   1864: ifeq -> 1932
    //   1867: aload #8
    //   1869: astore #31
    //   1871: iload #24
    //   1873: ifeq -> 1932
    //   1876: aload #8
    //   1878: astore #31
    //   1880: iload #14
    //   1882: ifne -> 1932
    //   1885: aload #8
    //   1887: astore #31
    //   1889: iload #27
    //   1891: ifne -> 1932
    //   1894: iload #24
    //   1896: ifeq -> 1919
    //   1899: iload #37
    //   1901: iconst_3
    //   1902: if_icmpne -> 1919
    //   1905: aload_1
    //   1906: aload #29
    //   1908: aload #32
    //   1910: iconst_0
    //   1911: bipush #8
    //   1913: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   1916: goto -> 1936
    //   1919: aload_1
    //   1920: aload #29
    //   1922: aload #32
    //   1924: iconst_0
    //   1925: iconst_5
    //   1926: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   1929: goto -> 1936
    //   1932: aload #31
    //   1934: astore #8
    //   1936: iload_3
    //   1937: ifeq -> 1984
    //   1940: iload #5
    //   1942: ifeq -> 1984
    //   1945: aload #11
    //   1947: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1950: ifnull -> 1963
    //   1953: aload #11
    //   1955: invokevirtual getMargin : ()I
    //   1958: istore #12
    //   1960: goto -> 1966
    //   1963: iconst_0
    //   1964: istore #12
    //   1966: aload #8
    //   1968: aload #7
    //   1970: if_acmpeq -> 1984
    //   1973: aload_1
    //   1974: aload #7
    //   1976: aload #29
    //   1978: iload #12
    //   1980: iconst_5
    //   1981: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   1984: return
    //   1985: iload #23
    //   1987: iconst_2
    //   1988: if_icmpge -> 2132
    //   1991: iload_3
    //   1992: ifeq -> 2132
    //   1995: iload #5
    //   1997: ifeq -> 2132
    //   2000: aload_1
    //   2001: aload #28
    //   2003: aload #6
    //   2005: iconst_0
    //   2006: bipush #8
    //   2008: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   2011: iload_2
    //   2012: ifne -> 2034
    //   2015: aload_0
    //   2016: getfield mBaseline : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2019: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2022: ifnonnull -> 2028
    //   2025: goto -> 2034
    //   2028: iconst_0
    //   2029: istore #13
    //   2031: goto -> 2037
    //   2034: iconst_1
    //   2035: istore #13
    //   2037: iload #13
    //   2039: istore #12
    //   2041: iload_2
    //   2042: ifne -> 2116
    //   2045: iload #13
    //   2047: istore #12
    //   2049: aload_0
    //   2050: getfield mBaseline : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2053: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2056: ifnull -> 2116
    //   2059: aload_0
    //   2060: getfield mBaseline : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2063: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2066: getfield mOwner : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   2069: astore #6
    //   2071: aload #6
    //   2073: getfield mDimensionRatio : F
    //   2076: fconst_0
    //   2077: fcmpl
    //   2078: ifeq -> 2113
    //   2081: aload #6
    //   2083: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   2086: iconst_0
    //   2087: aaload
    //   2088: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   2091: if_acmpne -> 2113
    //   2094: aload #6
    //   2096: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   2099: iconst_1
    //   2100: aaload
    //   2101: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   2104: if_acmpne -> 2113
    //   2107: iconst_1
    //   2108: istore #12
    //   2110: goto -> 2116
    //   2113: iconst_0
    //   2114: istore #12
    //   2116: iload #12
    //   2118: ifeq -> 2132
    //   2121: aload_1
    //   2122: aload #7
    //   2124: aload #29
    //   2126: iconst_0
    //   2127: bipush #8
    //   2129: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   2132: return
  }
  
  private boolean isChainHead(int paramInt) {
    paramInt *= 2;
    ConstraintAnchor constraintAnchor = (this.mListAnchors[paramInt]).mTarget;
    null = true;
    if (constraintAnchor != null) {
      ConstraintAnchor constraintAnchor1 = (this.mListAnchors[paramInt]).mTarget.mTarget;
      ConstraintAnchor[] arrayOfConstraintAnchor = this.mListAnchors;
      if (constraintAnchor1 != arrayOfConstraintAnchor[paramInt])
        if ((arrayOfConstraintAnchor[++paramInt]).mTarget != null && (this.mListAnchors[paramInt]).mTarget.mTarget == this.mListAnchors[paramInt])
          return null;  
    } 
    return false;
  }
  
  boolean addFirst() {
    return (this instanceof VirtualLayout || this instanceof Guideline);
  }
  
  public void addToSolver(LinearSystem paramLinearSystem) {
    // Byte code:
    //   0: aload_0
    //   1: astore_2
    //   2: aload_1
    //   3: aload_2
    //   4: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   7: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   10: astore_3
    //   11: aload_1
    //   12: aload_2
    //   13: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   16: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   19: astore #4
    //   21: aload_1
    //   22: aload_2
    //   23: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   26: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   29: astore #5
    //   31: aload_1
    //   32: aload_2
    //   33: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   36: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   39: astore #6
    //   41: aload_1
    //   42: aload_2
    //   43: getfield mBaseline : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   46: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   49: astore #7
    //   51: getstatic androidx/constraintlayout/solver/LinearSystem.sMetrics : Landroidx/constraintlayout/solver/Metrics;
    //   54: ifnull -> 74
    //   57: getstatic androidx/constraintlayout/solver/LinearSystem.sMetrics : Landroidx/constraintlayout/solver/Metrics;
    //   60: astore #8
    //   62: aload #8
    //   64: aload #8
    //   66: getfield widgets : J
    //   69: lconst_1
    //   70: ladd
    //   71: putfield widgets : J
    //   74: aload_2
    //   75: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   78: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   81: getfield resolved : Z
    //   84: ifeq -> 382
    //   87: aload_2
    //   88: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   91: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   94: getfield resolved : Z
    //   97: ifeq -> 382
    //   100: aload_2
    //   101: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   104: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   107: getfield resolved : Z
    //   110: ifeq -> 382
    //   113: aload_2
    //   114: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   117: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   120: getfield resolved : Z
    //   123: ifeq -> 382
    //   126: getstatic androidx/constraintlayout/solver/LinearSystem.sMetrics : Landroidx/constraintlayout/solver/Metrics;
    //   129: ifnull -> 149
    //   132: getstatic androidx/constraintlayout/solver/LinearSystem.sMetrics : Landroidx/constraintlayout/solver/Metrics;
    //   135: astore #8
    //   137: aload #8
    //   139: aload #8
    //   141: getfield graphSolved : J
    //   144: lconst_1
    //   145: ladd
    //   146: putfield graphSolved : J
    //   149: aload_1
    //   150: aload_3
    //   151: aload_2
    //   152: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   155: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   158: getfield value : I
    //   161: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;I)V
    //   164: aload_1
    //   165: aload #4
    //   167: aload_2
    //   168: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   171: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   174: getfield value : I
    //   177: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;I)V
    //   180: aload_1
    //   181: aload #5
    //   183: aload_2
    //   184: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   187: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   190: getfield value : I
    //   193: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;I)V
    //   196: aload_1
    //   197: aload #6
    //   199: aload_2
    //   200: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   203: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   206: getfield value : I
    //   209: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;I)V
    //   212: aload_1
    //   213: aload #7
    //   215: aload_2
    //   216: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   219: getfield baseline : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   222: getfield value : I
    //   225: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;I)V
    //   228: aload_2
    //   229: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   232: astore #8
    //   234: aload #8
    //   236: ifnull -> 381
    //   239: aload #8
    //   241: ifnull -> 263
    //   244: aload #8
    //   246: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   249: iconst_0
    //   250: aaload
    //   251: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   254: if_acmpne -> 263
    //   257: iconst_1
    //   258: istore #9
    //   260: goto -> 266
    //   263: iconst_0
    //   264: istore #9
    //   266: aload_2
    //   267: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   270: astore #8
    //   272: aload #8
    //   274: ifnull -> 296
    //   277: aload #8
    //   279: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   282: iconst_1
    //   283: aaload
    //   284: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   287: if_acmpne -> 296
    //   290: iconst_1
    //   291: istore #10
    //   293: goto -> 299
    //   296: iconst_0
    //   297: istore #10
    //   299: iload #9
    //   301: ifeq -> 340
    //   304: aload_2
    //   305: getfield isTerminalWidget : [Z
    //   308: iconst_0
    //   309: baload
    //   310: ifeq -> 340
    //   313: aload_0
    //   314: invokevirtual isInHorizontalChain : ()Z
    //   317: ifne -> 340
    //   320: aload_1
    //   321: aload_1
    //   322: aload_2
    //   323: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   326: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   329: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   332: aload #4
    //   334: iconst_0
    //   335: bipush #8
    //   337: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   340: iload #10
    //   342: ifeq -> 381
    //   345: aload_2
    //   346: getfield isTerminalWidget : [Z
    //   349: iconst_1
    //   350: baload
    //   351: ifeq -> 381
    //   354: aload_0
    //   355: invokevirtual isInVerticalChain : ()Z
    //   358: ifne -> 381
    //   361: aload_1
    //   362: aload_1
    //   363: aload_2
    //   364: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   367: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   370: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   373: aload #6
    //   375: iconst_0
    //   376: bipush #8
    //   378: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   381: return
    //   382: getstatic androidx/constraintlayout/solver/LinearSystem.sMetrics : Landroidx/constraintlayout/solver/Metrics;
    //   385: ifnull -> 405
    //   388: getstatic androidx/constraintlayout/solver/LinearSystem.sMetrics : Landroidx/constraintlayout/solver/Metrics;
    //   391: astore #8
    //   393: aload #8
    //   395: aload #8
    //   397: getfield linearSolved : J
    //   400: lconst_1
    //   401: ladd
    //   402: putfield linearSolved : J
    //   405: aload_2
    //   406: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   409: astore #8
    //   411: aload #8
    //   413: ifnull -> 686
    //   416: aload #8
    //   418: ifnull -> 440
    //   421: aload #8
    //   423: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   426: iconst_0
    //   427: aaload
    //   428: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   431: if_acmpne -> 440
    //   434: iconst_1
    //   435: istore #11
    //   437: goto -> 443
    //   440: iconst_0
    //   441: istore #11
    //   443: aload_2
    //   444: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   447: astore #8
    //   449: aload #8
    //   451: ifnull -> 473
    //   454: aload #8
    //   456: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   459: iconst_1
    //   460: aaload
    //   461: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   464: if_acmpne -> 473
    //   467: iconst_1
    //   468: istore #12
    //   470: goto -> 476
    //   473: iconst_0
    //   474: istore #12
    //   476: aload_2
    //   477: iconst_0
    //   478: invokespecial isChainHead : (I)Z
    //   481: ifeq -> 502
    //   484: aload_2
    //   485: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   488: checkcast androidx/constraintlayout/solver/widgets/ConstraintWidgetContainer
    //   491: aload_2
    //   492: iconst_0
    //   493: invokevirtual addChain : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V
    //   496: iconst_1
    //   497: istore #13
    //   499: goto -> 508
    //   502: aload_0
    //   503: invokevirtual isInHorizontalChain : ()Z
    //   506: istore #13
    //   508: aload_2
    //   509: iconst_1
    //   510: invokespecial isChainHead : (I)Z
    //   513: ifeq -> 534
    //   516: aload_2
    //   517: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   520: checkcast androidx/constraintlayout/solver/widgets/ConstraintWidgetContainer
    //   523: aload_2
    //   524: iconst_1
    //   525: invokevirtual addChain : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V
    //   528: iconst_1
    //   529: istore #14
    //   531: goto -> 540
    //   534: aload_0
    //   535: invokevirtual isInVerticalChain : ()Z
    //   538: istore #14
    //   540: iload #13
    //   542: ifne -> 598
    //   545: iload #11
    //   547: ifeq -> 598
    //   550: aload_2
    //   551: getfield mVisibility : I
    //   554: bipush #8
    //   556: if_icmpeq -> 598
    //   559: aload_2
    //   560: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   563: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   566: ifnonnull -> 598
    //   569: aload_2
    //   570: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   573: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   576: ifnonnull -> 598
    //   579: aload_1
    //   580: aload_1
    //   581: aload_2
    //   582: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   585: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   588: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   591: aload #4
    //   593: iconst_0
    //   594: iconst_1
    //   595: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   598: iload #14
    //   600: ifne -> 663
    //   603: iload #12
    //   605: ifeq -> 663
    //   608: aload_2
    //   609: getfield mVisibility : I
    //   612: bipush #8
    //   614: if_icmpeq -> 663
    //   617: aload_2
    //   618: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   621: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   624: ifnonnull -> 663
    //   627: aload_2
    //   628: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   631: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   634: ifnonnull -> 663
    //   637: aload_2
    //   638: getfield mBaseline : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   641: ifnonnull -> 663
    //   644: aload_1
    //   645: aload_1
    //   646: aload_2
    //   647: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   650: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   653: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   656: aload #6
    //   658: iconst_0
    //   659: iconst_1
    //   660: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   663: iload #12
    //   665: istore #15
    //   667: iload #14
    //   669: istore #12
    //   671: iload #13
    //   673: istore #14
    //   675: iload #11
    //   677: istore #16
    //   679: iload #15
    //   681: istore #13
    //   683: goto -> 698
    //   686: iconst_0
    //   687: istore #16
    //   689: iconst_0
    //   690: istore #13
    //   692: iconst_0
    //   693: istore #14
    //   695: iconst_0
    //   696: istore #12
    //   698: aload_2
    //   699: getfield mWidth : I
    //   702: istore #9
    //   704: aload_2
    //   705: getfield mMinWidth : I
    //   708: istore #10
    //   710: iload #9
    //   712: istore #17
    //   714: iload #9
    //   716: iload #10
    //   718: if_icmpge -> 725
    //   721: iload #10
    //   723: istore #17
    //   725: aload_2
    //   726: getfield mHeight : I
    //   729: istore #10
    //   731: aload_2
    //   732: getfield mMinHeight : I
    //   735: istore #18
    //   737: iload #10
    //   739: istore #9
    //   741: iload #10
    //   743: iload #18
    //   745: if_icmpge -> 752
    //   748: iload #18
    //   750: istore #9
    //   752: aload_2
    //   753: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   756: iconst_0
    //   757: aaload
    //   758: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   761: if_acmpeq -> 770
    //   764: iconst_1
    //   765: istore #11
    //   767: goto -> 773
    //   770: iconst_0
    //   771: istore #11
    //   773: aload_2
    //   774: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   777: iconst_1
    //   778: aaload
    //   779: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   782: if_acmpeq -> 791
    //   785: iconst_1
    //   786: istore #15
    //   788: goto -> 794
    //   791: iconst_0
    //   792: istore #15
    //   794: aload_2
    //   795: aload_2
    //   796: getfield mDimensionRatioSide : I
    //   799: putfield mResolvedDimensionRatioSide : I
    //   802: aload_2
    //   803: getfield mDimensionRatio : F
    //   806: fstore #19
    //   808: aload_2
    //   809: fload #19
    //   811: putfield mResolvedDimensionRatio : F
    //   814: aload_2
    //   815: getfield mMatchConstraintDefaultWidth : I
    //   818: istore #18
    //   820: aload_2
    //   821: getfield mMatchConstraintDefaultHeight : I
    //   824: istore #20
    //   826: fload #19
    //   828: fconst_0
    //   829: fcmpl
    //   830: ifle -> 1143
    //   833: aload_2
    //   834: getfield mVisibility : I
    //   837: bipush #8
    //   839: if_icmpeq -> 1143
    //   842: iload #18
    //   844: istore #10
    //   846: aload_2
    //   847: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   850: iconst_0
    //   851: aaload
    //   852: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   855: if_acmpne -> 870
    //   858: iload #18
    //   860: istore #10
    //   862: iload #18
    //   864: ifne -> 870
    //   867: iconst_3
    //   868: istore #10
    //   870: iload #20
    //   872: istore #18
    //   874: aload_2
    //   875: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   878: iconst_1
    //   879: aaload
    //   880: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   883: if_acmpne -> 898
    //   886: iload #20
    //   888: istore #18
    //   890: iload #20
    //   892: ifne -> 898
    //   895: iconst_3
    //   896: istore #18
    //   898: aload_2
    //   899: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   902: iconst_0
    //   903: aaload
    //   904: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   907: if_acmpne -> 953
    //   910: aload_2
    //   911: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   914: iconst_1
    //   915: aaload
    //   916: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   919: if_acmpne -> 953
    //   922: iload #10
    //   924: iconst_3
    //   925: if_icmpne -> 953
    //   928: iload #18
    //   930: iconst_3
    //   931: if_icmpne -> 953
    //   934: aload_2
    //   935: iload #16
    //   937: iload #13
    //   939: iload #11
    //   941: iload #15
    //   943: invokevirtual setupDimensionRatio : (ZZZZ)V
    //   946: iload #9
    //   948: istore #20
    //   950: goto -> 1133
    //   953: aload_2
    //   954: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   957: iconst_0
    //   958: aaload
    //   959: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   962: if_acmpne -> 1046
    //   965: iload #10
    //   967: iconst_3
    //   968: if_icmpne -> 1046
    //   971: aload_2
    //   972: iconst_0
    //   973: putfield mResolvedDimensionRatioSide : I
    //   976: aload_2
    //   977: getfield mResolvedDimensionRatio : F
    //   980: aload_2
    //   981: getfield mHeight : I
    //   984: i2f
    //   985: fmul
    //   986: f2i
    //   987: istore #21
    //   989: aload_2
    //   990: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   993: iconst_1
    //   994: aaload
    //   995: astore #22
    //   997: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1000: astore #8
    //   1002: iload #9
    //   1004: istore #20
    //   1006: iload #18
    //   1008: istore #23
    //   1010: iload #21
    //   1012: istore #17
    //   1014: iload #20
    //   1016: istore #9
    //   1018: aload #22
    //   1020: aload #8
    //   1022: if_acmpeq -> 1137
    //   1025: iconst_0
    //   1026: istore #11
    //   1028: iconst_4
    //   1029: istore #10
    //   1031: iload #21
    //   1033: istore #17
    //   1035: iload #23
    //   1037: istore #18
    //   1039: iload #20
    //   1041: istore #9
    //   1043: goto -> 1154
    //   1046: iload #9
    //   1048: istore #20
    //   1050: aload_2
    //   1051: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1054: iconst_1
    //   1055: aaload
    //   1056: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1059: if_acmpne -> 1133
    //   1062: iload #9
    //   1064: istore #20
    //   1066: iload #18
    //   1068: iconst_3
    //   1069: if_icmpne -> 1133
    //   1072: aload_2
    //   1073: iconst_1
    //   1074: putfield mResolvedDimensionRatioSide : I
    //   1077: aload_2
    //   1078: getfield mDimensionRatioSide : I
    //   1081: iconst_m1
    //   1082: if_icmpne -> 1095
    //   1085: aload_2
    //   1086: fconst_1
    //   1087: aload_2
    //   1088: getfield mResolvedDimensionRatio : F
    //   1091: fdiv
    //   1092: putfield mResolvedDimensionRatio : F
    //   1095: aload_2
    //   1096: getfield mResolvedDimensionRatio : F
    //   1099: aload_2
    //   1100: getfield mWidth : I
    //   1103: i2f
    //   1104: fmul
    //   1105: f2i
    //   1106: istore #9
    //   1108: iload #9
    //   1110: istore #20
    //   1112: aload_2
    //   1113: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1116: iconst_0
    //   1117: aaload
    //   1118: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1121: if_acmpeq -> 1133
    //   1124: iconst_0
    //   1125: istore #11
    //   1127: iconst_4
    //   1128: istore #18
    //   1130: goto -> 1154
    //   1133: iload #20
    //   1135: istore #9
    //   1137: iconst_1
    //   1138: istore #11
    //   1140: goto -> 1154
    //   1143: iload #18
    //   1145: istore #10
    //   1147: iconst_0
    //   1148: istore #11
    //   1150: iload #20
    //   1152: istore #18
    //   1154: aload_2
    //   1155: getfield mResolvedMatchConstraintDefault : [I
    //   1158: astore #8
    //   1160: aload #8
    //   1162: iconst_0
    //   1163: iload #10
    //   1165: iastore
    //   1166: aload #8
    //   1168: iconst_1
    //   1169: iload #18
    //   1171: iastore
    //   1172: aload_2
    //   1173: iload #11
    //   1175: putfield mResolvedHasRatio : Z
    //   1178: iload #11
    //   1180: ifeq -> 1206
    //   1183: aload_2
    //   1184: getfield mResolvedDimensionRatioSide : I
    //   1187: istore #20
    //   1189: iload #20
    //   1191: ifeq -> 1200
    //   1194: iload #20
    //   1196: iconst_m1
    //   1197: if_icmpne -> 1206
    //   1200: iconst_1
    //   1201: istore #15
    //   1203: goto -> 1209
    //   1206: iconst_0
    //   1207: istore #15
    //   1209: aload_2
    //   1210: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1213: iconst_0
    //   1214: aaload
    //   1215: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1218: if_acmpne -> 1234
    //   1221: aload_2
    //   1222: instanceof androidx/constraintlayout/solver/widgets/ConstraintWidgetContainer
    //   1225: ifeq -> 1234
    //   1228: iconst_1
    //   1229: istore #24
    //   1231: goto -> 1237
    //   1234: iconst_0
    //   1235: istore #24
    //   1237: iload #24
    //   1239: ifeq -> 1245
    //   1242: iconst_0
    //   1243: istore #17
    //   1245: aload_2
    //   1246: getfield mCenter : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1249: invokevirtual isConnected : ()Z
    //   1252: iconst_1
    //   1253: ixor
    //   1254: istore #25
    //   1256: aload_2
    //   1257: getfield mIsInBarrier : [Z
    //   1260: astore #8
    //   1262: aload #8
    //   1264: iconst_0
    //   1265: baload
    //   1266: istore #26
    //   1268: aload #8
    //   1270: iconst_1
    //   1271: baload
    //   1272: istore #27
    //   1274: aload_2
    //   1275: getfield mHorizontalResolution : I
    //   1278: istore #20
    //   1280: aconst_null
    //   1281: astore #28
    //   1283: iload #20
    //   1285: iconst_2
    //   1286: if_icmpeq -> 1541
    //   1289: aload_2
    //   1290: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   1293: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1296: getfield resolved : Z
    //   1299: ifeq -> 1400
    //   1302: aload_2
    //   1303: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   1306: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1309: getfield resolved : Z
    //   1312: ifne -> 1318
    //   1315: goto -> 1400
    //   1318: aload_1
    //   1319: aload_3
    //   1320: aload_2
    //   1321: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   1324: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1327: getfield value : I
    //   1330: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;I)V
    //   1333: aload_1
    //   1334: aload #4
    //   1336: aload_2
    //   1337: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   1340: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1343: getfield value : I
    //   1346: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;I)V
    //   1349: aload_2
    //   1350: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1353: ifnull -> 1397
    //   1356: iload #16
    //   1358: ifeq -> 1397
    //   1361: aload_2
    //   1362: getfield isTerminalWidget : [Z
    //   1365: iconst_0
    //   1366: baload
    //   1367: ifeq -> 1397
    //   1370: aload_0
    //   1371: invokevirtual isInHorizontalChain : ()Z
    //   1374: ifne -> 1397
    //   1377: aload_1
    //   1378: aload_1
    //   1379: aload_2
    //   1380: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1383: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1386: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   1389: aload #4
    //   1391: iconst_0
    //   1392: bipush #8
    //   1394: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   1397: goto -> 1541
    //   1400: aload_2
    //   1401: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1404: astore #8
    //   1406: aload #8
    //   1408: ifnull -> 1425
    //   1411: aload_1
    //   1412: aload #8
    //   1414: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1417: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   1420: astore #8
    //   1422: goto -> 1428
    //   1425: aconst_null
    //   1426: astore #8
    //   1428: aload_2
    //   1429: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1432: astore #22
    //   1434: aload #22
    //   1436: ifnull -> 1453
    //   1439: aload_1
    //   1440: aload #22
    //   1442: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1445: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   1448: astore #22
    //   1450: goto -> 1456
    //   1453: aconst_null
    //   1454: astore #22
    //   1456: aload_0
    //   1457: aload_1
    //   1458: iconst_1
    //   1459: iload #16
    //   1461: iload #13
    //   1463: aload_2
    //   1464: getfield isTerminalWidget : [Z
    //   1467: iconst_0
    //   1468: baload
    //   1469: aload #22
    //   1471: aload #8
    //   1473: aload_2
    //   1474: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1477: iconst_0
    //   1478: aaload
    //   1479: iload #24
    //   1481: aload_2
    //   1482: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1485: aload_2
    //   1486: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1489: aload_2
    //   1490: getfield mX : I
    //   1493: iload #17
    //   1495: aload_2
    //   1496: getfield mMinWidth : I
    //   1499: aload_2
    //   1500: getfield mMaxDimension : [I
    //   1503: iconst_0
    //   1504: iaload
    //   1505: aload_2
    //   1506: getfield mHorizontalBiasPercent : F
    //   1509: iload #15
    //   1511: iload #14
    //   1513: iload #12
    //   1515: iload #26
    //   1517: iload #10
    //   1519: iload #18
    //   1521: aload_2
    //   1522: getfield mMatchConstraintMinWidth : I
    //   1525: aload_2
    //   1526: getfield mMatchConstraintMaxWidth : I
    //   1529: aload_2
    //   1530: getfield mMatchConstraintPercentWidth : F
    //   1533: iload #25
    //   1535: invokespecial applyConstraints : (Landroidx/constraintlayout/solver/LinearSystem;ZZZZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZZZIIIIFZ)V
    //   1538: goto -> 1541
    //   1541: aload #5
    //   1543: astore #22
    //   1545: aload #6
    //   1547: astore #8
    //   1549: iload #11
    //   1551: istore #24
    //   1553: aload #7
    //   1555: astore #6
    //   1557: iload #13
    //   1559: istore #26
    //   1561: aload_0
    //   1562: astore_2
    //   1563: aload_2
    //   1564: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   1567: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1570: getfield resolved : Z
    //   1573: ifeq -> 1717
    //   1576: aload_2
    //   1577: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   1580: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1583: getfield resolved : Z
    //   1586: ifeq -> 1717
    //   1589: aload_2
    //   1590: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   1593: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1596: getfield value : I
    //   1599: istore #17
    //   1601: aload_1
    //   1602: astore #5
    //   1604: aload #5
    //   1606: aload #22
    //   1608: iload #17
    //   1610: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;I)V
    //   1613: aload_2
    //   1614: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   1617: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1620: getfield value : I
    //   1623: istore #17
    //   1625: aload #8
    //   1627: astore #7
    //   1629: aload #5
    //   1631: aload #7
    //   1633: iload #17
    //   1635: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;I)V
    //   1638: aload #5
    //   1640: aload #6
    //   1642: aload_2
    //   1643: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   1646: getfield baseline : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1649: getfield value : I
    //   1652: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;I)V
    //   1655: aload_2
    //   1656: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1659: astore #29
    //   1661: aload #29
    //   1663: ifnull -> 1711
    //   1666: iload #12
    //   1668: ifne -> 1711
    //   1671: iload #26
    //   1673: ifeq -> 1711
    //   1676: aload_2
    //   1677: getfield isTerminalWidget : [Z
    //   1680: iconst_1
    //   1681: baload
    //   1682: ifeq -> 1708
    //   1685: aload #5
    //   1687: aload #5
    //   1689: aload #29
    //   1691: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1694: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   1697: aload #7
    //   1699: iconst_0
    //   1700: bipush #8
    //   1702: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   1705: goto -> 1711
    //   1708: goto -> 1711
    //   1711: iconst_0
    //   1712: istore #17
    //   1714: goto -> 1720
    //   1717: iconst_1
    //   1718: istore #17
    //   1720: aload_1
    //   1721: astore #5
    //   1723: aload #22
    //   1725: astore #7
    //   1727: aload #6
    //   1729: astore #29
    //   1731: aload_2
    //   1732: getfield mVerticalResolution : I
    //   1735: iconst_2
    //   1736: if_icmpne -> 1742
    //   1739: iconst_0
    //   1740: istore #17
    //   1742: iload #17
    //   1744: ifeq -> 2076
    //   1747: aload_2
    //   1748: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1751: iconst_1
    //   1752: aaload
    //   1753: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1756: if_acmpne -> 1772
    //   1759: aload_2
    //   1760: instanceof androidx/constraintlayout/solver/widgets/ConstraintWidgetContainer
    //   1763: ifeq -> 1772
    //   1766: iconst_1
    //   1767: istore #11
    //   1769: goto -> 1775
    //   1772: iconst_0
    //   1773: istore #11
    //   1775: iload #11
    //   1777: ifeq -> 1783
    //   1780: iconst_0
    //   1781: istore #9
    //   1783: iload #24
    //   1785: ifeq -> 1812
    //   1788: aload_2
    //   1789: getfield mResolvedDimensionRatioSide : I
    //   1792: istore #17
    //   1794: iload #17
    //   1796: iconst_1
    //   1797: if_icmpeq -> 1806
    //   1800: iload #17
    //   1802: iconst_m1
    //   1803: if_icmpne -> 1812
    //   1806: iconst_1
    //   1807: istore #13
    //   1809: goto -> 1815
    //   1812: iconst_0
    //   1813: istore #13
    //   1815: aload_2
    //   1816: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1819: astore #22
    //   1821: aload #22
    //   1823: ifnull -> 1841
    //   1826: aload #5
    //   1828: aload #22
    //   1830: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1833: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   1836: astore #22
    //   1838: goto -> 1844
    //   1841: aconst_null
    //   1842: astore #22
    //   1844: aload_2
    //   1845: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1848: astore #30
    //   1850: aload #28
    //   1852: astore #6
    //   1854: aload #30
    //   1856: ifnull -> 1871
    //   1859: aload #5
    //   1861: aload #30
    //   1863: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1866: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   1869: astore #6
    //   1871: aload_2
    //   1872: getfield mBaselineDistance : I
    //   1875: ifgt -> 1887
    //   1878: aload_2
    //   1879: getfield mVisibility : I
    //   1882: bipush #8
    //   1884: if_icmpne -> 1987
    //   1887: aload #5
    //   1889: aload #29
    //   1891: aload #7
    //   1893: aload_0
    //   1894: invokevirtual getBaselineDistance : ()I
    //   1897: bipush #8
    //   1899: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   1902: pop
    //   1903: aload_2
    //   1904: getfield mBaseline : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1907: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1910: ifnull -> 1965
    //   1913: aload #5
    //   1915: aload #29
    //   1917: aload #5
    //   1919: aload_2
    //   1920: getfield mBaseline : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1923: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1926: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   1929: iconst_0
    //   1930: bipush #8
    //   1932: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   1935: pop
    //   1936: iload #26
    //   1938: ifeq -> 1959
    //   1941: aload #5
    //   1943: aload #22
    //   1945: aload #5
    //   1947: aload_2
    //   1948: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1951: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   1954: iconst_0
    //   1955: iconst_5
    //   1956: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   1959: iconst_0
    //   1960: istore #15
    //   1962: goto -> 1991
    //   1965: aload_2
    //   1966: getfield mVisibility : I
    //   1969: bipush #8
    //   1971: if_icmpne -> 1987
    //   1974: aload #5
    //   1976: aload #29
    //   1978: aload #7
    //   1980: iconst_0
    //   1981: bipush #8
    //   1983: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   1986: pop
    //   1987: iload #25
    //   1989: istore #15
    //   1991: aload_0
    //   1992: aload_1
    //   1993: iconst_0
    //   1994: iload #26
    //   1996: iload #16
    //   1998: aload_2
    //   1999: getfield isTerminalWidget : [Z
    //   2002: iconst_1
    //   2003: baload
    //   2004: aload #6
    //   2006: aload #22
    //   2008: aload_2
    //   2009: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   2012: iconst_1
    //   2013: aaload
    //   2014: iload #11
    //   2016: aload_2
    //   2017: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2020: aload_2
    //   2021: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2024: aload_2
    //   2025: getfield mY : I
    //   2028: iload #9
    //   2030: aload_2
    //   2031: getfield mMinHeight : I
    //   2034: aload_2
    //   2035: getfield mMaxDimension : [I
    //   2038: iconst_1
    //   2039: iaload
    //   2040: aload_2
    //   2041: getfield mVerticalBiasPercent : F
    //   2044: iload #13
    //   2046: iload #12
    //   2048: iload #14
    //   2050: iload #27
    //   2052: iload #18
    //   2054: iload #10
    //   2056: aload_2
    //   2057: getfield mMatchConstraintMinHeight : I
    //   2060: aload_2
    //   2061: getfield mMatchConstraintMaxHeight : I
    //   2064: aload_2
    //   2065: getfield mMatchConstraintPercentHeight : F
    //   2068: iload #15
    //   2070: invokespecial applyConstraints : (Landroidx/constraintlayout/solver/LinearSystem;ZZZZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZZZIIIIFZ)V
    //   2073: goto -> 2076
    //   2076: aload #8
    //   2078: astore #22
    //   2080: iload #24
    //   2082: ifeq -> 2139
    //   2085: aload_0
    //   2086: astore #8
    //   2088: aload #8
    //   2090: getfield mResolvedDimensionRatioSide : I
    //   2093: iconst_1
    //   2094: if_icmpne -> 2118
    //   2097: aload_1
    //   2098: aload #22
    //   2100: aload #7
    //   2102: aload #4
    //   2104: aload_3
    //   2105: aload #8
    //   2107: getfield mResolvedDimensionRatio : F
    //   2110: bipush #8
    //   2112: invokevirtual addRatio : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V
    //   2115: goto -> 2139
    //   2118: aload_1
    //   2119: aload #4
    //   2121: aload_3
    //   2122: aload #22
    //   2124: aload #7
    //   2126: aload #8
    //   2128: getfield mResolvedDimensionRatio : F
    //   2131: bipush #8
    //   2133: invokevirtual addRatio : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V
    //   2136: goto -> 2139
    //   2139: aload_0
    //   2140: astore #8
    //   2142: aload #8
    //   2144: getfield mCenter : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2147: invokevirtual isConnected : ()Z
    //   2150: ifeq -> 2192
    //   2153: aload_1
    //   2154: aload #8
    //   2156: aload #8
    //   2158: getfield mCenter : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2161: invokevirtual getTarget : ()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2164: invokevirtual getOwner : ()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   2167: aload #8
    //   2169: getfield mCircleConstraintAngle : F
    //   2172: ldc_w 90.0
    //   2175: fadd
    //   2176: f2d
    //   2177: invokestatic toRadians : (D)D
    //   2180: d2f
    //   2181: aload #8
    //   2183: getfield mCenter : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2186: invokevirtual getMargin : ()I
    //   2189: invokevirtual addCenterPoint : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V
    //   2192: return
  }
  
  public boolean allowedInBarrier() {
    boolean bool;
    if (this.mVisibility != 8) {
      bool = true;
    } else {
      bool = false;
    } 
    return bool;
  }
  
  public void connect(ConstraintAnchor.Type paramType1, ConstraintWidget paramConstraintWidget, ConstraintAnchor.Type paramType2) {
    connect(paramType1, paramConstraintWidget, paramType2, 0);
  }
  
  public void connect(ConstraintAnchor.Type paramType1, ConstraintWidget paramConstraintWidget, ConstraintAnchor.Type paramType2, int paramInt) {
    // Byte code:
    //   0: aload_1
    //   1: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   4: if_acmpne -> 361
    //   7: aload_3
    //   8: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   11: if_acmpne -> 248
    //   14: aload_0
    //   15: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.LEFT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   18: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   21: astore #5
    //   23: aload_0
    //   24: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.RIGHT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   27: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   30: astore #6
    //   32: aload_0
    //   33: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.TOP : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   36: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   39: astore_3
    //   40: aload_0
    //   41: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.BOTTOM : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   44: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   47: astore_1
    //   48: iconst_1
    //   49: istore #7
    //   51: aload #5
    //   53: ifnull -> 64
    //   56: aload #5
    //   58: invokevirtual isConnected : ()Z
    //   61: ifne -> 77
    //   64: aload #6
    //   66: ifnull -> 83
    //   69: aload #6
    //   71: invokevirtual isConnected : ()Z
    //   74: ifeq -> 83
    //   77: iconst_0
    //   78: istore #4
    //   80: goto -> 110
    //   83: aload_0
    //   84: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.LEFT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   87: aload_2
    //   88: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.LEFT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   91: iconst_0
    //   92: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    //   95: aload_0
    //   96: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.RIGHT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   99: aload_2
    //   100: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.RIGHT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   103: iconst_0
    //   104: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    //   107: iconst_1
    //   108: istore #4
    //   110: aload_3
    //   111: ifnull -> 121
    //   114: aload_3
    //   115: invokevirtual isConnected : ()Z
    //   118: ifne -> 132
    //   121: aload_1
    //   122: ifnull -> 138
    //   125: aload_1
    //   126: invokevirtual isConnected : ()Z
    //   129: ifeq -> 138
    //   132: iconst_0
    //   133: istore #7
    //   135: goto -> 162
    //   138: aload_0
    //   139: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.TOP : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   142: aload_2
    //   143: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.TOP : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   146: iconst_0
    //   147: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    //   150: aload_0
    //   151: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.BOTTOM : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   154: aload_2
    //   155: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.BOTTOM : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   158: iconst_0
    //   159: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    //   162: iload #4
    //   164: ifeq -> 194
    //   167: iload #7
    //   169: ifeq -> 194
    //   172: aload_0
    //   173: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   176: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   179: aload_2
    //   180: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   183: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   186: iconst_0
    //   187: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    //   190: pop
    //   191: goto -> 897
    //   194: iload #4
    //   196: ifeq -> 221
    //   199: aload_0
    //   200: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER_X : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   203: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   206: aload_2
    //   207: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER_X : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   210: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   213: iconst_0
    //   214: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    //   217: pop
    //   218: goto -> 897
    //   221: iload #7
    //   223: ifeq -> 897
    //   226: aload_0
    //   227: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER_Y : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   230: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   233: aload_2
    //   234: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER_Y : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   237: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   240: iconst_0
    //   241: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    //   244: pop
    //   245: goto -> 897
    //   248: aload_3
    //   249: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.LEFT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   252: if_acmpeq -> 319
    //   255: aload_3
    //   256: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.RIGHT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   259: if_acmpne -> 265
    //   262: goto -> 319
    //   265: aload_3
    //   266: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.TOP : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   269: if_acmpeq -> 279
    //   272: aload_3
    //   273: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.BOTTOM : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   276: if_acmpne -> 897
    //   279: aload_0
    //   280: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.TOP : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   283: aload_2
    //   284: aload_3
    //   285: iconst_0
    //   286: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    //   289: aload_0
    //   290: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.BOTTOM : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   293: aload_2
    //   294: aload_3
    //   295: iconst_0
    //   296: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    //   299: aload_0
    //   300: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   303: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   306: aload_2
    //   307: aload_3
    //   308: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   311: iconst_0
    //   312: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    //   315: pop
    //   316: goto -> 897
    //   319: aload_0
    //   320: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.LEFT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   323: aload_2
    //   324: aload_3
    //   325: iconst_0
    //   326: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    //   329: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.RIGHT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   332: astore_1
    //   333: aload_0
    //   334: aload_1
    //   335: aload_2
    //   336: aload_3
    //   337: iconst_0
    //   338: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    //   341: aload_0
    //   342: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   345: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   348: aload_2
    //   349: aload_3
    //   350: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   353: iconst_0
    //   354: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    //   357: pop
    //   358: goto -> 897
    //   361: aload_1
    //   362: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER_X : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   365: if_acmpne -> 434
    //   368: aload_3
    //   369: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.LEFT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   372: if_acmpeq -> 382
    //   375: aload_3
    //   376: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.RIGHT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   379: if_acmpne -> 434
    //   382: aload_0
    //   383: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.LEFT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   386: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   389: astore_1
    //   390: aload_2
    //   391: aload_3
    //   392: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   395: astore_2
    //   396: aload_0
    //   397: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.RIGHT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   400: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   403: astore_3
    //   404: aload_1
    //   405: aload_2
    //   406: iconst_0
    //   407: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    //   410: pop
    //   411: aload_3
    //   412: aload_2
    //   413: iconst_0
    //   414: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    //   417: pop
    //   418: aload_0
    //   419: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER_X : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   422: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   425: aload_2
    //   426: iconst_0
    //   427: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    //   430: pop
    //   431: goto -> 897
    //   434: aload_1
    //   435: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER_Y : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   438: if_acmpne -> 503
    //   441: aload_3
    //   442: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.TOP : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   445: if_acmpeq -> 455
    //   448: aload_3
    //   449: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.BOTTOM : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   452: if_acmpne -> 503
    //   455: aload_2
    //   456: aload_3
    //   457: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   460: astore_1
    //   461: aload_0
    //   462: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.TOP : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   465: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   468: aload_1
    //   469: iconst_0
    //   470: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    //   473: pop
    //   474: aload_0
    //   475: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.BOTTOM : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   478: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   481: aload_1
    //   482: iconst_0
    //   483: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    //   486: pop
    //   487: aload_0
    //   488: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER_Y : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   491: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   494: aload_1
    //   495: iconst_0
    //   496: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    //   499: pop
    //   500: goto -> 897
    //   503: aload_1
    //   504: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER_X : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   507: if_acmpne -> 575
    //   510: aload_3
    //   511: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER_X : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   514: if_acmpne -> 575
    //   517: aload_0
    //   518: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.LEFT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   521: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   524: aload_2
    //   525: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.LEFT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   528: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   531: iconst_0
    //   532: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    //   535: pop
    //   536: aload_0
    //   537: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.RIGHT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   540: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   543: aload_2
    //   544: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.RIGHT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   547: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   550: iconst_0
    //   551: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    //   554: pop
    //   555: aload_0
    //   556: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER_X : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   559: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   562: aload_2
    //   563: aload_3
    //   564: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   567: iconst_0
    //   568: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    //   571: pop
    //   572: goto -> 897
    //   575: aload_1
    //   576: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER_Y : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   579: if_acmpne -> 647
    //   582: aload_3
    //   583: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER_Y : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   586: if_acmpne -> 647
    //   589: aload_0
    //   590: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.TOP : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   593: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   596: aload_2
    //   597: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.TOP : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   600: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   603: iconst_0
    //   604: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    //   607: pop
    //   608: aload_0
    //   609: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.BOTTOM : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   612: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   615: aload_2
    //   616: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.BOTTOM : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   619: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   622: iconst_0
    //   623: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    //   626: pop
    //   627: aload_0
    //   628: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER_Y : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   631: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   634: aload_2
    //   635: aload_3
    //   636: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   639: iconst_0
    //   640: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    //   643: pop
    //   644: goto -> 897
    //   647: aload_0
    //   648: aload_1
    //   649: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   652: astore #6
    //   654: aload_2
    //   655: aload_3
    //   656: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   659: astore_2
    //   660: aload #6
    //   662: aload_2
    //   663: invokevirtual isValidConnection : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z
    //   666: ifeq -> 897
    //   669: aload_1
    //   670: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.BASELINE : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   673: if_acmpne -> 714
    //   676: aload_0
    //   677: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.TOP : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   680: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   683: astore_3
    //   684: aload_0
    //   685: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.BOTTOM : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   688: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   691: astore_1
    //   692: aload_3
    //   693: ifnull -> 700
    //   696: aload_3
    //   697: invokevirtual reset : ()V
    //   700: aload_1
    //   701: ifnull -> 708
    //   704: aload_1
    //   705: invokevirtual reset : ()V
    //   708: iconst_0
    //   709: istore #7
    //   711: goto -> 888
    //   714: aload_1
    //   715: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.TOP : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   718: if_acmpeq -> 812
    //   721: aload_1
    //   722: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.BOTTOM : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   725: if_acmpne -> 731
    //   728: goto -> 812
    //   731: aload_1
    //   732: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.LEFT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   735: if_acmpeq -> 749
    //   738: iload #4
    //   740: istore #7
    //   742: aload_1
    //   743: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.RIGHT : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   746: if_acmpne -> 888
    //   749: aload_0
    //   750: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   753: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   756: astore_3
    //   757: aload_3
    //   758: invokevirtual getTarget : ()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   761: aload_2
    //   762: if_acmpeq -> 769
    //   765: aload_3
    //   766: invokevirtual reset : ()V
    //   769: aload_0
    //   770: aload_1
    //   771: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   774: invokevirtual getOpposite : ()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   777: astore_3
    //   778: aload_0
    //   779: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER_X : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   782: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   785: astore_1
    //   786: iload #4
    //   788: istore #7
    //   790: aload_1
    //   791: invokevirtual isConnected : ()Z
    //   794: ifeq -> 888
    //   797: aload_3
    //   798: invokevirtual reset : ()V
    //   801: aload_1
    //   802: invokevirtual reset : ()V
    //   805: iload #4
    //   807: istore #7
    //   809: goto -> 888
    //   812: aload_0
    //   813: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.BASELINE : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   816: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   819: astore_3
    //   820: aload_3
    //   821: ifnull -> 828
    //   824: aload_3
    //   825: invokevirtual reset : ()V
    //   828: aload_0
    //   829: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   832: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   835: astore_3
    //   836: aload_3
    //   837: invokevirtual getTarget : ()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   840: aload_2
    //   841: if_acmpeq -> 848
    //   844: aload_3
    //   845: invokevirtual reset : ()V
    //   848: aload_0
    //   849: aload_1
    //   850: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   853: invokevirtual getOpposite : ()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   856: astore_3
    //   857: aload_0
    //   858: getstatic androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.CENTER_Y : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    //   861: invokevirtual getAnchor : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   864: astore_1
    //   865: iload #4
    //   867: istore #7
    //   869: aload_1
    //   870: invokevirtual isConnected : ()Z
    //   873: ifeq -> 888
    //   876: aload_3
    //   877: invokevirtual reset : ()V
    //   880: aload_1
    //   881: invokevirtual reset : ()V
    //   884: iload #4
    //   886: istore #7
    //   888: aload #6
    //   890: aload_2
    //   891: iload #7
    //   893: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    //   896: pop
    //   897: return
    //   898: astore_1
    //   899: aload_1
    //   900: athrow
    // Exception table:
    //   from	to	target	type
    //   333	341	898	finally
  }
  
  public void connect(ConstraintAnchor paramConstraintAnchor1, ConstraintAnchor paramConstraintAnchor2, int paramInt) {
    if (paramConstraintAnchor1.getOwner() == this)
      connect(paramConstraintAnchor1.getType(), paramConstraintAnchor2.getOwner(), paramConstraintAnchor2.getType(), paramInt); 
  }
  
  public void connectCircularConstraint(ConstraintWidget paramConstraintWidget, float paramFloat, int paramInt) {
    immediateConnect(ConstraintAnchor.Type.CENTER, paramConstraintWidget, ConstraintAnchor.Type.CENTER, paramInt, 0);
    this.mCircleConstraintAngle = paramFloat;
  }
  
  public void copy(ConstraintWidget paramConstraintWidget, HashMap<ConstraintWidget, ConstraintWidget> paramHashMap) {
    int[] arrayOfInt1;
    ConstraintWidget constraintWidget1;
    this.mHorizontalResolution = paramConstraintWidget.mHorizontalResolution;
    this.mVerticalResolution = paramConstraintWidget.mVerticalResolution;
    this.mMatchConstraintDefaultWidth = paramConstraintWidget.mMatchConstraintDefaultWidth;
    this.mMatchConstraintDefaultHeight = paramConstraintWidget.mMatchConstraintDefaultHeight;
    int[] arrayOfInt2 = this.mResolvedMatchConstraintDefault;
    int[] arrayOfInt3 = paramConstraintWidget.mResolvedMatchConstraintDefault;
    arrayOfInt2[0] = arrayOfInt3[0];
    arrayOfInt2[1] = arrayOfInt3[1];
    this.mMatchConstraintMinWidth = paramConstraintWidget.mMatchConstraintMinWidth;
    this.mMatchConstraintMaxWidth = paramConstraintWidget.mMatchConstraintMaxWidth;
    this.mMatchConstraintMinHeight = paramConstraintWidget.mMatchConstraintMinHeight;
    this.mMatchConstraintMaxHeight = paramConstraintWidget.mMatchConstraintMaxHeight;
    this.mMatchConstraintPercentHeight = paramConstraintWidget.mMatchConstraintPercentHeight;
    this.mIsWidthWrapContent = paramConstraintWidget.mIsWidthWrapContent;
    this.mIsHeightWrapContent = paramConstraintWidget.mIsHeightWrapContent;
    this.mResolvedDimensionRatioSide = paramConstraintWidget.mResolvedDimensionRatioSide;
    this.mResolvedDimensionRatio = paramConstraintWidget.mResolvedDimensionRatio;
    arrayOfInt3 = paramConstraintWidget.mMaxDimension;
    this.mMaxDimension = Arrays.copyOf(arrayOfInt3, arrayOfInt3.length);
    this.mCircleConstraintAngle = paramConstraintWidget.mCircleConstraintAngle;
    this.hasBaseline = paramConstraintWidget.hasBaseline;
    this.inPlaceholder = paramConstraintWidget.inPlaceholder;
    this.mLeft.reset();
    this.mTop.reset();
    this.mRight.reset();
    this.mBottom.reset();
    this.mBaseline.reset();
    this.mCenterX.reset();
    this.mCenterY.reset();
    this.mCenter.reset();
    this.mListDimensionBehaviors = Arrays.<DimensionBehaviour>copyOf(this.mListDimensionBehaviors, 2);
    ConstraintWidget constraintWidget3 = this.mParent;
    arrayOfInt2 = null;
    if (constraintWidget3 == null) {
      constraintWidget3 = null;
    } else {
      constraintWidget3 = paramHashMap.get(paramConstraintWidget.mParent);
    } 
    this.mParent = constraintWidget3;
    this.mWidth = paramConstraintWidget.mWidth;
    this.mHeight = paramConstraintWidget.mHeight;
    this.mDimensionRatio = paramConstraintWidget.mDimensionRatio;
    this.mDimensionRatioSide = paramConstraintWidget.mDimensionRatioSide;
    this.mX = paramConstraintWidget.mX;
    this.mY = paramConstraintWidget.mY;
    this.mRelX = paramConstraintWidget.mRelX;
    this.mRelY = paramConstraintWidget.mRelY;
    this.mOffsetX = paramConstraintWidget.mOffsetX;
    this.mOffsetY = paramConstraintWidget.mOffsetY;
    this.mBaselineDistance = paramConstraintWidget.mBaselineDistance;
    this.mMinWidth = paramConstraintWidget.mMinWidth;
    this.mMinHeight = paramConstraintWidget.mMinHeight;
    this.mHorizontalBiasPercent = paramConstraintWidget.mHorizontalBiasPercent;
    this.mVerticalBiasPercent = paramConstraintWidget.mVerticalBiasPercent;
    this.mCompanionWidget = paramConstraintWidget.mCompanionWidget;
    this.mContainerItemSkip = paramConstraintWidget.mContainerItemSkip;
    this.mVisibility = paramConstraintWidget.mVisibility;
    this.mDebugName = paramConstraintWidget.mDebugName;
    this.mType = paramConstraintWidget.mType;
    this.mDistToTop = paramConstraintWidget.mDistToTop;
    this.mDistToLeft = paramConstraintWidget.mDistToLeft;
    this.mDistToRight = paramConstraintWidget.mDistToRight;
    this.mDistToBottom = paramConstraintWidget.mDistToBottom;
    this.mLeftHasCentered = paramConstraintWidget.mLeftHasCentered;
    this.mRightHasCentered = paramConstraintWidget.mRightHasCentered;
    this.mTopHasCentered = paramConstraintWidget.mTopHasCentered;
    this.mBottomHasCentered = paramConstraintWidget.mBottomHasCentered;
    this.mHorizontalWrapVisited = paramConstraintWidget.mHorizontalWrapVisited;
    this.mVerticalWrapVisited = paramConstraintWidget.mVerticalWrapVisited;
    this.mOptimizerMeasurable = paramConstraintWidget.mOptimizerMeasurable;
    this.mGroupsToSolver = paramConstraintWidget.mGroupsToSolver;
    this.mHorizontalChainStyle = paramConstraintWidget.mHorizontalChainStyle;
    this.mVerticalChainStyle = paramConstraintWidget.mVerticalChainStyle;
    this.mHorizontalChainFixedPosition = paramConstraintWidget.mHorizontalChainFixedPosition;
    this.mVerticalChainFixedPosition = paramConstraintWidget.mVerticalChainFixedPosition;
    float[] arrayOfFloat2 = this.mWeight;
    float[] arrayOfFloat1 = paramConstraintWidget.mWeight;
    arrayOfFloat2[0] = arrayOfFloat1[0];
    arrayOfFloat2[1] = arrayOfFloat1[1];
    ConstraintWidget[] arrayOfConstraintWidget2 = this.mListNextMatchConstraintsWidget;
    ConstraintWidget[] arrayOfConstraintWidget1 = paramConstraintWidget.mListNextMatchConstraintsWidget;
    arrayOfConstraintWidget2[0] = arrayOfConstraintWidget1[0];
    arrayOfConstraintWidget2[1] = arrayOfConstraintWidget1[1];
    arrayOfConstraintWidget1 = this.mNextChainWidget;
    arrayOfConstraintWidget2 = paramConstraintWidget.mNextChainWidget;
    arrayOfConstraintWidget1[0] = arrayOfConstraintWidget2[0];
    arrayOfConstraintWidget1[1] = arrayOfConstraintWidget2[1];
    ConstraintWidget constraintWidget2 = paramConstraintWidget.mHorizontalNextWidget;
    if (constraintWidget2 == null) {
      constraintWidget2 = null;
    } else {
      constraintWidget2 = paramHashMap.get(constraintWidget2);
    } 
    this.mHorizontalNextWidget = constraintWidget2;
    paramConstraintWidget = paramConstraintWidget.mVerticalNextWidget;
    if (paramConstraintWidget == null) {
      arrayOfInt1 = arrayOfInt2;
    } else {
      constraintWidget1 = paramHashMap.get(arrayOfInt1);
    } 
    this.mVerticalNextWidget = constraintWidget1;
  }
  
  public void createObjectVariables(LinearSystem paramLinearSystem) {
    paramLinearSystem.createObjectVariable(this.mLeft);
    paramLinearSystem.createObjectVariable(this.mTop);
    paramLinearSystem.createObjectVariable(this.mRight);
    paramLinearSystem.createObjectVariable(this.mBottom);
    if (this.mBaselineDistance > 0)
      paramLinearSystem.createObjectVariable(this.mBaseline); 
  }
  
  public ConstraintAnchor getAnchor(ConstraintAnchor.Type paramType) {
    switch (paramType) {
      default:
        throw new AssertionError(paramType.name());
      case null:
        return null;
      case null:
        return this.mCenterY;
      case null:
        return this.mCenterX;
      case null:
        return this.mCenter;
      case null:
        return this.mBaseline;
      case MATCH_CONSTRAINT:
        return this.mBottom;
      case MATCH_PARENT:
        return this.mRight;
      case WRAP_CONTENT:
        return this.mTop;
      case FIXED:
        break;
    } 
    return this.mLeft;
  }
  
  public ArrayList<ConstraintAnchor> getAnchors() {
    return this.mAnchors;
  }
  
  public int getBaselineDistance() {
    return this.mBaselineDistance;
  }
  
  public float getBiasPercent(int paramInt) {
    return (paramInt == 0) ? this.mHorizontalBiasPercent : ((paramInt == 1) ? this.mVerticalBiasPercent : -1.0F);
  }
  
  public int getBottom() {
    return getY() + this.mHeight;
  }
  
  public Object getCompanionWidget() {
    return this.mCompanionWidget;
  }
  
  public int getContainerItemSkip() {
    return this.mContainerItemSkip;
  }
  
  public String getDebugName() {
    return this.mDebugName;
  }
  
  public DimensionBehaviour getDimensionBehaviour(int paramInt) {
    return (paramInt == 0) ? getHorizontalDimensionBehaviour() : ((paramInt == 1) ? getVerticalDimensionBehaviour() : null);
  }
  
  public float getDimensionRatio() {
    return this.mDimensionRatio;
  }
  
  public int getDimensionRatioSide() {
    return this.mDimensionRatioSide;
  }
  
  public boolean getHasBaseline() {
    return this.hasBaseline;
  }
  
  public int getHeight() {
    return (this.mVisibility == 8) ? 0 : this.mHeight;
  }
  
  public float getHorizontalBiasPercent() {
    return this.mHorizontalBiasPercent;
  }
  
  public ConstraintWidget getHorizontalChainControlWidget() {
    ConstraintWidget constraintWidget;
    if (isInHorizontalChain()) {
      ConstraintWidget constraintWidget1 = this;
      ConstraintAnchor constraintAnchor = null;
      while (true) {
        constraintWidget = (ConstraintWidget)constraintAnchor;
        if (constraintAnchor == null) {
          constraintWidget = (ConstraintWidget)constraintAnchor;
          if (constraintWidget1 != null) {
            ConstraintWidget constraintWidget2;
            ConstraintAnchor constraintAnchor1;
            constraintWidget = (ConstraintWidget)constraintWidget1.getAnchor(ConstraintAnchor.Type.LEFT);
            if (constraintWidget == null) {
              constraintWidget = null;
            } else {
              constraintWidget = (ConstraintWidget)constraintWidget.getTarget();
            } 
            if (constraintWidget == null) {
              constraintWidget = null;
            } else {
              constraintWidget2 = constraintWidget.getOwner();
            } 
            if (constraintWidget2 == getParent()) {
              constraintWidget2 = constraintWidget1;
              break;
            } 
            if (constraintWidget2 == null) {
              constraintAnchor1 = null;
            } else {
              constraintAnchor1 = constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT).getTarget();
            } 
            if (constraintAnchor1 != null && constraintAnchor1.getOwner() != constraintWidget1) {
              ConstraintWidget constraintWidget3 = constraintWidget1;
              continue;
            } 
            constraintWidget1 = constraintWidget2;
            continue;
          } 
        } 
        break;
      } 
    } else {
      constraintWidget = null;
    } 
    return constraintWidget;
  }
  
  public int getHorizontalChainStyle() {
    return this.mHorizontalChainStyle;
  }
  
  public DimensionBehaviour getHorizontalDimensionBehaviour() {
    return this.mListDimensionBehaviors[0];
  }
  
  public int getHorizontalMargin() {
    ConstraintAnchor constraintAnchor = this.mLeft;
    int i = 0;
    if (constraintAnchor != null)
      i = 0 + constraintAnchor.mMargin; 
    constraintAnchor = this.mRight;
    int j = i;
    if (constraintAnchor != null)
      j = i + constraintAnchor.mMargin; 
    return j;
  }
  
  public int getLeft() {
    return getX();
  }
  
  public int getLength(int paramInt) {
    return (paramInt == 0) ? getWidth() : ((paramInt == 1) ? getHeight() : 0);
  }
  
  public int getMaxHeight() {
    return this.mMaxDimension[1];
  }
  
  public int getMaxWidth() {
    return this.mMaxDimension[0];
  }
  
  public int getMinHeight() {
    return this.mMinHeight;
  }
  
  public int getMinWidth() {
    return this.mMinWidth;
  }
  
  public ConstraintWidget getNextChainMember(int paramInt) {
    if (paramInt == 0) {
      if (this.mRight.mTarget != null) {
        ConstraintAnchor constraintAnchor1 = this.mRight.mTarget.mTarget;
        ConstraintAnchor constraintAnchor2 = this.mRight;
        if (constraintAnchor1 == constraintAnchor2)
          return constraintAnchor2.mTarget.mOwner; 
      } 
    } else if (paramInt == 1 && this.mBottom.mTarget != null) {
      ConstraintAnchor constraintAnchor2 = this.mBottom.mTarget.mTarget;
      ConstraintAnchor constraintAnchor1 = this.mBottom;
      if (constraintAnchor2 == constraintAnchor1)
        return constraintAnchor1.mTarget.mOwner; 
    } 
    return null;
  }
  
  public int getOptimizerWrapHeight() {
    int i = this.mHeight;
    int j = i;
    if (this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
      if (this.mMatchConstraintDefaultHeight == 1) {
        i = Math.max(this.mMatchConstraintMinHeight, i);
      } else {
        i = this.mMatchConstraintMinHeight;
        if (i > 0) {
          this.mHeight = i;
        } else {
          i = 0;
        } 
      } 
      int k = this.mMatchConstraintMaxHeight;
      j = i;
      if (k > 0) {
        j = i;
        if (k < i)
          j = k; 
      } 
    } 
    return j;
  }
  
  public int getOptimizerWrapWidth() {
    int i = this.mWidth;
    int j = i;
    if (this.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT) {
      if (this.mMatchConstraintDefaultWidth == 1) {
        i = Math.max(this.mMatchConstraintMinWidth, i);
      } else {
        i = this.mMatchConstraintMinWidth;
        if (i > 0) {
          this.mWidth = i;
        } else {
          i = 0;
        } 
      } 
      int k = this.mMatchConstraintMaxWidth;
      j = i;
      if (k > 0) {
        j = i;
        if (k < i)
          j = k; 
      } 
    } 
    return j;
  }
  
  public ConstraintWidget getParent() {
    return this.mParent;
  }
  
  public ConstraintWidget getPreviousChainMember(int paramInt) {
    if (paramInt == 0) {
      if (this.mLeft.mTarget != null) {
        ConstraintAnchor constraintAnchor1 = this.mLeft.mTarget.mTarget;
        ConstraintAnchor constraintAnchor2 = this.mLeft;
        if (constraintAnchor1 == constraintAnchor2)
          return constraintAnchor2.mTarget.mOwner; 
      } 
    } else if (paramInt == 1 && this.mTop.mTarget != null) {
      ConstraintAnchor constraintAnchor1 = this.mTop.mTarget.mTarget;
      ConstraintAnchor constraintAnchor2 = this.mTop;
      if (constraintAnchor1 == constraintAnchor2)
        return constraintAnchor2.mTarget.mOwner; 
    } 
    return null;
  }
  
  int getRelativePositioning(int paramInt) {
    return (paramInt == 0) ? this.mRelX : ((paramInt == 1) ? this.mRelY : 0);
  }
  
  public int getRight() {
    return getX() + this.mWidth;
  }
  
  protected int getRootX() {
    return this.mX + this.mOffsetX;
  }
  
  protected int getRootY() {
    return this.mY + this.mOffsetY;
  }
  
  public WidgetRun getRun(int paramInt) {
    return (WidgetRun)((paramInt == 0) ? this.horizontalRun : ((paramInt == 1) ? this.verticalRun : null));
  }
  
  public int getTop() {
    return getY();
  }
  
  public String getType() {
    return this.mType;
  }
  
  public float getVerticalBiasPercent() {
    return this.mVerticalBiasPercent;
  }
  
  public ConstraintWidget getVerticalChainControlWidget() {
    ConstraintWidget constraintWidget;
    if (isInVerticalChain()) {
      ConstraintWidget constraintWidget1 = this;
      ConstraintAnchor constraintAnchor = null;
      while (true) {
        constraintWidget = (ConstraintWidget)constraintAnchor;
        if (constraintAnchor == null) {
          constraintWidget = (ConstraintWidget)constraintAnchor;
          if (constraintWidget1 != null) {
            ConstraintWidget constraintWidget2;
            ConstraintAnchor constraintAnchor1;
            constraintWidget = (ConstraintWidget)constraintWidget1.getAnchor(ConstraintAnchor.Type.TOP);
            if (constraintWidget == null) {
              constraintWidget = null;
            } else {
              constraintWidget = (ConstraintWidget)constraintWidget.getTarget();
            } 
            if (constraintWidget == null) {
              constraintWidget = null;
            } else {
              constraintWidget2 = constraintWidget.getOwner();
            } 
            if (constraintWidget2 == getParent()) {
              constraintWidget2 = constraintWidget1;
              break;
            } 
            if (constraintWidget2 == null) {
              constraintAnchor1 = null;
            } else {
              constraintAnchor1 = constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM).getTarget();
            } 
            if (constraintAnchor1 != null && constraintAnchor1.getOwner() != constraintWidget1) {
              ConstraintWidget constraintWidget3 = constraintWidget1;
              continue;
            } 
            constraintWidget1 = constraintWidget2;
            continue;
          } 
        } 
        break;
      } 
    } else {
      constraintWidget = null;
    } 
    return constraintWidget;
  }
  
  public int getVerticalChainStyle() {
    return this.mVerticalChainStyle;
  }
  
  public DimensionBehaviour getVerticalDimensionBehaviour() {
    return this.mListDimensionBehaviors[1];
  }
  
  public int getVerticalMargin() {
    ConstraintAnchor constraintAnchor = this.mLeft;
    int i = 0;
    if (constraintAnchor != null)
      i = 0 + this.mTop.mMargin; 
    int j = i;
    if (this.mRight != null)
      j = i + this.mBottom.mMargin; 
    return j;
  }
  
  public int getVisibility() {
    return this.mVisibility;
  }
  
  public int getWidth() {
    return (this.mVisibility == 8) ? 0 : this.mWidth;
  }
  
  public int getX() {
    ConstraintWidget constraintWidget = this.mParent;
    return (constraintWidget != null && constraintWidget instanceof ConstraintWidgetContainer) ? (((ConstraintWidgetContainer)constraintWidget).mPaddingLeft + this.mX) : this.mX;
  }
  
  public int getY() {
    ConstraintWidget constraintWidget = this.mParent;
    return (constraintWidget != null && constraintWidget instanceof ConstraintWidgetContainer) ? (((ConstraintWidgetContainer)constraintWidget).mPaddingTop + this.mY) : this.mY;
  }
  
  public boolean hasBaseline() {
    return this.hasBaseline;
  }
  
  public void immediateConnect(ConstraintAnchor.Type paramType1, ConstraintWidget paramConstraintWidget, ConstraintAnchor.Type paramType2, int paramInt1, int paramInt2) {
    getAnchor(paramType1).connect(paramConstraintWidget.getAnchor(paramType2), paramInt1, paramInt2, true);
  }
  
  public boolean isHeightWrapContent() {
    return this.mIsHeightWrapContent;
  }
  
  public boolean isInHorizontalChain() {
    return ((this.mLeft.mTarget != null && this.mLeft.mTarget.mTarget == this.mLeft) || (this.mRight.mTarget != null && this.mRight.mTarget.mTarget == this.mRight));
  }
  
  public boolean isInPlaceholder() {
    return this.inPlaceholder;
  }
  
  public boolean isInVerticalChain() {
    return ((this.mTop.mTarget != null && this.mTop.mTarget.mTarget == this.mTop) || (this.mBottom.mTarget != null && this.mBottom.mTarget.mTarget == this.mBottom));
  }
  
  public boolean isInVirtualLayout() {
    return this.mInVirtuaLayout;
  }
  
  public boolean isRoot() {
    boolean bool;
    if (this.mParent == null) {
      bool = true;
    } else {
      bool = false;
    } 
    return bool;
  }
  
  public boolean isSpreadHeight() {
    int i = this.mMatchConstraintDefaultHeight;
    boolean bool = true;
    if (i != 0 || this.mDimensionRatio != 0.0F || this.mMatchConstraintMinHeight != 0 || this.mMatchConstraintMaxHeight != 0 || this.mListDimensionBehaviors[1] != DimensionBehaviour.MATCH_CONSTRAINT)
      bool = false; 
    return bool;
  }
  
  public boolean isSpreadWidth() {
    int i = this.mMatchConstraintDefaultWidth;
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (i == 0) {
      bool2 = bool1;
      if (this.mDimensionRatio == 0.0F) {
        bool2 = bool1;
        if (this.mMatchConstraintMinWidth == 0) {
          bool2 = bool1;
          if (this.mMatchConstraintMaxWidth == 0) {
            bool2 = bool1;
            if (this.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT)
              bool2 = true; 
          } 
        } 
      } 
    } 
    return bool2;
  }
  
  public boolean isWidthWrapContent() {
    return this.mIsWidthWrapContent;
  }
  
  public void reset() {
    this.mLeft.reset();
    this.mTop.reset();
    this.mRight.reset();
    this.mBottom.reset();
    this.mBaseline.reset();
    this.mCenterX.reset();
    this.mCenterY.reset();
    this.mCenter.reset();
    this.mParent = null;
    this.mCircleConstraintAngle = 0.0F;
    this.mWidth = 0;
    this.mHeight = 0;
    this.mDimensionRatio = 0.0F;
    this.mDimensionRatioSide = -1;
    this.mX = 0;
    this.mY = 0;
    this.mOffsetX = 0;
    this.mOffsetY = 0;
    this.mBaselineDistance = 0;
    this.mMinWidth = 0;
    this.mMinHeight = 0;
    float f = DEFAULT_BIAS;
    this.mHorizontalBiasPercent = f;
    this.mVerticalBiasPercent = f;
    this.mListDimensionBehaviors[0] = DimensionBehaviour.FIXED;
    this.mListDimensionBehaviors[1] = DimensionBehaviour.FIXED;
    this.mCompanionWidget = null;
    this.mContainerItemSkip = 0;
    this.mVisibility = 0;
    this.mType = null;
    this.mHorizontalWrapVisited = false;
    this.mVerticalWrapVisited = false;
    this.mHorizontalChainStyle = 0;
    this.mVerticalChainStyle = 0;
    this.mHorizontalChainFixedPosition = false;
    this.mVerticalChainFixedPosition = false;
    float[] arrayOfFloat = this.mWeight;
    arrayOfFloat[0] = -1.0F;
    arrayOfFloat[1] = -1.0F;
    this.mHorizontalResolution = -1;
    this.mVerticalResolution = -1;
    int[] arrayOfInt = this.mMaxDimension;
    arrayOfInt[0] = Integer.MAX_VALUE;
    arrayOfInt[1] = Integer.MAX_VALUE;
    this.mMatchConstraintDefaultWidth = 0;
    this.mMatchConstraintDefaultHeight = 0;
    this.mMatchConstraintPercentWidth = 1.0F;
    this.mMatchConstraintPercentHeight = 1.0F;
    this.mMatchConstraintMaxWidth = Integer.MAX_VALUE;
    this.mMatchConstraintMaxHeight = Integer.MAX_VALUE;
    this.mMatchConstraintMinWidth = 0;
    this.mMatchConstraintMinHeight = 0;
    this.mResolvedHasRatio = false;
    this.mResolvedDimensionRatioSide = -1;
    this.mResolvedDimensionRatio = 1.0F;
    this.mOptimizerMeasurable = false;
    this.mGroupsToSolver = false;
    boolean[] arrayOfBoolean = this.isTerminalWidget;
    arrayOfBoolean[0] = true;
    arrayOfBoolean[1] = true;
    this.mInVirtuaLayout = false;
    arrayOfBoolean = this.mIsInBarrier;
    arrayOfBoolean[0] = false;
    arrayOfBoolean[1] = false;
  }
  
  public void resetAllConstraints() {
    resetAnchors();
    setVerticalBiasPercent(DEFAULT_BIAS);
    setHorizontalBiasPercent(DEFAULT_BIAS);
  }
  
  public void resetAnchor(ConstraintAnchor paramConstraintAnchor) {
    if (getParent() != null && getParent() instanceof ConstraintWidgetContainer && ((ConstraintWidgetContainer)getParent()).handlesInternalConstraints())
      return; 
    ConstraintAnchor constraintAnchor1 = getAnchor(ConstraintAnchor.Type.LEFT);
    ConstraintAnchor constraintAnchor2 = getAnchor(ConstraintAnchor.Type.RIGHT);
    ConstraintAnchor constraintAnchor3 = getAnchor(ConstraintAnchor.Type.TOP);
    ConstraintAnchor constraintAnchor4 = getAnchor(ConstraintAnchor.Type.BOTTOM);
    ConstraintAnchor constraintAnchor5 = getAnchor(ConstraintAnchor.Type.CENTER);
    ConstraintAnchor constraintAnchor6 = getAnchor(ConstraintAnchor.Type.CENTER_X);
    ConstraintAnchor constraintAnchor7 = getAnchor(ConstraintAnchor.Type.CENTER_Y);
    if (paramConstraintAnchor == constraintAnchor5) {
      if (constraintAnchor1.isConnected() && constraintAnchor2.isConnected() && constraintAnchor1.getTarget() == constraintAnchor2.getTarget()) {
        constraintAnchor1.reset();
        constraintAnchor2.reset();
      } 
      if (constraintAnchor3.isConnected() && constraintAnchor4.isConnected() && constraintAnchor3.getTarget() == constraintAnchor4.getTarget()) {
        constraintAnchor3.reset();
        constraintAnchor4.reset();
      } 
      this.mHorizontalBiasPercent = 0.5F;
      this.mVerticalBiasPercent = 0.5F;
    } else if (paramConstraintAnchor == constraintAnchor6) {
      if (constraintAnchor1.isConnected() && constraintAnchor2.isConnected() && constraintAnchor1.getTarget().getOwner() == constraintAnchor2.getTarget().getOwner()) {
        constraintAnchor1.reset();
        constraintAnchor2.reset();
      } 
      this.mHorizontalBiasPercent = 0.5F;
    } else if (paramConstraintAnchor == constraintAnchor7) {
      if (constraintAnchor3.isConnected() && constraintAnchor4.isConnected() && constraintAnchor3.getTarget().getOwner() == constraintAnchor4.getTarget().getOwner()) {
        constraintAnchor3.reset();
        constraintAnchor4.reset();
      } 
      this.mVerticalBiasPercent = 0.5F;
    } else if (paramConstraintAnchor == constraintAnchor1 || paramConstraintAnchor == constraintAnchor2) {
      if (constraintAnchor1.isConnected() && constraintAnchor1.getTarget() == constraintAnchor2.getTarget())
        constraintAnchor5.reset(); 
    } else if ((paramConstraintAnchor == constraintAnchor3 || paramConstraintAnchor == constraintAnchor4) && constraintAnchor3.isConnected() && constraintAnchor3.getTarget() == constraintAnchor4.getTarget()) {
      constraintAnchor5.reset();
    } 
    paramConstraintAnchor.reset();
  }
  
  public void resetAnchors() {
    ConstraintWidget constraintWidget = getParent();
    if (constraintWidget != null && constraintWidget instanceof ConstraintWidgetContainer && ((ConstraintWidgetContainer)getParent()).handlesInternalConstraints())
      return; 
    byte b = 0;
    int i = this.mAnchors.size();
    while (b < i) {
      ((ConstraintAnchor)this.mAnchors.get(b)).reset();
      b++;
    } 
  }
  
  public void resetSolverVariables(Cache paramCache) {
    this.mLeft.resetSolverVariable(paramCache);
    this.mTop.resetSolverVariable(paramCache);
    this.mRight.resetSolverVariable(paramCache);
    this.mBottom.resetSolverVariable(paramCache);
    this.mBaseline.resetSolverVariable(paramCache);
    this.mCenter.resetSolverVariable(paramCache);
    this.mCenterX.resetSolverVariable(paramCache);
    this.mCenterY.resetSolverVariable(paramCache);
  }
  
  public void setBaselineDistance(int paramInt) {
    boolean bool;
    this.mBaselineDistance = paramInt;
    if (paramInt > 0) {
      bool = true;
    } else {
      bool = false;
    } 
    this.hasBaseline = bool;
  }
  
  public void setCompanionWidget(Object paramObject) {
    this.mCompanionWidget = paramObject;
  }
  
  public void setContainerItemSkip(int paramInt) {
    if (paramInt >= 0) {
      this.mContainerItemSkip = paramInt;
    } else {
      this.mContainerItemSkip = 0;
    } 
  }
  
  public void setDebugName(String paramString) {
    this.mDebugName = paramString;
  }
  
  public void setDebugSolverName(LinearSystem paramLinearSystem, String paramString) {
    this.mDebugName = paramString;
    SolverVariable solverVariable1 = paramLinearSystem.createObjectVariable(this.mLeft);
    SolverVariable solverVariable2 = paramLinearSystem.createObjectVariable(this.mTop);
    SolverVariable solverVariable3 = paramLinearSystem.createObjectVariable(this.mRight);
    SolverVariable solverVariable4 = paramLinearSystem.createObjectVariable(this.mBottom);
    StringBuilder stringBuilder3 = new StringBuilder();
    stringBuilder3.append(paramString);
    stringBuilder3.append(".left");
    solverVariable1.setName(stringBuilder3.toString());
    stringBuilder3 = new StringBuilder();
    stringBuilder3.append(paramString);
    stringBuilder3.append(".top");
    solverVariable2.setName(stringBuilder3.toString());
    StringBuilder stringBuilder1 = new StringBuilder();
    stringBuilder1.append(paramString);
    stringBuilder1.append(".right");
    solverVariable3.setName(stringBuilder1.toString());
    StringBuilder stringBuilder2 = new StringBuilder();
    stringBuilder2.append(paramString);
    stringBuilder2.append(".bottom");
    solverVariable4.setName(stringBuilder2.toString());
    if (this.mBaselineDistance > 0) {
      SolverVariable solverVariable = paramLinearSystem.createObjectVariable(this.mBaseline);
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(paramString);
      stringBuilder.append(".baseline");
      solverVariable.setName(stringBuilder.toString());
    } 
  }
  
  public void setDimension(int paramInt1, int paramInt2) {
    this.mWidth = paramInt1;
    paramInt1 = this.mWidth;
    int i = this.mMinWidth;
    if (paramInt1 < i)
      this.mWidth = i; 
    this.mHeight = paramInt2;
    paramInt1 = this.mHeight;
    paramInt2 = this.mMinHeight;
    if (paramInt1 < paramInt2)
      this.mHeight = paramInt2; 
  }
  
  public void setDimensionRatio(float paramFloat, int paramInt) {
    this.mDimensionRatio = paramFloat;
    this.mDimensionRatioSide = paramInt;
  }
  
  public void setDimensionRatio(String paramString) {
    // Byte code:
    //   0: aload_1
    //   1: ifnull -> 263
    //   4: aload_1
    //   5: invokevirtual length : ()I
    //   8: ifne -> 14
    //   11: goto -> 263
    //   14: iconst_m1
    //   15: istore_2
    //   16: aload_1
    //   17: invokevirtual length : ()I
    //   20: istore_3
    //   21: aload_1
    //   22: bipush #44
    //   24: invokevirtual indexOf : (I)I
    //   27: istore #4
    //   29: iconst_0
    //   30: istore #5
    //   32: iload_2
    //   33: istore #6
    //   35: iload #5
    //   37: istore #7
    //   39: iload #4
    //   41: ifle -> 108
    //   44: iload_2
    //   45: istore #6
    //   47: iload #5
    //   49: istore #7
    //   51: iload #4
    //   53: iload_3
    //   54: iconst_1
    //   55: isub
    //   56: if_icmpge -> 108
    //   59: aload_1
    //   60: iconst_0
    //   61: iload #4
    //   63: invokevirtual substring : (II)Ljava/lang/String;
    //   66: astore #8
    //   68: aload #8
    //   70: ldc_w 'W'
    //   73: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   76: ifeq -> 85
    //   79: iconst_0
    //   80: istore #6
    //   82: goto -> 102
    //   85: iload_2
    //   86: istore #6
    //   88: aload #8
    //   90: ldc_w 'H'
    //   93: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   96: ifeq -> 102
    //   99: iconst_1
    //   100: istore #6
    //   102: iload #4
    //   104: iconst_1
    //   105: iadd
    //   106: istore #7
    //   108: aload_1
    //   109: bipush #58
    //   111: invokevirtual indexOf : (I)I
    //   114: istore_2
    //   115: iload_2
    //   116: iflt -> 217
    //   119: iload_2
    //   120: iload_3
    //   121: iconst_1
    //   122: isub
    //   123: if_icmpge -> 217
    //   126: aload_1
    //   127: iload #7
    //   129: iload_2
    //   130: invokevirtual substring : (II)Ljava/lang/String;
    //   133: astore #8
    //   135: aload_1
    //   136: iload_2
    //   137: iconst_1
    //   138: iadd
    //   139: invokevirtual substring : (I)Ljava/lang/String;
    //   142: astore_1
    //   143: aload #8
    //   145: invokevirtual length : ()I
    //   148: ifle -> 240
    //   151: aload_1
    //   152: invokevirtual length : ()I
    //   155: ifle -> 240
    //   158: aload #8
    //   160: invokestatic parseFloat : (Ljava/lang/String;)F
    //   163: fstore #9
    //   165: aload_1
    //   166: invokestatic parseFloat : (Ljava/lang/String;)F
    //   169: fstore #10
    //   171: fload #9
    //   173: fconst_0
    //   174: fcmpl
    //   175: ifle -> 240
    //   178: fload #10
    //   180: fconst_0
    //   181: fcmpl
    //   182: ifle -> 240
    //   185: iload #6
    //   187: iconst_1
    //   188: if_icmpne -> 204
    //   191: fload #10
    //   193: fload #9
    //   195: fdiv
    //   196: invokestatic abs : (F)F
    //   199: fstore #10
    //   201: goto -> 243
    //   204: fload #9
    //   206: fload #10
    //   208: fdiv
    //   209: invokestatic abs : (F)F
    //   212: fstore #10
    //   214: goto -> 243
    //   217: aload_1
    //   218: iload #7
    //   220: invokevirtual substring : (I)Ljava/lang/String;
    //   223: astore_1
    //   224: aload_1
    //   225: invokevirtual length : ()I
    //   228: ifle -> 240
    //   231: aload_1
    //   232: invokestatic parseFloat : (Ljava/lang/String;)F
    //   235: fstore #10
    //   237: goto -> 243
    //   240: fconst_0
    //   241: fstore #10
    //   243: fload #10
    //   245: fconst_0
    //   246: fcmpl
    //   247: ifle -> 262
    //   250: aload_0
    //   251: fload #10
    //   253: putfield mDimensionRatio : F
    //   256: aload_0
    //   257: iload #6
    //   259: putfield mDimensionRatioSide : I
    //   262: return
    //   263: aload_0
    //   264: fconst_0
    //   265: putfield mDimensionRatio : F
    //   268: return
    //   269: astore_1
    //   270: goto -> 240
    // Exception table:
    //   from	to	target	type
    //   158	171	269	java/lang/NumberFormatException
    //   191	201	269	java/lang/NumberFormatException
    //   204	214	269	java/lang/NumberFormatException
    //   231	237	269	java/lang/NumberFormatException
  }
  
  public void setFrame(int paramInt1, int paramInt2, int paramInt3) {
    if (paramInt3 == 0) {
      setHorizontalDimension(paramInt1, paramInt2);
    } else if (paramInt3 == 1) {
      setVerticalDimension(paramInt1, paramInt2);
    } 
  }
  
  public void setFrame(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    // Byte code:
    //   0: iload_3
    //   1: iload_1
    //   2: isub
    //   3: istore #5
    //   5: iload #4
    //   7: iload_2
    //   8: isub
    //   9: istore_3
    //   10: aload_0
    //   11: iload_1
    //   12: putfield mX : I
    //   15: aload_0
    //   16: iload_2
    //   17: putfield mY : I
    //   20: aload_0
    //   21: getfield mVisibility : I
    //   24: bipush #8
    //   26: if_icmpne -> 40
    //   29: aload_0
    //   30: iconst_0
    //   31: putfield mWidth : I
    //   34: aload_0
    //   35: iconst_0
    //   36: putfield mHeight : I
    //   39: return
    //   40: aload_0
    //   41: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   44: iconst_0
    //   45: aaload
    //   46: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   49: if_acmpne -> 66
    //   52: aload_0
    //   53: getfield mWidth : I
    //   56: istore_1
    //   57: iload #5
    //   59: iload_1
    //   60: if_icmpge -> 66
    //   63: goto -> 69
    //   66: iload #5
    //   68: istore_1
    //   69: aload_0
    //   70: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   73: iconst_1
    //   74: aaload
    //   75: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   78: if_acmpne -> 94
    //   81: aload_0
    //   82: getfield mHeight : I
    //   85: istore_2
    //   86: iload_3
    //   87: iload_2
    //   88: if_icmpge -> 94
    //   91: goto -> 96
    //   94: iload_3
    //   95: istore_2
    //   96: aload_0
    //   97: iload_1
    //   98: putfield mWidth : I
    //   101: aload_0
    //   102: iload_2
    //   103: putfield mHeight : I
    //   106: aload_0
    //   107: getfield mHeight : I
    //   110: istore_1
    //   111: aload_0
    //   112: getfield mMinHeight : I
    //   115: istore_2
    //   116: iload_1
    //   117: iload_2
    //   118: if_icmpge -> 126
    //   121: aload_0
    //   122: iload_2
    //   123: putfield mHeight : I
    //   126: aload_0
    //   127: getfield mWidth : I
    //   130: istore_1
    //   131: aload_0
    //   132: getfield mMinWidth : I
    //   135: istore_2
    //   136: iload_1
    //   137: iload_2
    //   138: if_icmpge -> 146
    //   141: aload_0
    //   142: iload_2
    //   143: putfield mWidth : I
    //   146: return
  }
  
  public void setGoneMargin(ConstraintAnchor.Type paramType, int paramInt) {
    int i = null.$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type[paramType.ordinal()];
    if (i != 1) {
      if (i != 2) {
        if (i != 3) {
          if (i == 4)
            this.mBottom.mGoneMargin = paramInt; 
        } else {
          this.mRight.mGoneMargin = paramInt;
        } 
      } else {
        this.mTop.mGoneMargin = paramInt;
      } 
    } else {
      this.mLeft.mGoneMargin = paramInt;
    } 
  }
  
  public void setHasBaseline(boolean paramBoolean) {
    this.hasBaseline = paramBoolean;
  }
  
  public void setHeight(int paramInt) {
    this.mHeight = paramInt;
    paramInt = this.mHeight;
    int i = this.mMinHeight;
    if (paramInt < i)
      this.mHeight = i; 
  }
  
  public void setHeightWrapContent(boolean paramBoolean) {
    this.mIsHeightWrapContent = paramBoolean;
  }
  
  public void setHorizontalBiasPercent(float paramFloat) {
    this.mHorizontalBiasPercent = paramFloat;
  }
  
  public void setHorizontalChainStyle(int paramInt) {
    this.mHorizontalChainStyle = paramInt;
  }
  
  public void setHorizontalDimension(int paramInt1, int paramInt2) {
    this.mX = paramInt1;
    this.mWidth = paramInt2 - paramInt1;
    paramInt1 = this.mWidth;
    paramInt2 = this.mMinWidth;
    if (paramInt1 < paramInt2)
      this.mWidth = paramInt2; 
  }
  
  public void setHorizontalDimensionBehaviour(DimensionBehaviour paramDimensionBehaviour) {
    this.mListDimensionBehaviors[0] = paramDimensionBehaviour;
  }
  
  public void setHorizontalMatchStyle(int paramInt1, int paramInt2, int paramInt3, float paramFloat) {
    this.mMatchConstraintDefaultWidth = paramInt1;
    this.mMatchConstraintMinWidth = paramInt2;
    paramInt1 = paramInt3;
    if (paramInt3 == Integer.MAX_VALUE)
      paramInt1 = 0; 
    this.mMatchConstraintMaxWidth = paramInt1;
    this.mMatchConstraintPercentWidth = paramFloat;
    if (paramFloat > 0.0F && paramFloat < 1.0F && this.mMatchConstraintDefaultWidth == 0)
      this.mMatchConstraintDefaultWidth = 2; 
  }
  
  public void setHorizontalWeight(float paramFloat) {
    this.mWeight[0] = paramFloat;
  }
  
  protected void setInBarrier(int paramInt, boolean paramBoolean) {
    this.mIsInBarrier[paramInt] = paramBoolean;
  }
  
  public void setInPlaceholder(boolean paramBoolean) {
    this.inPlaceholder = paramBoolean;
  }
  
  public void setInVirtualLayout(boolean paramBoolean) {
    this.mInVirtuaLayout = paramBoolean;
  }
  
  public void setLength(int paramInt1, int paramInt2) {
    if (paramInt2 == 0) {
      setWidth(paramInt1);
    } else if (paramInt2 == 1) {
      setHeight(paramInt1);
    } 
  }
  
  public void setMaxHeight(int paramInt) {
    this.mMaxDimension[1] = paramInt;
  }
  
  public void setMaxWidth(int paramInt) {
    this.mMaxDimension[0] = paramInt;
  }
  
  public void setMinHeight(int paramInt) {
    if (paramInt < 0) {
      this.mMinHeight = 0;
    } else {
      this.mMinHeight = paramInt;
    } 
  }
  
  public void setMinWidth(int paramInt) {
    if (paramInt < 0) {
      this.mMinWidth = 0;
    } else {
      this.mMinWidth = paramInt;
    } 
  }
  
  public void setOffset(int paramInt1, int paramInt2) {
    this.mOffsetX = paramInt1;
    this.mOffsetY = paramInt2;
  }
  
  public void setOrigin(int paramInt1, int paramInt2) {
    this.mX = paramInt1;
    this.mY = paramInt2;
  }
  
  public void setParent(ConstraintWidget paramConstraintWidget) {
    this.mParent = paramConstraintWidget;
  }
  
  void setRelativePositioning(int paramInt1, int paramInt2) {
    if (paramInt2 == 0) {
      this.mRelX = paramInt1;
    } else if (paramInt2 == 1) {
      this.mRelY = paramInt1;
    } 
  }
  
  public void setType(String paramString) {
    this.mType = paramString;
  }
  
  public void setVerticalBiasPercent(float paramFloat) {
    this.mVerticalBiasPercent = paramFloat;
  }
  
  public void setVerticalChainStyle(int paramInt) {
    this.mVerticalChainStyle = paramInt;
  }
  
  public void setVerticalDimension(int paramInt1, int paramInt2) {
    this.mY = paramInt1;
    this.mHeight = paramInt2 - paramInt1;
    paramInt2 = this.mHeight;
    paramInt1 = this.mMinHeight;
    if (paramInt2 < paramInt1)
      this.mHeight = paramInt1; 
  }
  
  public void setVerticalDimensionBehaviour(DimensionBehaviour paramDimensionBehaviour) {
    this.mListDimensionBehaviors[1] = paramDimensionBehaviour;
  }
  
  public void setVerticalMatchStyle(int paramInt1, int paramInt2, int paramInt3, float paramFloat) {
    this.mMatchConstraintDefaultHeight = paramInt1;
    this.mMatchConstraintMinHeight = paramInt2;
    paramInt1 = paramInt3;
    if (paramInt3 == Integer.MAX_VALUE)
      paramInt1 = 0; 
    this.mMatchConstraintMaxHeight = paramInt1;
    this.mMatchConstraintPercentHeight = paramFloat;
    if (paramFloat > 0.0F && paramFloat < 1.0F && this.mMatchConstraintDefaultHeight == 0)
      this.mMatchConstraintDefaultHeight = 2; 
  }
  
  public void setVerticalWeight(float paramFloat) {
    this.mWeight[1] = paramFloat;
  }
  
  public void setVisibility(int paramInt) {
    this.mVisibility = paramInt;
  }
  
  public void setWidth(int paramInt) {
    this.mWidth = paramInt;
    int i = this.mWidth;
    paramInt = this.mMinWidth;
    if (i < paramInt)
      this.mWidth = paramInt; 
  }
  
  public void setWidthWrapContent(boolean paramBoolean) {
    this.mIsWidthWrapContent = paramBoolean;
  }
  
  public void setX(int paramInt) {
    this.mX = paramInt;
  }
  
  public void setY(int paramInt) {
    this.mY = paramInt;
  }
  
  public void setupDimensionRatio(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4) {
    if (this.mResolvedDimensionRatioSide == -1)
      if (paramBoolean3 && !paramBoolean4) {
        this.mResolvedDimensionRatioSide = 0;
      } else if (!paramBoolean3 && paramBoolean4) {
        this.mResolvedDimensionRatioSide = 1;
        if (this.mDimensionRatioSide == -1)
          this.mResolvedDimensionRatio = 1.0F / this.mResolvedDimensionRatio; 
      }  
    if (this.mResolvedDimensionRatioSide == 0 && (!this.mTop.isConnected() || !this.mBottom.isConnected())) {
      this.mResolvedDimensionRatioSide = 1;
    } else if (this.mResolvedDimensionRatioSide == 1 && (!this.mLeft.isConnected() || !this.mRight.isConnected())) {
      this.mResolvedDimensionRatioSide = 0;
    } 
    if (this.mResolvedDimensionRatioSide == -1 && (!this.mTop.isConnected() || !this.mBottom.isConnected() || !this.mLeft.isConnected() || !this.mRight.isConnected()))
      if (this.mTop.isConnected() && this.mBottom.isConnected()) {
        this.mResolvedDimensionRatioSide = 0;
      } else if (this.mLeft.isConnected() && this.mRight.isConnected()) {
        this.mResolvedDimensionRatio = 1.0F / this.mResolvedDimensionRatio;
        this.mResolvedDimensionRatioSide = 1;
      }  
    if (this.mResolvedDimensionRatioSide == -1)
      if (this.mMatchConstraintMinWidth > 0 && this.mMatchConstraintMinHeight == 0) {
        this.mResolvedDimensionRatioSide = 0;
      } else if (this.mMatchConstraintMinWidth == 0 && this.mMatchConstraintMinHeight > 0) {
        this.mResolvedDimensionRatio = 1.0F / this.mResolvedDimensionRatio;
        this.mResolvedDimensionRatioSide = 1;
      }  
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    String str1 = this.mType;
    String str2 = "";
    if (str1 != null) {
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append("type: ");
      stringBuilder1.append(this.mType);
      stringBuilder1.append(" ");
      String str = stringBuilder1.toString();
    } else {
      str1 = "";
    } 
    stringBuilder.append(str1);
    str1 = str2;
    if (this.mDebugName != null) {
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append("id: ");
      stringBuilder1.append(this.mDebugName);
      stringBuilder1.append(" ");
      str1 = stringBuilder1.toString();
    } 
    stringBuilder.append(str1);
    stringBuilder.append("(");
    stringBuilder.append(this.mX);
    stringBuilder.append(", ");
    stringBuilder.append(this.mY);
    stringBuilder.append(") - (");
    stringBuilder.append(this.mWidth);
    stringBuilder.append(" x ");
    stringBuilder.append(this.mHeight);
    stringBuilder.append(")");
    return stringBuilder.toString();
  }
  
  public void updateFromRuns(boolean paramBoolean1, boolean paramBoolean2) {
    // Byte code:
    //   0: iload_1
    //   1: aload_0
    //   2: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   5: invokevirtual isResolved : ()Z
    //   8: iand
    //   9: istore_3
    //   10: iload_2
    //   11: aload_0
    //   12: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   15: invokevirtual isResolved : ()Z
    //   18: iand
    //   19: istore #4
    //   21: aload_0
    //   22: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   25: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   28: getfield value : I
    //   31: istore #5
    //   33: aload_0
    //   34: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   37: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   40: getfield value : I
    //   43: istore #6
    //   45: aload_0
    //   46: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   49: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   52: getfield value : I
    //   55: istore #7
    //   57: aload_0
    //   58: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   61: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   64: getfield value : I
    //   67: istore #8
    //   69: iload #7
    //   71: iload #5
    //   73: isub
    //   74: iflt -> 149
    //   77: iload #8
    //   79: iload #6
    //   81: isub
    //   82: iflt -> 149
    //   85: iload #5
    //   87: ldc_w -2147483648
    //   90: if_icmpeq -> 149
    //   93: iload #5
    //   95: ldc 2147483647
    //   97: if_icmpeq -> 149
    //   100: iload #6
    //   102: ldc_w -2147483648
    //   105: if_icmpeq -> 149
    //   108: iload #6
    //   110: ldc 2147483647
    //   112: if_icmpeq -> 149
    //   115: iload #7
    //   117: ldc_w -2147483648
    //   120: if_icmpeq -> 149
    //   123: iload #7
    //   125: ldc 2147483647
    //   127: if_icmpeq -> 149
    //   130: iload #8
    //   132: ldc_w -2147483648
    //   135: if_icmpeq -> 149
    //   138: iload #8
    //   140: istore #9
    //   142: iload #8
    //   144: ldc 2147483647
    //   146: if_icmpne -> 161
    //   149: iconst_0
    //   150: istore #5
    //   152: iconst_0
    //   153: istore #6
    //   155: iconst_0
    //   156: istore #7
    //   158: iconst_0
    //   159: istore #9
    //   161: iload #7
    //   163: iload #5
    //   165: isub
    //   166: istore #7
    //   168: iload #9
    //   170: iload #6
    //   172: isub
    //   173: istore #9
    //   175: iload_3
    //   176: ifeq -> 185
    //   179: aload_0
    //   180: iload #5
    //   182: putfield mX : I
    //   185: iload #4
    //   187: ifeq -> 196
    //   190: aload_0
    //   191: iload #6
    //   193: putfield mY : I
    //   196: aload_0
    //   197: getfield mVisibility : I
    //   200: bipush #8
    //   202: if_icmpne -> 216
    //   205: aload_0
    //   206: iconst_0
    //   207: putfield mWidth : I
    //   210: aload_0
    //   211: iconst_0
    //   212: putfield mHeight : I
    //   215: return
    //   216: iload_3
    //   217: ifeq -> 283
    //   220: aload_0
    //   221: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   224: iconst_0
    //   225: aaload
    //   226: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   229: if_acmpne -> 248
    //   232: aload_0
    //   233: getfield mWidth : I
    //   236: istore #6
    //   238: iload #7
    //   240: iload #6
    //   242: if_icmpge -> 248
    //   245: goto -> 252
    //   248: iload #7
    //   250: istore #6
    //   252: aload_0
    //   253: iload #6
    //   255: putfield mWidth : I
    //   258: aload_0
    //   259: getfield mWidth : I
    //   262: istore #5
    //   264: aload_0
    //   265: getfield mMinWidth : I
    //   268: istore #6
    //   270: iload #5
    //   272: iload #6
    //   274: if_icmpge -> 283
    //   277: aload_0
    //   278: iload #6
    //   280: putfield mWidth : I
    //   283: iload #4
    //   285: ifeq -> 351
    //   288: aload_0
    //   289: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   292: iconst_1
    //   293: aaload
    //   294: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   297: if_acmpne -> 316
    //   300: aload_0
    //   301: getfield mHeight : I
    //   304: istore #6
    //   306: iload #9
    //   308: iload #6
    //   310: if_icmpge -> 316
    //   313: goto -> 320
    //   316: iload #9
    //   318: istore #6
    //   320: aload_0
    //   321: iload #6
    //   323: putfield mHeight : I
    //   326: aload_0
    //   327: getfield mHeight : I
    //   330: istore #9
    //   332: aload_0
    //   333: getfield mMinHeight : I
    //   336: istore #6
    //   338: iload #9
    //   340: iload #6
    //   342: if_icmpge -> 351
    //   345: aload_0
    //   346: iload #6
    //   348: putfield mHeight : I
    //   351: return
  }
  
  public void updateFromSolver(LinearSystem paramLinearSystem) {
    // Byte code:
    //   0: aload_1
    //   1: aload_0
    //   2: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   5: invokevirtual getObjectVariableValue : (Ljava/lang/Object;)I
    //   8: istore_2
    //   9: aload_1
    //   10: aload_0
    //   11: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   14: invokevirtual getObjectVariableValue : (Ljava/lang/Object;)I
    //   17: istore_3
    //   18: aload_1
    //   19: aload_0
    //   20: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   23: invokevirtual getObjectVariableValue : (Ljava/lang/Object;)I
    //   26: istore #4
    //   28: aload_1
    //   29: aload_0
    //   30: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   33: invokevirtual getObjectVariableValue : (Ljava/lang/Object;)I
    //   36: istore #5
    //   38: iload_2
    //   39: istore #6
    //   41: iload #4
    //   43: istore #7
    //   45: aload_0
    //   46: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   49: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   52: getfield resolved : Z
    //   55: ifeq -> 102
    //   58: iload_2
    //   59: istore #6
    //   61: iload #4
    //   63: istore #7
    //   65: aload_0
    //   66: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   69: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   72: getfield resolved : Z
    //   75: ifeq -> 102
    //   78: aload_0
    //   79: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   82: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   85: getfield value : I
    //   88: istore #6
    //   90: aload_0
    //   91: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   94: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   97: getfield value : I
    //   100: istore #7
    //   102: iload_3
    //   103: istore_2
    //   104: iload #5
    //   106: istore #4
    //   108: aload_0
    //   109: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   112: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   115: getfield resolved : Z
    //   118: ifeq -> 163
    //   121: iload_3
    //   122: istore_2
    //   123: iload #5
    //   125: istore #4
    //   127: aload_0
    //   128: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   131: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   134: getfield resolved : Z
    //   137: ifeq -> 163
    //   140: aload_0
    //   141: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   144: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   147: getfield value : I
    //   150: istore_2
    //   151: aload_0
    //   152: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   155: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   158: getfield value : I
    //   161: istore #4
    //   163: iload #7
    //   165: iload #6
    //   167: isub
    //   168: iflt -> 245
    //   171: iload #4
    //   173: iload_2
    //   174: isub
    //   175: iflt -> 245
    //   178: iload #6
    //   180: ldc_w -2147483648
    //   183: if_icmpeq -> 245
    //   186: iload #6
    //   188: ldc 2147483647
    //   190: if_icmpeq -> 245
    //   193: iload_2
    //   194: ldc_w -2147483648
    //   197: if_icmpeq -> 245
    //   200: iload_2
    //   201: ldc 2147483647
    //   203: if_icmpeq -> 245
    //   206: iload #7
    //   208: ldc_w -2147483648
    //   211: if_icmpeq -> 245
    //   214: iload #7
    //   216: ldc 2147483647
    //   218: if_icmpeq -> 245
    //   221: iload #4
    //   223: ldc_w -2147483648
    //   226: if_icmpeq -> 245
    //   229: iload_2
    //   230: istore_3
    //   231: iload #7
    //   233: istore_2
    //   234: iload #4
    //   236: istore #7
    //   238: iload #4
    //   240: ldc 2147483647
    //   242: if_icmpne -> 255
    //   245: iconst_0
    //   246: istore #7
    //   248: iconst_0
    //   249: istore #6
    //   251: iconst_0
    //   252: istore_3
    //   253: iconst_0
    //   254: istore_2
    //   255: aload_0
    //   256: iload #6
    //   258: iload_3
    //   259: iload_2
    //   260: iload #7
    //   262: invokevirtual setFrame : (IIII)V
    //   265: return
  }
  
  public enum DimensionBehaviour {
    FIXED, MATCH_CONSTRAINT, MATCH_PARENT, WRAP_CONTENT;
    
    static {
      $VALUES = new DimensionBehaviour[] { FIXED, WRAP_CONTENT, MATCH_CONSTRAINT, MATCH_PARENT };
    }
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/widgets/ConstraintWidget.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */