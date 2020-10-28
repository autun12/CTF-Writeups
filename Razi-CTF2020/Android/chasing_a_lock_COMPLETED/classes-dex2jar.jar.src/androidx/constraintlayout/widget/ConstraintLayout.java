package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.solver.Metrics;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.Guideline;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import java.util.ArrayList;
import java.util.HashMap;

public class ConstraintLayout extends ViewGroup {
  private static final boolean DEBUG = false;
  
  private static final boolean DEBUG_DRAW_CONSTRAINTS = false;
  
  public static final int DESIGN_INFO_ID = 0;
  
  private static final boolean MEASURE = false;
  
  private static final String TAG = "ConstraintLayout";
  
  private static final boolean USE_CONSTRAINTS_HELPER = true;
  
  public static final String VERSION = "ConstraintLayout-2.0.1";
  
  SparseArray<View> mChildrenByIds = new SparseArray();
  
  private ArrayList<ConstraintHelper> mConstraintHelpers = new ArrayList<ConstraintHelper>(4);
  
  protected ConstraintLayoutStates mConstraintLayoutSpec = null;
  
  private ConstraintSet mConstraintSet = null;
  
  private int mConstraintSetId = -1;
  
  private ConstraintsChangedListener mConstraintsChangedListener;
  
  private HashMap<String, Integer> mDesignIds = new HashMap<String, Integer>();
  
  protected boolean mDirtyHierarchy = true;
  
  private int mLastMeasureHeight = -1;
  
  int mLastMeasureHeightMode = 0;
  
  int mLastMeasureHeightSize = -1;
  
  private int mLastMeasureWidth = -1;
  
  int mLastMeasureWidthMode = 0;
  
  int mLastMeasureWidthSize = -1;
  
  protected ConstraintWidgetContainer mLayoutWidget = new ConstraintWidgetContainer();
  
  private int mMaxHeight = Integer.MAX_VALUE;
  
  private int mMaxWidth = Integer.MAX_VALUE;
  
  Measurer mMeasurer = new Measurer(this);
  
  private Metrics mMetrics;
  
  private int mMinHeight = 0;
  
  private int mMinWidth = 0;
  
  private int mOnMeasureHeightMeasureSpec = 0;
  
  private int mOnMeasureWidthMeasureSpec = 0;
  
  private int mOptimizationLevel = 263;
  
  private SparseArray<ConstraintWidget> mTempMapIdToWidget = new SparseArray();
  
  public ConstraintLayout(Context paramContext) {
    super(paramContext);
    init((AttributeSet)null, 0, 0);
  }
  
  public ConstraintLayout(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    init(paramAttributeSet, 0, 0);
  }
  
  public ConstraintLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    init(paramAttributeSet, paramInt, 0);
  }
  
  public ConstraintLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    init(paramAttributeSet, paramInt1, paramInt2);
  }
  
  private int getPaddingWidth() {
    int i = getPaddingLeft();
    int j = 0;
    i = Math.max(0, i) + Math.max(0, getPaddingRight());
    if (Build.VERSION.SDK_INT >= 17) {
      j = Math.max(0, getPaddingStart());
      j = Math.max(0, getPaddingEnd()) + j;
    } 
    if (j > 0)
      i = j; 
    return i;
  }
  
  private final ConstraintWidget getTargetWidget(int paramInt) {
    ConstraintWidget constraintWidget;
    if (paramInt == 0)
      return (ConstraintWidget)this.mLayoutWidget; 
    View view1 = (View)this.mChildrenByIds.get(paramInt);
    View view2 = view1;
    if (view1 == null) {
      view1 = findViewById(paramInt);
      view2 = view1;
      if (view1 != null) {
        view2 = view1;
        if (view1 != this) {
          view2 = view1;
          if (view1.getParent() == this) {
            onViewAdded(view1);
            view2 = view1;
          } 
        } 
      } 
    } 
    if (view2 == this)
      return (ConstraintWidget)this.mLayoutWidget; 
    if (view2 == null) {
      view2 = null;
    } else {
      constraintWidget = ((LayoutParams)view2.getLayoutParams()).widget;
    } 
    return constraintWidget;
  }
  
  private void init(AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    this.mLayoutWidget.setCompanionWidget(this);
    this.mLayoutWidget.setMeasurer(this.mMeasurer);
    this.mChildrenByIds.put(getId(), this);
    this.mConstraintSet = null;
    if (paramAttributeSet != null) {
      TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, R.styleable.ConstraintLayout_Layout, paramInt1, paramInt2);
      paramInt2 = typedArray.getIndexCount();
      for (paramInt1 = 0; paramInt1 < paramInt2; paramInt1++) {
        int i = typedArray.getIndex(paramInt1);
        if (i == R.styleable.ConstraintLayout_Layout_android_minWidth) {
          this.mMinWidth = typedArray.getDimensionPixelOffset(i, this.mMinWidth);
        } else if (i == R.styleable.ConstraintLayout_Layout_android_minHeight) {
          this.mMinHeight = typedArray.getDimensionPixelOffset(i, this.mMinHeight);
        } else if (i == R.styleable.ConstraintLayout_Layout_android_maxWidth) {
          this.mMaxWidth = typedArray.getDimensionPixelOffset(i, this.mMaxWidth);
        } else if (i == R.styleable.ConstraintLayout_Layout_android_maxHeight) {
          this.mMaxHeight = typedArray.getDimensionPixelOffset(i, this.mMaxHeight);
        } else if (i == R.styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
          this.mOptimizationLevel = typedArray.getInt(i, this.mOptimizationLevel);
        } else if (i == R.styleable.ConstraintLayout_Layout_layoutDescription) {
          i = typedArray.getResourceId(i, 0);
          if (i != 0)
            try {
              parseLayoutDescription(i);
            } catch (android.content.res.Resources.NotFoundException notFoundException) {
              this.mConstraintLayoutSpec = null;
            }  
        } else if (i == R.styleable.ConstraintLayout_Layout_constraintSet) {
          i = typedArray.getResourceId(i, 0);
          try {
            ConstraintSet constraintSet = new ConstraintSet();
            this();
            this.mConstraintSet = constraintSet;
            this.mConstraintSet.load(getContext(), i);
          } catch (android.content.res.Resources.NotFoundException notFoundException) {
            this.mConstraintSet = null;
          } 
          this.mConstraintSetId = i;
        } 
      } 
      typedArray.recycle();
    } 
    this.mLayoutWidget.setOptimizationLevel(this.mOptimizationLevel);
  }
  
  private void markHierarchyDirty() {
    this.mDirtyHierarchy = true;
    this.mLastMeasureWidth = -1;
    this.mLastMeasureHeight = -1;
    this.mLastMeasureWidthSize = -1;
    this.mLastMeasureHeightSize = -1;
    this.mLastMeasureWidthMode = 0;
    this.mLastMeasureHeightMode = 0;
  }
  
  private void setChildrenConstraints() {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual isInEditMode : ()Z
    //   4: istore_1
    //   5: aload_0
    //   6: invokevirtual getChildCount : ()I
    //   9: istore_2
    //   10: iconst_0
    //   11: istore_3
    //   12: iload_3
    //   13: iload_2
    //   14: if_icmpge -> 47
    //   17: aload_0
    //   18: aload_0
    //   19: iload_3
    //   20: invokevirtual getChildAt : (I)Landroid/view/View;
    //   23: invokevirtual getViewWidget : (Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   26: astore #4
    //   28: aload #4
    //   30: ifnonnull -> 36
    //   33: goto -> 41
    //   36: aload #4
    //   38: invokevirtual reset : ()V
    //   41: iinc #3, 1
    //   44: goto -> 12
    //   47: iload_1
    //   48: ifeq -> 144
    //   51: iconst_0
    //   52: istore_3
    //   53: iload_3
    //   54: iload_2
    //   55: if_icmpge -> 144
    //   58: aload_0
    //   59: iload_3
    //   60: invokevirtual getChildAt : (I)Landroid/view/View;
    //   63: astore #5
    //   65: aload_0
    //   66: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   69: aload #5
    //   71: invokevirtual getId : ()I
    //   74: invokevirtual getResourceName : (I)Ljava/lang/String;
    //   77: astore #6
    //   79: aload_0
    //   80: iconst_0
    //   81: aload #6
    //   83: aload #5
    //   85: invokevirtual getId : ()I
    //   88: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   91: invokevirtual setDesignInformation : (ILjava/lang/Object;Ljava/lang/Object;)V
    //   94: aload #6
    //   96: bipush #47
    //   98: invokevirtual indexOf : (I)I
    //   101: istore #7
    //   103: aload #6
    //   105: astore #4
    //   107: iload #7
    //   109: iconst_m1
    //   110: if_icmpeq -> 124
    //   113: aload #6
    //   115: iload #7
    //   117: iconst_1
    //   118: iadd
    //   119: invokevirtual substring : (I)Ljava/lang/String;
    //   122: astore #4
    //   124: aload_0
    //   125: aload #5
    //   127: invokevirtual getId : ()I
    //   130: invokespecial getTargetWidget : (I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   133: aload #4
    //   135: invokevirtual setDebugName : (Ljava/lang/String;)V
    //   138: iinc #3, 1
    //   141: goto -> 53
    //   144: aload_0
    //   145: getfield mConstraintSetId : I
    //   148: iconst_m1
    //   149: if_icmpeq -> 204
    //   152: iconst_0
    //   153: istore_3
    //   154: iload_3
    //   155: iload_2
    //   156: if_icmpge -> 204
    //   159: aload_0
    //   160: iload_3
    //   161: invokevirtual getChildAt : (I)Landroid/view/View;
    //   164: astore #4
    //   166: aload #4
    //   168: invokevirtual getId : ()I
    //   171: aload_0
    //   172: getfield mConstraintSetId : I
    //   175: if_icmpne -> 198
    //   178: aload #4
    //   180: instanceof androidx/constraintlayout/widget/Constraints
    //   183: ifeq -> 198
    //   186: aload_0
    //   187: aload #4
    //   189: checkcast androidx/constraintlayout/widget/Constraints
    //   192: invokevirtual getConstraintSet : ()Landroidx/constraintlayout/widget/ConstraintSet;
    //   195: putfield mConstraintSet : Landroidx/constraintlayout/widget/ConstraintSet;
    //   198: iinc #3, 1
    //   201: goto -> 154
    //   204: aload_0
    //   205: getfield mConstraintSet : Landroidx/constraintlayout/widget/ConstraintSet;
    //   208: astore #4
    //   210: aload #4
    //   212: ifnull -> 222
    //   215: aload #4
    //   217: aload_0
    //   218: iconst_1
    //   219: invokevirtual applyToInternal : (Landroidx/constraintlayout/widget/ConstraintLayout;Z)V
    //   222: aload_0
    //   223: getfield mLayoutWidget : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   226: invokevirtual removeAllChildren : ()V
    //   229: aload_0
    //   230: getfield mConstraintHelpers : Ljava/util/ArrayList;
    //   233: invokevirtual size : ()I
    //   236: istore #7
    //   238: iload #7
    //   240: ifle -> 272
    //   243: iconst_0
    //   244: istore_3
    //   245: iload_3
    //   246: iload #7
    //   248: if_icmpge -> 272
    //   251: aload_0
    //   252: getfield mConstraintHelpers : Ljava/util/ArrayList;
    //   255: iload_3
    //   256: invokevirtual get : (I)Ljava/lang/Object;
    //   259: checkcast androidx/constraintlayout/widget/ConstraintHelper
    //   262: aload_0
    //   263: invokevirtual updatePreLayout : (Landroidx/constraintlayout/widget/ConstraintLayout;)V
    //   266: iinc #3, 1
    //   269: goto -> 245
    //   272: iconst_0
    //   273: istore_3
    //   274: iload_3
    //   275: iload_2
    //   276: if_icmpge -> 309
    //   279: aload_0
    //   280: iload_3
    //   281: invokevirtual getChildAt : (I)Landroid/view/View;
    //   284: astore #4
    //   286: aload #4
    //   288: instanceof androidx/constraintlayout/widget/Placeholder
    //   291: ifeq -> 303
    //   294: aload #4
    //   296: checkcast androidx/constraintlayout/widget/Placeholder
    //   299: aload_0
    //   300: invokevirtual updatePreLayout : (Landroidx/constraintlayout/widget/ConstraintLayout;)V
    //   303: iinc #3, 1
    //   306: goto -> 274
    //   309: aload_0
    //   310: getfield mTempMapIdToWidget : Landroid/util/SparseArray;
    //   313: invokevirtual clear : ()V
    //   316: aload_0
    //   317: getfield mTempMapIdToWidget : Landroid/util/SparseArray;
    //   320: iconst_0
    //   321: aload_0
    //   322: getfield mLayoutWidget : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   325: invokevirtual put : (ILjava/lang/Object;)V
    //   328: aload_0
    //   329: getfield mTempMapIdToWidget : Landroid/util/SparseArray;
    //   332: aload_0
    //   333: invokevirtual getId : ()I
    //   336: aload_0
    //   337: getfield mLayoutWidget : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   340: invokevirtual put : (ILjava/lang/Object;)V
    //   343: iconst_0
    //   344: istore_3
    //   345: iload_3
    //   346: iload_2
    //   347: if_icmpge -> 385
    //   350: aload_0
    //   351: iload_3
    //   352: invokevirtual getChildAt : (I)Landroid/view/View;
    //   355: astore #6
    //   357: aload_0
    //   358: aload #6
    //   360: invokevirtual getViewWidget : (Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   363: astore #4
    //   365: aload_0
    //   366: getfield mTempMapIdToWidget : Landroid/util/SparseArray;
    //   369: aload #6
    //   371: invokevirtual getId : ()I
    //   374: aload #4
    //   376: invokevirtual put : (ILjava/lang/Object;)V
    //   379: iinc #3, 1
    //   382: goto -> 345
    //   385: iconst_0
    //   386: istore_3
    //   387: iload_3
    //   388: iload_2
    //   389: if_icmpge -> 455
    //   392: aload_0
    //   393: iload_3
    //   394: invokevirtual getChildAt : (I)Landroid/view/View;
    //   397: astore #6
    //   399: aload_0
    //   400: aload #6
    //   402: invokevirtual getViewWidget : (Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   405: astore #4
    //   407: aload #4
    //   409: ifnonnull -> 415
    //   412: goto -> 449
    //   415: aload #6
    //   417: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   420: checkcast androidx/constraintlayout/widget/ConstraintLayout$LayoutParams
    //   423: astore #5
    //   425: aload_0
    //   426: getfield mLayoutWidget : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   429: aload #4
    //   431: invokevirtual add : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    //   434: aload_0
    //   435: iload_1
    //   436: aload #6
    //   438: aload #4
    //   440: aload #5
    //   442: aload_0
    //   443: getfield mTempMapIdToWidget : Landroid/util/SparseArray;
    //   446: invokevirtual applyConstraintsFromLayoutParams : (ZLandroid/view/View;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    //   449: iinc #3, 1
    //   452: goto -> 387
    //   455: return
    //   456: astore #4
    //   458: goto -> 138
    // Exception table:
    //   from	to	target	type
    //   65	103	456	android/content/res/Resources$NotFoundException
    //   113	124	456	android/content/res/Resources$NotFoundException
    //   124	138	456	android/content/res/Resources$NotFoundException
  }
  
  private boolean updateHierarchy() {
    boolean bool2;
    int i = getChildCount();
    boolean bool1 = false;
    byte b = 0;
    while (true) {
      bool2 = bool1;
      if (b < i) {
        if (getChildAt(b).isLayoutRequested()) {
          bool2 = true;
          break;
        } 
        b++;
        continue;
      } 
      break;
    } 
    if (bool2)
      setChildrenConstraints(); 
    return bool2;
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams) {
    super.addView(paramView, paramInt, paramLayoutParams);
    if (Build.VERSION.SDK_INT < 14)
      onViewAdded(paramView); 
  }
  
  protected void applyConstraintsFromLayoutParams(boolean paramBoolean, View paramView, ConstraintWidget paramConstraintWidget, LayoutParams paramLayoutParams, SparseArray<ConstraintWidget> paramSparseArray) {
    paramLayoutParams.validate();
    paramLayoutParams.helped = false;
    paramConstraintWidget.setVisibility(paramView.getVisibility());
    if (paramLayoutParams.isInPlaceholder) {
      paramConstraintWidget.setInPlaceholder(true);
      paramConstraintWidget.setVisibility(8);
    } 
    paramConstraintWidget.setCompanionWidget(paramView);
    if (paramView instanceof ConstraintHelper)
      ((ConstraintHelper)paramView).resolveRtl(paramConstraintWidget, this.mLayoutWidget.isRtl()); 
    if (paramLayoutParams.isGuideline) {
      Guideline guideline = (Guideline)paramConstraintWidget;
      int i = paramLayoutParams.resolvedGuideBegin;
      int j = paramLayoutParams.resolvedGuideEnd;
      float f = paramLayoutParams.resolvedGuidePercent;
      if (Build.VERSION.SDK_INT < 17) {
        i = paramLayoutParams.guideBegin;
        j = paramLayoutParams.guideEnd;
        f = paramLayoutParams.guidePercent;
      } 
      if (f != -1.0F) {
        guideline.setGuidePercent(f);
      } else if (i != -1) {
        guideline.setGuideBegin(i);
      } else if (j != -1) {
        guideline.setGuideEnd(j);
      } 
    } else {
      int k = paramLayoutParams.resolvedLeftToLeft;
      int i = paramLayoutParams.resolvedLeftToRight;
      int m = paramLayoutParams.resolvedRightToLeft;
      int n = paramLayoutParams.resolvedRightToRight;
      int j = paramLayoutParams.resolveGoneLeftMargin;
      int i1 = paramLayoutParams.resolveGoneRightMargin;
      float f = paramLayoutParams.resolvedHorizontalBias;
      if (Build.VERSION.SDK_INT < 17) {
        n = paramLayoutParams.leftToLeft;
        i1 = paramLayoutParams.leftToRight;
        m = paramLayoutParams.rightToLeft;
        int i2 = paramLayoutParams.rightToRight;
        int i3 = paramLayoutParams.goneLeftMargin;
        k = paramLayoutParams.goneRightMargin;
        f = paramLayoutParams.horizontalBias;
        j = n;
        i = i1;
        if (n == -1) {
          j = n;
          i = i1;
          if (i1 == -1)
            if (paramLayoutParams.startToStart != -1) {
              j = paramLayoutParams.startToStart;
              i = i1;
            } else {
              j = n;
              i = i1;
              if (paramLayoutParams.startToEnd != -1) {
                i = paramLayoutParams.startToEnd;
                j = n;
              } 
            }  
        } 
        i1 = m;
        n = i2;
        if (m == -1) {
          i1 = m;
          n = i2;
          if (i2 == -1)
            if (paramLayoutParams.endToStart != -1) {
              i1 = paramLayoutParams.endToStart;
              n = i2;
            } else {
              i1 = m;
              n = i2;
              if (paramLayoutParams.endToEnd != -1) {
                n = paramLayoutParams.endToEnd;
                i1 = m;
              } 
            }  
        } 
        m = i1;
        i1 = k;
        k = j;
        j = i3;
      } 
      if (paramLayoutParams.circleConstraint != -1) {
        ConstraintWidget constraintWidget = (ConstraintWidget)paramSparseArray.get(paramLayoutParams.circleConstraint);
        if (constraintWidget != null)
          paramConstraintWidget.connectCircularConstraint(constraintWidget, paramLayoutParams.circleAngle, paramLayoutParams.circleRadius); 
      } else {
        if (k != -1) {
          ConstraintWidget constraintWidget = (ConstraintWidget)paramSparseArray.get(k);
          if (constraintWidget != null)
            paramConstraintWidget.immediateConnect(ConstraintAnchor.Type.LEFT, constraintWidget, ConstraintAnchor.Type.LEFT, paramLayoutParams.leftMargin, j); 
        } else if (i != -1) {
          ConstraintWidget constraintWidget = (ConstraintWidget)paramSparseArray.get(i);
          if (constraintWidget != null)
            paramConstraintWidget.immediateConnect(ConstraintAnchor.Type.LEFT, constraintWidget, ConstraintAnchor.Type.RIGHT, paramLayoutParams.leftMargin, j); 
        } 
        if (m != -1) {
          ConstraintWidget constraintWidget = (ConstraintWidget)paramSparseArray.get(m);
          if (constraintWidget != null)
            paramConstraintWidget.immediateConnect(ConstraintAnchor.Type.RIGHT, constraintWidget, ConstraintAnchor.Type.LEFT, paramLayoutParams.rightMargin, i1); 
        } else if (n != -1) {
          ConstraintWidget constraintWidget = (ConstraintWidget)paramSparseArray.get(n);
          if (constraintWidget != null)
            paramConstraintWidget.immediateConnect(ConstraintAnchor.Type.RIGHT, constraintWidget, ConstraintAnchor.Type.RIGHT, paramLayoutParams.rightMargin, i1); 
        } 
        if (paramLayoutParams.topToTop != -1) {
          ConstraintWidget constraintWidget = (ConstraintWidget)paramSparseArray.get(paramLayoutParams.topToTop);
          if (constraintWidget != null)
            paramConstraintWidget.immediateConnect(ConstraintAnchor.Type.TOP, constraintWidget, ConstraintAnchor.Type.TOP, paramLayoutParams.topMargin, paramLayoutParams.goneTopMargin); 
        } else if (paramLayoutParams.topToBottom != -1) {
          ConstraintWidget constraintWidget = (ConstraintWidget)paramSparseArray.get(paramLayoutParams.topToBottom);
          if (constraintWidget != null)
            paramConstraintWidget.immediateConnect(ConstraintAnchor.Type.TOP, constraintWidget, ConstraintAnchor.Type.BOTTOM, paramLayoutParams.topMargin, paramLayoutParams.goneTopMargin); 
        } 
        if (paramLayoutParams.bottomToTop != -1) {
          ConstraintWidget constraintWidget = (ConstraintWidget)paramSparseArray.get(paramLayoutParams.bottomToTop);
          if (constraintWidget != null)
            paramConstraintWidget.immediateConnect(ConstraintAnchor.Type.BOTTOM, constraintWidget, ConstraintAnchor.Type.TOP, paramLayoutParams.bottomMargin, paramLayoutParams.goneBottomMargin); 
        } else if (paramLayoutParams.bottomToBottom != -1) {
          ConstraintWidget constraintWidget = (ConstraintWidget)paramSparseArray.get(paramLayoutParams.bottomToBottom);
          if (constraintWidget != null)
            paramConstraintWidget.immediateConnect(ConstraintAnchor.Type.BOTTOM, constraintWidget, ConstraintAnchor.Type.BOTTOM, paramLayoutParams.bottomMargin, paramLayoutParams.goneBottomMargin); 
        } 
        if (paramLayoutParams.baselineToBaseline != -1) {
          paramView = (View)this.mChildrenByIds.get(paramLayoutParams.baselineToBaseline);
          ConstraintWidget constraintWidget = (ConstraintWidget)paramSparseArray.get(paramLayoutParams.baselineToBaseline);
          if (constraintWidget != null && paramView != null && paramView.getLayoutParams() instanceof LayoutParams) {
            LayoutParams layoutParams = (LayoutParams)paramView.getLayoutParams();
            paramLayoutParams.needsBaseline = true;
            layoutParams.needsBaseline = true;
            paramConstraintWidget.getAnchor(ConstraintAnchor.Type.BASELINE).connect(constraintWidget.getAnchor(ConstraintAnchor.Type.BASELINE), 0, -1, true);
            paramConstraintWidget.setHasBaseline(true);
            layoutParams.widget.setHasBaseline(true);
            paramConstraintWidget.getAnchor(ConstraintAnchor.Type.TOP).reset();
            paramConstraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM).reset();
          } 
        } 
        if (f >= 0.0F)
          paramConstraintWidget.setHorizontalBiasPercent(f); 
        if (paramLayoutParams.verticalBias >= 0.0F)
          paramConstraintWidget.setVerticalBiasPercent(paramLayoutParams.verticalBias); 
      } 
      if (paramBoolean && (paramLayoutParams.editorAbsoluteX != -1 || paramLayoutParams.editorAbsoluteY != -1))
        paramConstraintWidget.setOrigin(paramLayoutParams.editorAbsoluteX, paramLayoutParams.editorAbsoluteY); 
      if (!paramLayoutParams.horizontalDimensionFixed) {
        if (paramLayoutParams.width == -1) {
          if (paramLayoutParams.constrainedWidth) {
            paramConstraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
          } else {
            paramConstraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
          } 
          (paramConstraintWidget.getAnchor(ConstraintAnchor.Type.LEFT)).mMargin = paramLayoutParams.leftMargin;
          (paramConstraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT)).mMargin = paramLayoutParams.rightMargin;
        } else {
          paramConstraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
          paramConstraintWidget.setWidth(0);
        } 
      } else {
        paramConstraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
        paramConstraintWidget.setWidth(paramLayoutParams.width);
        if (paramLayoutParams.width == -2)
          paramConstraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT); 
      } 
      if (!paramLayoutParams.verticalDimensionFixed) {
        if (paramLayoutParams.height == -1) {
          if (paramLayoutParams.constrainedHeight) {
            paramConstraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
          } else {
            paramConstraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
          } 
          (paramConstraintWidget.getAnchor(ConstraintAnchor.Type.TOP)).mMargin = paramLayoutParams.topMargin;
          (paramConstraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM)).mMargin = paramLayoutParams.bottomMargin;
        } else {
          paramConstraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
          paramConstraintWidget.setHeight(0);
        } 
      } else {
        paramConstraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
        paramConstraintWidget.setHeight(paramLayoutParams.height);
        if (paramLayoutParams.height == -2)
          paramConstraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT); 
      } 
      paramConstraintWidget.setDimensionRatio(paramLayoutParams.dimensionRatio);
      paramConstraintWidget.setHorizontalWeight(paramLayoutParams.horizontalWeight);
      paramConstraintWidget.setVerticalWeight(paramLayoutParams.verticalWeight);
      paramConstraintWidget.setHorizontalChainStyle(paramLayoutParams.horizontalChainStyle);
      paramConstraintWidget.setVerticalChainStyle(paramLayoutParams.verticalChainStyle);
      paramConstraintWidget.setHorizontalMatchStyle(paramLayoutParams.matchConstraintDefaultWidth, paramLayoutParams.matchConstraintMinWidth, paramLayoutParams.matchConstraintMaxWidth, paramLayoutParams.matchConstraintPercentWidth);
      paramConstraintWidget.setVerticalMatchStyle(paramLayoutParams.matchConstraintDefaultHeight, paramLayoutParams.matchConstraintMinHeight, paramLayoutParams.matchConstraintMaxHeight, paramLayoutParams.matchConstraintPercentHeight);
    } 
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  protected void dispatchDraw(Canvas paramCanvas) {
    ArrayList<ConstraintHelper> arrayList = this.mConstraintHelpers;
    if (arrayList != null) {
      int i = arrayList.size();
      if (i > 0)
        for (byte b = 0; b < i; b++)
          ((ConstraintHelper)this.mConstraintHelpers.get(b)).updatePreDraw(this);  
    } 
    super.dispatchDraw(paramCanvas);
    if (isInEditMode()) {
      int i = getChildCount();
      float f1 = getWidth();
      float f2 = getHeight();
      for (byte b = 0; b < i; b++) {
        View view = getChildAt(b);
        if (view.getVisibility() != 8) {
          Object object = view.getTag();
          if (object != null && object instanceof String) {
            object = ((String)object).split(",");
            if (object.length == 4) {
              int j = Integer.parseInt((String)object[0]);
              int k = Integer.parseInt((String)object[1]);
              int m = Integer.parseInt((String)object[2]);
              int n = Integer.parseInt((String)object[3]);
              j = (int)(j / 1080.0F * f1);
              k = (int)(k / 1920.0F * f2);
              m = (int)(m / 1080.0F * f1);
              n = (int)(n / 1920.0F * f2);
              object = new Paint();
              object.setColor(-65536);
              float f3 = j;
              float f4 = k;
              float f5 = (j + m);
              paramCanvas.drawLine(f3, f4, f5, f4, (Paint)object);
              float f6 = (k + n);
              paramCanvas.drawLine(f5, f4, f5, f6, (Paint)object);
              paramCanvas.drawLine(f5, f6, f3, f6, (Paint)object);
              paramCanvas.drawLine(f3, f6, f3, f4, (Paint)object);
              object.setColor(-16711936);
              paramCanvas.drawLine(f3, f4, f5, f6, (Paint)object);
              paramCanvas.drawLine(f3, f6, f5, f4, (Paint)object);
            } 
          } 
        } 
      } 
    } 
  }
  
  public void fillMetrics(Metrics paramMetrics) {
    this.mMetrics = paramMetrics;
    this.mLayoutWidget.fillMetrics(paramMetrics);
  }
  
  public void forceLayout() {
    markHierarchyDirty();
    super.forceLayout();
  }
  
  protected LayoutParams generateDefaultLayoutParams() {
    return new LayoutParams(-2, -2);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return (ViewGroup.LayoutParams)new LayoutParams(paramLayoutParams);
  }
  
  public LayoutParams generateLayoutParams(AttributeSet paramAttributeSet) {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  public Object getDesignInformation(int paramInt, Object paramObject) {
    if (paramInt == 0 && paramObject instanceof String) {
      paramObject = paramObject;
      HashMap<String, Integer> hashMap = this.mDesignIds;
      if (hashMap != null && hashMap.containsKey(paramObject))
        return this.mDesignIds.get(paramObject); 
    } 
    return null;
  }
  
  public int getMaxHeight() {
    return this.mMaxHeight;
  }
  
  public int getMaxWidth() {
    return this.mMaxWidth;
  }
  
  public int getMinHeight() {
    return this.mMinHeight;
  }
  
  public int getMinWidth() {
    return this.mMinWidth;
  }
  
  public int getOptimizationLevel() {
    return this.mLayoutWidget.getOptimizationLevel();
  }
  
  public View getViewById(int paramInt) {
    return (View)this.mChildrenByIds.get(paramInt);
  }
  
  public final ConstraintWidget getViewWidget(View paramView) {
    ConstraintWidget constraintWidget;
    if (paramView == this)
      return (ConstraintWidget)this.mLayoutWidget; 
    if (paramView == null) {
      paramView = null;
    } else {
      constraintWidget = ((LayoutParams)paramView.getLayoutParams()).widget;
    } 
    return constraintWidget;
  }
  
  protected boolean isRtl() {
    int i = Build.VERSION.SDK_INT;
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (i >= 17) {
      if (((getContext().getApplicationInfo()).flags & 0x400000) != 0) {
        i = 1;
      } else {
        i = 0;
      } 
      bool2 = bool1;
      if (i != 0) {
        bool2 = bool1;
        if (1 == getLayoutDirection())
          bool2 = true; 
      } 
    } 
    return bool2;
  }
  
  public void loadLayoutDescription(int paramInt) {
    if (paramInt != 0) {
      try {
        ConstraintLayoutStates constraintLayoutStates = new ConstraintLayoutStates();
        this(getContext(), this, paramInt);
        this.mConstraintLayoutSpec = constraintLayoutStates;
      } catch (android.content.res.Resources.NotFoundException notFoundException) {
        this.mConstraintLayoutSpec = null;
      } 
    } else {
      this.mConstraintLayoutSpec = null;
    } 
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    paramInt3 = getChildCount();
    paramBoolean = isInEditMode();
    paramInt2 = 0;
    for (paramInt1 = 0; paramInt1 < paramInt3; paramInt1++) {
      View view = getChildAt(paramInt1);
      LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
      ConstraintWidget constraintWidget = layoutParams.widget;
      if ((view.getVisibility() != 8 || layoutParams.isGuideline || layoutParams.isHelper || layoutParams.isVirtualGroup || paramBoolean) && !layoutParams.isInPlaceholder) {
        int i = constraintWidget.getX();
        int j = constraintWidget.getY();
        paramInt4 = constraintWidget.getWidth() + i;
        int k = constraintWidget.getHeight() + j;
        view.layout(i, j, paramInt4, k);
        if (view instanceof Placeholder) {
          view = ((Placeholder)view).getContent();
          if (view != null) {
            view.setVisibility(0);
            view.layout(i, j, paramInt4, k);
          } 
        } 
      } 
    } 
    paramInt3 = this.mConstraintHelpers.size();
    if (paramInt3 > 0)
      for (paramInt1 = paramInt2; paramInt1 < paramInt3; paramInt1++)
        ((ConstraintHelper)this.mConstraintHelpers.get(paramInt1)).updatePostLayout(this);  
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    this.mOnMeasureWidthMeasureSpec = paramInt1;
    this.mOnMeasureHeightMeasureSpec = paramInt2;
    this.mLayoutWidget.setRtl(isRtl());
    if (this.mDirtyHierarchy) {
      this.mDirtyHierarchy = false;
      if (updateHierarchy())
        this.mLayoutWidget.updateHierarchy(); 
    } 
    resolveSystem(this.mLayoutWidget, this.mOptimizationLevel, paramInt1, paramInt2);
    resolveMeasuredDimension(paramInt1, paramInt2, this.mLayoutWidget.getWidth(), this.mLayoutWidget.getHeight(), this.mLayoutWidget.isWidthMeasuredTooSmall(), this.mLayoutWidget.isHeightMeasuredTooSmall());
  }
  
  public void onViewAdded(View paramView) {
    if (Build.VERSION.SDK_INT >= 14)
      super.onViewAdded(paramView); 
    ConstraintWidget constraintWidget = getViewWidget(paramView);
    if (paramView instanceof Guideline && !(constraintWidget instanceof Guideline)) {
      LayoutParams layoutParams = (LayoutParams)paramView.getLayoutParams();
      layoutParams.widget = (ConstraintWidget)new Guideline();
      layoutParams.isGuideline = true;
      ((Guideline)layoutParams.widget).setOrientation(layoutParams.orientation);
    } 
    if (paramView instanceof ConstraintHelper) {
      ConstraintHelper constraintHelper = (ConstraintHelper)paramView;
      constraintHelper.validateParams();
      ((LayoutParams)paramView.getLayoutParams()).isHelper = true;
      if (!this.mConstraintHelpers.contains(constraintHelper))
        this.mConstraintHelpers.add(constraintHelper); 
    } 
    this.mChildrenByIds.put(paramView.getId(), paramView);
    this.mDirtyHierarchy = true;
  }
  
  public void onViewRemoved(View paramView) {
    if (Build.VERSION.SDK_INT >= 14)
      super.onViewRemoved(paramView); 
    this.mChildrenByIds.remove(paramView.getId());
    ConstraintWidget constraintWidget = getViewWidget(paramView);
    this.mLayoutWidget.remove(constraintWidget);
    this.mConstraintHelpers.remove(paramView);
    this.mDirtyHierarchy = true;
  }
  
  protected void parseLayoutDescription(int paramInt) {
    this.mConstraintLayoutSpec = new ConstraintLayoutStates(getContext(), this, paramInt);
  }
  
  public void removeView(View paramView) {
    super.removeView(paramView);
    if (Build.VERSION.SDK_INT < 14)
      onViewRemoved(paramView); 
  }
  
  public void requestLayout() {
    markHierarchyDirty();
    super.requestLayout();
  }
  
  protected void resolveMeasuredDimension(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2) {
    int i = this.mMeasurer.paddingHeight;
    paramInt3 += this.mMeasurer.paddingWidth;
    paramInt4 += i;
    if (Build.VERSION.SDK_INT >= 11) {
      paramInt1 = resolveSizeAndState(paramInt3, paramInt1, 0);
      paramInt3 = resolveSizeAndState(paramInt4, paramInt2, 0);
      paramInt2 = Math.min(this.mMaxWidth, paramInt1 & 0xFFFFFF);
      paramInt3 = Math.min(this.mMaxHeight, paramInt3 & 0xFFFFFF);
      paramInt1 = paramInt2;
      if (paramBoolean1)
        paramInt1 = paramInt2 | 0x1000000; 
      paramInt2 = paramInt3;
      if (paramBoolean2)
        paramInt2 = paramInt3 | 0x1000000; 
      setMeasuredDimension(paramInt1, paramInt2);
      this.mLastMeasureWidth = paramInt1;
      this.mLastMeasureHeight = paramInt2;
    } else {
      setMeasuredDimension(paramInt3, paramInt4);
      this.mLastMeasureWidth = paramInt3;
      this.mLastMeasureHeight = paramInt4;
    } 
  }
  
  protected void resolveSystem(ConstraintWidgetContainer paramConstraintWidgetContainer, int paramInt1, int paramInt2, int paramInt3) {
    int i = View.MeasureSpec.getMode(paramInt2);
    int j = View.MeasureSpec.getSize(paramInt2);
    int k = View.MeasureSpec.getMode(paramInt3);
    int m = View.MeasureSpec.getSize(paramInt3);
    int n = Math.max(0, getPaddingTop());
    int i1 = Math.max(0, getPaddingBottom());
    int i2 = n + i1;
    int i3 = getPaddingWidth();
    this.mMeasurer.captureLayoutInfos(paramInt2, paramInt3, n, i1, i3, i2);
    if (Build.VERSION.SDK_INT >= 17) {
      paramInt2 = Math.max(0, getPaddingStart());
      paramInt3 = Math.max(0, getPaddingEnd());
      if (paramInt2 > 0 || paramInt3 > 0) {
        if (isRtl())
          paramInt2 = paramInt3; 
      } else {
        paramInt2 = Math.max(0, getPaddingLeft());
      } 
    } else {
      paramInt2 = Math.max(0, getPaddingLeft());
    } 
    paramInt3 = j - i3;
    m -= i2;
    setSelfDimensionBehaviour(paramConstraintWidgetContainer, i, paramInt3, k, m);
    paramConstraintWidgetContainer.measure(paramInt1, i, paramInt3, k, m, this.mLastMeasureWidth, this.mLastMeasureHeight, paramInt2, n);
  }
  
  public void setConstraintSet(ConstraintSet paramConstraintSet) {
    this.mConstraintSet = paramConstraintSet;
  }
  
  public void setDesignInformation(int paramInt, Object paramObject1, Object paramObject2) {
    if (paramInt == 0 && paramObject1 instanceof String && paramObject2 instanceof Integer) {
      if (this.mDesignIds == null)
        this.mDesignIds = new HashMap<String, Integer>(); 
      String str = (String)paramObject1;
      paramInt = str.indexOf("/");
      paramObject1 = str;
      if (paramInt != -1)
        paramObject1 = str.substring(paramInt + 1); 
      paramInt = ((Integer)paramObject2).intValue();
      this.mDesignIds.put(paramObject1, Integer.valueOf(paramInt));
    } 
  }
  
  public void setId(int paramInt) {
    this.mChildrenByIds.remove(getId());
    super.setId(paramInt);
    this.mChildrenByIds.put(getId(), this);
  }
  
  public void setMaxHeight(int paramInt) {
    if (paramInt == this.mMaxHeight)
      return; 
    this.mMaxHeight = paramInt;
    requestLayout();
  }
  
  public void setMaxWidth(int paramInt) {
    if (paramInt == this.mMaxWidth)
      return; 
    this.mMaxWidth = paramInt;
    requestLayout();
  }
  
  public void setMinHeight(int paramInt) {
    if (paramInt == this.mMinHeight)
      return; 
    this.mMinHeight = paramInt;
    requestLayout();
  }
  
  public void setMinWidth(int paramInt) {
    if (paramInt == this.mMinWidth)
      return; 
    this.mMinWidth = paramInt;
    requestLayout();
  }
  
  public void setOnConstraintsChanged(ConstraintsChangedListener paramConstraintsChangedListener) {
    this.mConstraintsChangedListener = paramConstraintsChangedListener;
    ConstraintLayoutStates constraintLayoutStates = this.mConstraintLayoutSpec;
    if (constraintLayoutStates != null)
      constraintLayoutStates.setOnConstraintsChanged(paramConstraintsChangedListener); 
  }
  
  public void setOptimizationLevel(int paramInt) {
    this.mOptimizationLevel = paramInt;
    this.mLayoutWidget.setOptimizationLevel(paramInt);
  }
  
  protected void setSelfDimensionBehaviour(ConstraintWidgetContainer paramConstraintWidgetContainer, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mMeasurer : Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
    //   4: getfield paddingHeight : I
    //   7: istore #6
    //   9: aload_0
    //   10: getfield mMeasurer : Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
    //   13: getfield paddingWidth : I
    //   16: istore #7
    //   18: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   21: astore #8
    //   23: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   26: astore #9
    //   28: aload_0
    //   29: invokevirtual getChildCount : ()I
    //   32: istore #10
    //   34: iload_2
    //   35: ldc_w -2147483648
    //   38: if_icmpeq -> 102
    //   41: iload_2
    //   42: ifeq -> 72
    //   45: iload_2
    //   46: ldc_w 1073741824
    //   49: if_icmpeq -> 57
    //   52: iconst_0
    //   53: istore_3
    //   54: goto -> 129
    //   57: aload_0
    //   58: getfield mMaxWidth : I
    //   61: iload #7
    //   63: isub
    //   64: iload_3
    //   65: invokestatic min : (II)I
    //   68: istore_3
    //   69: goto -> 129
    //   72: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   75: astore #11
    //   77: aload #11
    //   79: astore #8
    //   81: iload #10
    //   83: ifne -> 52
    //   86: iconst_0
    //   87: aload_0
    //   88: getfield mMinWidth : I
    //   91: invokestatic max : (II)I
    //   94: istore_3
    //   95: aload #11
    //   97: astore #8
    //   99: goto -> 129
    //   102: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   105: astore #11
    //   107: aload #11
    //   109: astore #8
    //   111: iload #10
    //   113: ifne -> 129
    //   116: iconst_0
    //   117: aload_0
    //   118: getfield mMinWidth : I
    //   121: invokestatic max : (II)I
    //   124: istore_3
    //   125: aload #11
    //   127: astore #8
    //   129: iload #4
    //   131: ldc_w -2147483648
    //   134: if_icmpeq -> 204
    //   137: iload #4
    //   139: ifeq -> 173
    //   142: iload #4
    //   144: ldc_w 1073741824
    //   147: if_icmpeq -> 156
    //   150: iconst_0
    //   151: istore #5
    //   153: goto -> 232
    //   156: aload_0
    //   157: getfield mMaxHeight : I
    //   160: iload #6
    //   162: isub
    //   163: iload #5
    //   165: invokestatic min : (II)I
    //   168: istore #5
    //   170: goto -> 232
    //   173: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   176: astore #11
    //   178: aload #11
    //   180: astore #9
    //   182: iload #10
    //   184: ifne -> 150
    //   187: iconst_0
    //   188: aload_0
    //   189: getfield mMinHeight : I
    //   192: invokestatic max : (II)I
    //   195: istore #5
    //   197: aload #11
    //   199: astore #9
    //   201: goto -> 232
    //   204: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   207: astore #11
    //   209: aload #11
    //   211: astore #9
    //   213: iload #10
    //   215: ifne -> 232
    //   218: iconst_0
    //   219: aload_0
    //   220: getfield mMinHeight : I
    //   223: invokestatic max : (II)I
    //   226: istore #5
    //   228: aload #11
    //   230: astore #9
    //   232: iload_3
    //   233: aload_1
    //   234: invokevirtual getWidth : ()I
    //   237: if_icmpne -> 249
    //   240: iload #5
    //   242: aload_1
    //   243: invokevirtual getHeight : ()I
    //   246: if_icmpeq -> 253
    //   249: aload_1
    //   250: invokevirtual invalidateMeasures : ()V
    //   253: aload_1
    //   254: iconst_0
    //   255: invokevirtual setX : (I)V
    //   258: aload_1
    //   259: iconst_0
    //   260: invokevirtual setY : (I)V
    //   263: aload_1
    //   264: aload_0
    //   265: getfield mMaxWidth : I
    //   268: iload #7
    //   270: isub
    //   271: invokevirtual setMaxWidth : (I)V
    //   274: aload_1
    //   275: aload_0
    //   276: getfield mMaxHeight : I
    //   279: iload #6
    //   281: isub
    //   282: invokevirtual setMaxHeight : (I)V
    //   285: aload_1
    //   286: iconst_0
    //   287: invokevirtual setMinWidth : (I)V
    //   290: aload_1
    //   291: iconst_0
    //   292: invokevirtual setMinHeight : (I)V
    //   295: aload_1
    //   296: aload #8
    //   298: invokevirtual setHorizontalDimensionBehaviour : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    //   301: aload_1
    //   302: iload_3
    //   303: invokevirtual setWidth : (I)V
    //   306: aload_1
    //   307: aload #9
    //   309: invokevirtual setVerticalDimensionBehaviour : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    //   312: aload_1
    //   313: iload #5
    //   315: invokevirtual setHeight : (I)V
    //   318: aload_1
    //   319: aload_0
    //   320: getfield mMinWidth : I
    //   323: iload #7
    //   325: isub
    //   326: invokevirtual setMinWidth : (I)V
    //   329: aload_1
    //   330: aload_0
    //   331: getfield mMinHeight : I
    //   334: iload #6
    //   336: isub
    //   337: invokevirtual setMinHeight : (I)V
    //   340: return
  }
  
  public void setState(int paramInt1, int paramInt2, int paramInt3) {
    ConstraintLayoutStates constraintLayoutStates = this.mConstraintLayoutSpec;
    if (constraintLayoutStates != null)
      constraintLayoutStates.updateConstraints(paramInt1, paramInt2, paramInt3); 
  }
  
  public boolean shouldDelayChildPressedState() {
    return false;
  }
  
  public static class LayoutParams extends ViewGroup.MarginLayoutParams {
    public static final int BASELINE = 5;
    
    public static final int BOTTOM = 4;
    
    public static final int CHAIN_PACKED = 2;
    
    public static final int CHAIN_SPREAD = 0;
    
    public static final int CHAIN_SPREAD_INSIDE = 1;
    
    public static final int END = 7;
    
    public static final int HORIZONTAL = 0;
    
    public static final int LEFT = 1;
    
    public static final int MATCH_CONSTRAINT = 0;
    
    public static final int MATCH_CONSTRAINT_PERCENT = 2;
    
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    
    public static final int PARENT_ID = 0;
    
    public static final int RIGHT = 2;
    
    public static final int START = 6;
    
    public static final int TOP = 3;
    
    public static final int UNSET = -1;
    
    public static final int VERTICAL = 1;
    
    public int baselineToBaseline = -1;
    
    public int bottomToBottom = -1;
    
    public int bottomToTop = -1;
    
    public float circleAngle = 0.0F;
    
    public int circleConstraint = -1;
    
    public int circleRadius = 0;
    
    public boolean constrainedHeight = false;
    
    public boolean constrainedWidth = false;
    
    public String constraintTag = null;
    
    public String dimensionRatio = null;
    
    int dimensionRatioSide = 1;
    
    float dimensionRatioValue = 0.0F;
    
    public int editorAbsoluteX = -1;
    
    public int editorAbsoluteY = -1;
    
    public int endToEnd = -1;
    
    public int endToStart = -1;
    
    public int goneBottomMargin = -1;
    
    public int goneEndMargin = -1;
    
    public int goneLeftMargin = -1;
    
    public int goneRightMargin = -1;
    
    public int goneStartMargin = -1;
    
    public int goneTopMargin = -1;
    
    public int guideBegin = -1;
    
    public int guideEnd = -1;
    
    public float guidePercent = -1.0F;
    
    public boolean helped = false;
    
    public float horizontalBias = 0.5F;
    
    public int horizontalChainStyle = 0;
    
    boolean horizontalDimensionFixed = true;
    
    public float horizontalWeight = -1.0F;
    
    boolean isGuideline = false;
    
    boolean isHelper = false;
    
    boolean isInPlaceholder = false;
    
    boolean isVirtualGroup = false;
    
    public int leftToLeft = -1;
    
    public int leftToRight = -1;
    
    public int matchConstraintDefaultHeight = 0;
    
    public int matchConstraintDefaultWidth = 0;
    
    public int matchConstraintMaxHeight = 0;
    
    public int matchConstraintMaxWidth = 0;
    
    public int matchConstraintMinHeight = 0;
    
    public int matchConstraintMinWidth = 0;
    
    public float matchConstraintPercentHeight = 1.0F;
    
    public float matchConstraintPercentWidth = 1.0F;
    
    boolean needsBaseline = false;
    
    public int orientation = -1;
    
    int resolveGoneLeftMargin = -1;
    
    int resolveGoneRightMargin = -1;
    
    int resolvedGuideBegin;
    
    int resolvedGuideEnd;
    
    float resolvedGuidePercent;
    
    float resolvedHorizontalBias = 0.5F;
    
    int resolvedLeftToLeft = -1;
    
    int resolvedLeftToRight = -1;
    
    int resolvedRightToLeft = -1;
    
    int resolvedRightToRight = -1;
    
    public int rightToLeft = -1;
    
    public int rightToRight = -1;
    
    public int startToEnd = -1;
    
    public int startToStart = -1;
    
    public int topToBottom = -1;
    
    public int topToTop = -1;
    
    public float verticalBias = 0.5F;
    
    public int verticalChainStyle = 0;
    
    boolean verticalDimensionFixed = true;
    
    public float verticalWeight = -1.0F;
    
    ConstraintWidget widget = new ConstraintWidget();
    
    public LayoutParams(int param1Int1, int param1Int2) {
      super(param1Int1, param1Int2);
    }
    
    public LayoutParams(Context param1Context, AttributeSet param1AttributeSet) {
      // Byte code:
      //   0: aload_0
      //   1: aload_1
      //   2: aload_2
      //   3: invokespecial <init> : (Landroid/content/Context;Landroid/util/AttributeSet;)V
      //   6: aload_0
      //   7: iconst_m1
      //   8: putfield guideBegin : I
      //   11: aload_0
      //   12: iconst_m1
      //   13: putfield guideEnd : I
      //   16: aload_0
      //   17: ldc -1.0
      //   19: putfield guidePercent : F
      //   22: aload_0
      //   23: iconst_m1
      //   24: putfield leftToLeft : I
      //   27: aload_0
      //   28: iconst_m1
      //   29: putfield leftToRight : I
      //   32: aload_0
      //   33: iconst_m1
      //   34: putfield rightToLeft : I
      //   37: aload_0
      //   38: iconst_m1
      //   39: putfield rightToRight : I
      //   42: aload_0
      //   43: iconst_m1
      //   44: putfield topToTop : I
      //   47: aload_0
      //   48: iconst_m1
      //   49: putfield topToBottom : I
      //   52: aload_0
      //   53: iconst_m1
      //   54: putfield bottomToTop : I
      //   57: aload_0
      //   58: iconst_m1
      //   59: putfield bottomToBottom : I
      //   62: aload_0
      //   63: iconst_m1
      //   64: putfield baselineToBaseline : I
      //   67: aload_0
      //   68: iconst_m1
      //   69: putfield circleConstraint : I
      //   72: aload_0
      //   73: iconst_0
      //   74: putfield circleRadius : I
      //   77: aload_0
      //   78: fconst_0
      //   79: putfield circleAngle : F
      //   82: aload_0
      //   83: iconst_m1
      //   84: putfield startToEnd : I
      //   87: aload_0
      //   88: iconst_m1
      //   89: putfield startToStart : I
      //   92: aload_0
      //   93: iconst_m1
      //   94: putfield endToStart : I
      //   97: aload_0
      //   98: iconst_m1
      //   99: putfield endToEnd : I
      //   102: aload_0
      //   103: iconst_m1
      //   104: putfield goneLeftMargin : I
      //   107: aload_0
      //   108: iconst_m1
      //   109: putfield goneTopMargin : I
      //   112: aload_0
      //   113: iconst_m1
      //   114: putfield goneRightMargin : I
      //   117: aload_0
      //   118: iconst_m1
      //   119: putfield goneBottomMargin : I
      //   122: aload_0
      //   123: iconst_m1
      //   124: putfield goneStartMargin : I
      //   127: aload_0
      //   128: iconst_m1
      //   129: putfield goneEndMargin : I
      //   132: aload_0
      //   133: ldc 0.5
      //   135: putfield horizontalBias : F
      //   138: aload_0
      //   139: ldc 0.5
      //   141: putfield verticalBias : F
      //   144: aload_0
      //   145: aconst_null
      //   146: putfield dimensionRatio : Ljava/lang/String;
      //   149: aload_0
      //   150: fconst_0
      //   151: putfield dimensionRatioValue : F
      //   154: aload_0
      //   155: iconst_1
      //   156: putfield dimensionRatioSide : I
      //   159: aload_0
      //   160: ldc -1.0
      //   162: putfield horizontalWeight : F
      //   165: aload_0
      //   166: ldc -1.0
      //   168: putfield verticalWeight : F
      //   171: aload_0
      //   172: iconst_0
      //   173: putfield horizontalChainStyle : I
      //   176: aload_0
      //   177: iconst_0
      //   178: putfield verticalChainStyle : I
      //   181: aload_0
      //   182: iconst_0
      //   183: putfield matchConstraintDefaultWidth : I
      //   186: aload_0
      //   187: iconst_0
      //   188: putfield matchConstraintDefaultHeight : I
      //   191: aload_0
      //   192: iconst_0
      //   193: putfield matchConstraintMinWidth : I
      //   196: aload_0
      //   197: iconst_0
      //   198: putfield matchConstraintMinHeight : I
      //   201: aload_0
      //   202: iconst_0
      //   203: putfield matchConstraintMaxWidth : I
      //   206: aload_0
      //   207: iconst_0
      //   208: putfield matchConstraintMaxHeight : I
      //   211: aload_0
      //   212: fconst_1
      //   213: putfield matchConstraintPercentWidth : F
      //   216: aload_0
      //   217: fconst_1
      //   218: putfield matchConstraintPercentHeight : F
      //   221: aload_0
      //   222: iconst_m1
      //   223: putfield editorAbsoluteX : I
      //   226: aload_0
      //   227: iconst_m1
      //   228: putfield editorAbsoluteY : I
      //   231: aload_0
      //   232: iconst_m1
      //   233: putfield orientation : I
      //   236: aload_0
      //   237: iconst_0
      //   238: putfield constrainedWidth : Z
      //   241: aload_0
      //   242: iconst_0
      //   243: putfield constrainedHeight : Z
      //   246: aload_0
      //   247: aconst_null
      //   248: putfield constraintTag : Ljava/lang/String;
      //   251: aload_0
      //   252: iconst_1
      //   253: putfield horizontalDimensionFixed : Z
      //   256: aload_0
      //   257: iconst_1
      //   258: putfield verticalDimensionFixed : Z
      //   261: aload_0
      //   262: iconst_0
      //   263: putfield needsBaseline : Z
      //   266: aload_0
      //   267: iconst_0
      //   268: putfield isGuideline : Z
      //   271: aload_0
      //   272: iconst_0
      //   273: putfield isHelper : Z
      //   276: aload_0
      //   277: iconst_0
      //   278: putfield isInPlaceholder : Z
      //   281: aload_0
      //   282: iconst_0
      //   283: putfield isVirtualGroup : Z
      //   286: aload_0
      //   287: iconst_m1
      //   288: putfield resolvedLeftToLeft : I
      //   291: aload_0
      //   292: iconst_m1
      //   293: putfield resolvedLeftToRight : I
      //   296: aload_0
      //   297: iconst_m1
      //   298: putfield resolvedRightToLeft : I
      //   301: aload_0
      //   302: iconst_m1
      //   303: putfield resolvedRightToRight : I
      //   306: aload_0
      //   307: iconst_m1
      //   308: putfield resolveGoneLeftMargin : I
      //   311: aload_0
      //   312: iconst_m1
      //   313: putfield resolveGoneRightMargin : I
      //   316: aload_0
      //   317: ldc 0.5
      //   319: putfield resolvedHorizontalBias : F
      //   322: aload_0
      //   323: new androidx/constraintlayout/solver/widgets/ConstraintWidget
      //   326: dup
      //   327: invokespecial <init> : ()V
      //   330: putfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
      //   333: aload_0
      //   334: iconst_0
      //   335: putfield helped : Z
      //   338: aload_1
      //   339: aload_2
      //   340: getstatic androidx/constraintlayout/widget/R$styleable.ConstraintLayout_Layout : [I
      //   343: invokevirtual obtainStyledAttributes : (Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
      //   346: astore_1
      //   347: aload_1
      //   348: invokevirtual getIndexCount : ()I
      //   351: istore_3
      //   352: iconst_0
      //   353: istore #4
      //   355: iload #4
      //   357: iload_3
      //   358: if_icmpge -> 2079
      //   361: aload_1
      //   362: iload #4
      //   364: invokevirtual getIndex : (I)I
      //   367: istore #5
      //   369: getstatic androidx/constraintlayout/widget/ConstraintLayout$LayoutParams$Table.map : Landroid/util/SparseIntArray;
      //   372: iload #5
      //   374: invokevirtual get : (I)I
      //   377: tableswitch default -> 600, 0 -> 2073, 1 -> 2059, 2 -> 2023, 3 -> 2006, 4 -> 1958, 5 -> 1941, 6 -> 1924, 7 -> 1907, 8 -> 1871, 9 -> 1835, 10 -> 1799, 11 -> 1763, 12 -> 1727, 13 -> 1691, 14 -> 1655, 15 -> 1619, 16 -> 1583, 17 -> 1547, 18 -> 1511, 19 -> 1475, 20 -> 1439, 21 -> 1422, 22 -> 1405, 23 -> 1388, 24 -> 1371, 25 -> 1354, 26 -> 1337, 27 -> 1320, 28 -> 1303, 29 -> 1286, 30 -> 1269, 31 -> 1237, 32 -> 1205, 33 -> 1163, 34 -> 1121, 35 -> 1095, 36 -> 1053, 37 -> 1011, 38 -> 985, 39 -> 2073, 40 -> 2073, 41 -> 2073, 42 -> 2073, 43 -> 600, 44 -> 712, 45 -> 695, 46 -> 678, 47 -> 664, 48 -> 650, 49 -> 633, 50 -> 616, 51 -> 603
      //   600: goto -> 2073
      //   603: aload_0
      //   604: aload_1
      //   605: iload #5
      //   607: invokevirtual getString : (I)Ljava/lang/String;
      //   610: putfield constraintTag : Ljava/lang/String;
      //   613: goto -> 2073
      //   616: aload_0
      //   617: aload_1
      //   618: iload #5
      //   620: aload_0
      //   621: getfield editorAbsoluteY : I
      //   624: invokevirtual getDimensionPixelOffset : (II)I
      //   627: putfield editorAbsoluteY : I
      //   630: goto -> 2073
      //   633: aload_0
      //   634: aload_1
      //   635: iload #5
      //   637: aload_0
      //   638: getfield editorAbsoluteX : I
      //   641: invokevirtual getDimensionPixelOffset : (II)I
      //   644: putfield editorAbsoluteX : I
      //   647: goto -> 2073
      //   650: aload_0
      //   651: aload_1
      //   652: iload #5
      //   654: iconst_0
      //   655: invokevirtual getInt : (II)I
      //   658: putfield verticalChainStyle : I
      //   661: goto -> 2073
      //   664: aload_0
      //   665: aload_1
      //   666: iload #5
      //   668: iconst_0
      //   669: invokevirtual getInt : (II)I
      //   672: putfield horizontalChainStyle : I
      //   675: goto -> 2073
      //   678: aload_0
      //   679: aload_1
      //   680: iload #5
      //   682: aload_0
      //   683: getfield verticalWeight : F
      //   686: invokevirtual getFloat : (IF)F
      //   689: putfield verticalWeight : F
      //   692: goto -> 2073
      //   695: aload_0
      //   696: aload_1
      //   697: iload #5
      //   699: aload_0
      //   700: getfield horizontalWeight : F
      //   703: invokevirtual getFloat : (IF)F
      //   706: putfield horizontalWeight : F
      //   709: goto -> 2073
      //   712: aload_0
      //   713: aload_1
      //   714: iload #5
      //   716: invokevirtual getString : (I)Ljava/lang/String;
      //   719: putfield dimensionRatio : Ljava/lang/String;
      //   722: aload_0
      //   723: ldc_w NaN
      //   726: putfield dimensionRatioValue : F
      //   729: aload_0
      //   730: iconst_m1
      //   731: putfield dimensionRatioSide : I
      //   734: aload_0
      //   735: getfield dimensionRatio : Ljava/lang/String;
      //   738: astore_2
      //   739: aload_2
      //   740: ifnull -> 2073
      //   743: aload_2
      //   744: invokevirtual length : ()I
      //   747: istore #6
      //   749: aload_0
      //   750: getfield dimensionRatio : Ljava/lang/String;
      //   753: bipush #44
      //   755: invokevirtual indexOf : (I)I
      //   758: istore #5
      //   760: iload #5
      //   762: ifle -> 824
      //   765: iload #5
      //   767: iload #6
      //   769: iconst_1
      //   770: isub
      //   771: if_icmpge -> 824
      //   774: aload_0
      //   775: getfield dimensionRatio : Ljava/lang/String;
      //   778: iconst_0
      //   779: iload #5
      //   781: invokevirtual substring : (II)Ljava/lang/String;
      //   784: astore_2
      //   785: aload_2
      //   786: ldc_w 'W'
      //   789: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
      //   792: ifeq -> 803
      //   795: aload_0
      //   796: iconst_0
      //   797: putfield dimensionRatioSide : I
      //   800: goto -> 818
      //   803: aload_2
      //   804: ldc_w 'H'
      //   807: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
      //   810: ifeq -> 818
      //   813: aload_0
      //   814: iconst_1
      //   815: putfield dimensionRatioSide : I
      //   818: iinc #5, 1
      //   821: goto -> 827
      //   824: iconst_0
      //   825: istore #5
      //   827: aload_0
      //   828: getfield dimensionRatio : Ljava/lang/String;
      //   831: bipush #58
      //   833: invokevirtual indexOf : (I)I
      //   836: istore #7
      //   838: iload #7
      //   840: iflt -> 957
      //   843: iload #7
      //   845: iload #6
      //   847: iconst_1
      //   848: isub
      //   849: if_icmpge -> 957
      //   852: aload_0
      //   853: getfield dimensionRatio : Ljava/lang/String;
      //   856: iload #5
      //   858: iload #7
      //   860: invokevirtual substring : (II)Ljava/lang/String;
      //   863: astore_2
      //   864: aload_0
      //   865: getfield dimensionRatio : Ljava/lang/String;
      //   868: iload #7
      //   870: iconst_1
      //   871: iadd
      //   872: invokevirtual substring : (I)Ljava/lang/String;
      //   875: astore #8
      //   877: aload_2
      //   878: invokevirtual length : ()I
      //   881: ifle -> 2073
      //   884: aload #8
      //   886: invokevirtual length : ()I
      //   889: ifle -> 2073
      //   892: aload_2
      //   893: invokestatic parseFloat : (Ljava/lang/String;)F
      //   896: fstore #9
      //   898: aload #8
      //   900: invokestatic parseFloat : (Ljava/lang/String;)F
      //   903: fstore #10
      //   905: fload #9
      //   907: fconst_0
      //   908: fcmpl
      //   909: ifle -> 2073
      //   912: fload #10
      //   914: fconst_0
      //   915: fcmpl
      //   916: ifle -> 2073
      //   919: aload_0
      //   920: getfield dimensionRatioSide : I
      //   923: iconst_1
      //   924: if_icmpne -> 942
      //   927: aload_0
      //   928: fload #10
      //   930: fload #9
      //   932: fdiv
      //   933: invokestatic abs : (F)F
      //   936: putfield dimensionRatioValue : F
      //   939: goto -> 2073
      //   942: aload_0
      //   943: fload #9
      //   945: fload #10
      //   947: fdiv
      //   948: invokestatic abs : (F)F
      //   951: putfield dimensionRatioValue : F
      //   954: goto -> 2073
      //   957: aload_0
      //   958: getfield dimensionRatio : Ljava/lang/String;
      //   961: iload #5
      //   963: invokevirtual substring : (I)Ljava/lang/String;
      //   966: astore_2
      //   967: aload_2
      //   968: invokevirtual length : ()I
      //   971: ifle -> 2073
      //   974: aload_0
      //   975: aload_2
      //   976: invokestatic parseFloat : (Ljava/lang/String;)F
      //   979: putfield dimensionRatioValue : F
      //   982: goto -> 2073
      //   985: aload_0
      //   986: fconst_0
      //   987: aload_1
      //   988: iload #5
      //   990: aload_0
      //   991: getfield matchConstraintPercentHeight : F
      //   994: invokevirtual getFloat : (IF)F
      //   997: invokestatic max : (FF)F
      //   1000: putfield matchConstraintPercentHeight : F
      //   1003: aload_0
      //   1004: iconst_2
      //   1005: putfield matchConstraintDefaultHeight : I
      //   1008: goto -> 2073
      //   1011: aload_0
      //   1012: aload_1
      //   1013: iload #5
      //   1015: aload_0
      //   1016: getfield matchConstraintMaxHeight : I
      //   1019: invokevirtual getDimensionPixelSize : (II)I
      //   1022: putfield matchConstraintMaxHeight : I
      //   1025: goto -> 2073
      //   1028: astore_2
      //   1029: aload_1
      //   1030: iload #5
      //   1032: aload_0
      //   1033: getfield matchConstraintMaxHeight : I
      //   1036: invokevirtual getInt : (II)I
      //   1039: bipush #-2
      //   1041: if_icmpne -> 2073
      //   1044: aload_0
      //   1045: bipush #-2
      //   1047: putfield matchConstraintMaxHeight : I
      //   1050: goto -> 2073
      //   1053: aload_0
      //   1054: aload_1
      //   1055: iload #5
      //   1057: aload_0
      //   1058: getfield matchConstraintMinHeight : I
      //   1061: invokevirtual getDimensionPixelSize : (II)I
      //   1064: putfield matchConstraintMinHeight : I
      //   1067: goto -> 2073
      //   1070: astore_2
      //   1071: aload_1
      //   1072: iload #5
      //   1074: aload_0
      //   1075: getfield matchConstraintMinHeight : I
      //   1078: invokevirtual getInt : (II)I
      //   1081: bipush #-2
      //   1083: if_icmpne -> 2073
      //   1086: aload_0
      //   1087: bipush #-2
      //   1089: putfield matchConstraintMinHeight : I
      //   1092: goto -> 2073
      //   1095: aload_0
      //   1096: fconst_0
      //   1097: aload_1
      //   1098: iload #5
      //   1100: aload_0
      //   1101: getfield matchConstraintPercentWidth : F
      //   1104: invokevirtual getFloat : (IF)F
      //   1107: invokestatic max : (FF)F
      //   1110: putfield matchConstraintPercentWidth : F
      //   1113: aload_0
      //   1114: iconst_2
      //   1115: putfield matchConstraintDefaultWidth : I
      //   1118: goto -> 2073
      //   1121: aload_0
      //   1122: aload_1
      //   1123: iload #5
      //   1125: aload_0
      //   1126: getfield matchConstraintMaxWidth : I
      //   1129: invokevirtual getDimensionPixelSize : (II)I
      //   1132: putfield matchConstraintMaxWidth : I
      //   1135: goto -> 2073
      //   1138: astore_2
      //   1139: aload_1
      //   1140: iload #5
      //   1142: aload_0
      //   1143: getfield matchConstraintMaxWidth : I
      //   1146: invokevirtual getInt : (II)I
      //   1149: bipush #-2
      //   1151: if_icmpne -> 2073
      //   1154: aload_0
      //   1155: bipush #-2
      //   1157: putfield matchConstraintMaxWidth : I
      //   1160: goto -> 2073
      //   1163: aload_0
      //   1164: aload_1
      //   1165: iload #5
      //   1167: aload_0
      //   1168: getfield matchConstraintMinWidth : I
      //   1171: invokevirtual getDimensionPixelSize : (II)I
      //   1174: putfield matchConstraintMinWidth : I
      //   1177: goto -> 2073
      //   1180: astore_2
      //   1181: aload_1
      //   1182: iload #5
      //   1184: aload_0
      //   1185: getfield matchConstraintMinWidth : I
      //   1188: invokevirtual getInt : (II)I
      //   1191: bipush #-2
      //   1193: if_icmpne -> 2073
      //   1196: aload_0
      //   1197: bipush #-2
      //   1199: putfield matchConstraintMinWidth : I
      //   1202: goto -> 2073
      //   1205: aload_0
      //   1206: aload_1
      //   1207: iload #5
      //   1209: iconst_0
      //   1210: invokevirtual getInt : (II)I
      //   1213: putfield matchConstraintDefaultHeight : I
      //   1216: aload_0
      //   1217: getfield matchConstraintDefaultHeight : I
      //   1220: iconst_1
      //   1221: if_icmpne -> 2073
      //   1224: ldc_w 'ConstraintLayout'
      //   1227: ldc_w 'layout_constraintHeight_default="wrap" is deprecated.\\nUse layout_height="WRAP_CONTENT" and layout_constrainedHeight="true" instead.'
      //   1230: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
      //   1233: pop
      //   1234: goto -> 2073
      //   1237: aload_0
      //   1238: aload_1
      //   1239: iload #5
      //   1241: iconst_0
      //   1242: invokevirtual getInt : (II)I
      //   1245: putfield matchConstraintDefaultWidth : I
      //   1248: aload_0
      //   1249: getfield matchConstraintDefaultWidth : I
      //   1252: iconst_1
      //   1253: if_icmpne -> 2073
      //   1256: ldc_w 'ConstraintLayout'
      //   1259: ldc_w 'layout_constraintWidth_default="wrap" is deprecated.\\nUse layout_width="WRAP_CONTENT" and layout_constrainedWidth="true" instead.'
      //   1262: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
      //   1265: pop
      //   1266: goto -> 2073
      //   1269: aload_0
      //   1270: aload_1
      //   1271: iload #5
      //   1273: aload_0
      //   1274: getfield verticalBias : F
      //   1277: invokevirtual getFloat : (IF)F
      //   1280: putfield verticalBias : F
      //   1283: goto -> 2073
      //   1286: aload_0
      //   1287: aload_1
      //   1288: iload #5
      //   1290: aload_0
      //   1291: getfield horizontalBias : F
      //   1294: invokevirtual getFloat : (IF)F
      //   1297: putfield horizontalBias : F
      //   1300: goto -> 2073
      //   1303: aload_0
      //   1304: aload_1
      //   1305: iload #5
      //   1307: aload_0
      //   1308: getfield constrainedHeight : Z
      //   1311: invokevirtual getBoolean : (IZ)Z
      //   1314: putfield constrainedHeight : Z
      //   1317: goto -> 2073
      //   1320: aload_0
      //   1321: aload_1
      //   1322: iload #5
      //   1324: aload_0
      //   1325: getfield constrainedWidth : Z
      //   1328: invokevirtual getBoolean : (IZ)Z
      //   1331: putfield constrainedWidth : Z
      //   1334: goto -> 2073
      //   1337: aload_0
      //   1338: aload_1
      //   1339: iload #5
      //   1341: aload_0
      //   1342: getfield goneEndMargin : I
      //   1345: invokevirtual getDimensionPixelSize : (II)I
      //   1348: putfield goneEndMargin : I
      //   1351: goto -> 2073
      //   1354: aload_0
      //   1355: aload_1
      //   1356: iload #5
      //   1358: aload_0
      //   1359: getfield goneStartMargin : I
      //   1362: invokevirtual getDimensionPixelSize : (II)I
      //   1365: putfield goneStartMargin : I
      //   1368: goto -> 2073
      //   1371: aload_0
      //   1372: aload_1
      //   1373: iload #5
      //   1375: aload_0
      //   1376: getfield goneBottomMargin : I
      //   1379: invokevirtual getDimensionPixelSize : (II)I
      //   1382: putfield goneBottomMargin : I
      //   1385: goto -> 2073
      //   1388: aload_0
      //   1389: aload_1
      //   1390: iload #5
      //   1392: aload_0
      //   1393: getfield goneRightMargin : I
      //   1396: invokevirtual getDimensionPixelSize : (II)I
      //   1399: putfield goneRightMargin : I
      //   1402: goto -> 2073
      //   1405: aload_0
      //   1406: aload_1
      //   1407: iload #5
      //   1409: aload_0
      //   1410: getfield goneTopMargin : I
      //   1413: invokevirtual getDimensionPixelSize : (II)I
      //   1416: putfield goneTopMargin : I
      //   1419: goto -> 2073
      //   1422: aload_0
      //   1423: aload_1
      //   1424: iload #5
      //   1426: aload_0
      //   1427: getfield goneLeftMargin : I
      //   1430: invokevirtual getDimensionPixelSize : (II)I
      //   1433: putfield goneLeftMargin : I
      //   1436: goto -> 2073
      //   1439: aload_0
      //   1440: aload_1
      //   1441: iload #5
      //   1443: aload_0
      //   1444: getfield endToEnd : I
      //   1447: invokevirtual getResourceId : (II)I
      //   1450: putfield endToEnd : I
      //   1453: aload_0
      //   1454: getfield endToEnd : I
      //   1457: iconst_m1
      //   1458: if_icmpne -> 2073
      //   1461: aload_0
      //   1462: aload_1
      //   1463: iload #5
      //   1465: iconst_m1
      //   1466: invokevirtual getInt : (II)I
      //   1469: putfield endToEnd : I
      //   1472: goto -> 2073
      //   1475: aload_0
      //   1476: aload_1
      //   1477: iload #5
      //   1479: aload_0
      //   1480: getfield endToStart : I
      //   1483: invokevirtual getResourceId : (II)I
      //   1486: putfield endToStart : I
      //   1489: aload_0
      //   1490: getfield endToStart : I
      //   1493: iconst_m1
      //   1494: if_icmpne -> 2073
      //   1497: aload_0
      //   1498: aload_1
      //   1499: iload #5
      //   1501: iconst_m1
      //   1502: invokevirtual getInt : (II)I
      //   1505: putfield endToStart : I
      //   1508: goto -> 2073
      //   1511: aload_0
      //   1512: aload_1
      //   1513: iload #5
      //   1515: aload_0
      //   1516: getfield startToStart : I
      //   1519: invokevirtual getResourceId : (II)I
      //   1522: putfield startToStart : I
      //   1525: aload_0
      //   1526: getfield startToStart : I
      //   1529: iconst_m1
      //   1530: if_icmpne -> 2073
      //   1533: aload_0
      //   1534: aload_1
      //   1535: iload #5
      //   1537: iconst_m1
      //   1538: invokevirtual getInt : (II)I
      //   1541: putfield startToStart : I
      //   1544: goto -> 2073
      //   1547: aload_0
      //   1548: aload_1
      //   1549: iload #5
      //   1551: aload_0
      //   1552: getfield startToEnd : I
      //   1555: invokevirtual getResourceId : (II)I
      //   1558: putfield startToEnd : I
      //   1561: aload_0
      //   1562: getfield startToEnd : I
      //   1565: iconst_m1
      //   1566: if_icmpne -> 2073
      //   1569: aload_0
      //   1570: aload_1
      //   1571: iload #5
      //   1573: iconst_m1
      //   1574: invokevirtual getInt : (II)I
      //   1577: putfield startToEnd : I
      //   1580: goto -> 2073
      //   1583: aload_0
      //   1584: aload_1
      //   1585: iload #5
      //   1587: aload_0
      //   1588: getfield baselineToBaseline : I
      //   1591: invokevirtual getResourceId : (II)I
      //   1594: putfield baselineToBaseline : I
      //   1597: aload_0
      //   1598: getfield baselineToBaseline : I
      //   1601: iconst_m1
      //   1602: if_icmpne -> 2073
      //   1605: aload_0
      //   1606: aload_1
      //   1607: iload #5
      //   1609: iconst_m1
      //   1610: invokevirtual getInt : (II)I
      //   1613: putfield baselineToBaseline : I
      //   1616: goto -> 2073
      //   1619: aload_0
      //   1620: aload_1
      //   1621: iload #5
      //   1623: aload_0
      //   1624: getfield bottomToBottom : I
      //   1627: invokevirtual getResourceId : (II)I
      //   1630: putfield bottomToBottom : I
      //   1633: aload_0
      //   1634: getfield bottomToBottom : I
      //   1637: iconst_m1
      //   1638: if_icmpne -> 2073
      //   1641: aload_0
      //   1642: aload_1
      //   1643: iload #5
      //   1645: iconst_m1
      //   1646: invokevirtual getInt : (II)I
      //   1649: putfield bottomToBottom : I
      //   1652: goto -> 2073
      //   1655: aload_0
      //   1656: aload_1
      //   1657: iload #5
      //   1659: aload_0
      //   1660: getfield bottomToTop : I
      //   1663: invokevirtual getResourceId : (II)I
      //   1666: putfield bottomToTop : I
      //   1669: aload_0
      //   1670: getfield bottomToTop : I
      //   1673: iconst_m1
      //   1674: if_icmpne -> 2073
      //   1677: aload_0
      //   1678: aload_1
      //   1679: iload #5
      //   1681: iconst_m1
      //   1682: invokevirtual getInt : (II)I
      //   1685: putfield bottomToTop : I
      //   1688: goto -> 2073
      //   1691: aload_0
      //   1692: aload_1
      //   1693: iload #5
      //   1695: aload_0
      //   1696: getfield topToBottom : I
      //   1699: invokevirtual getResourceId : (II)I
      //   1702: putfield topToBottom : I
      //   1705: aload_0
      //   1706: getfield topToBottom : I
      //   1709: iconst_m1
      //   1710: if_icmpne -> 2073
      //   1713: aload_0
      //   1714: aload_1
      //   1715: iload #5
      //   1717: iconst_m1
      //   1718: invokevirtual getInt : (II)I
      //   1721: putfield topToBottom : I
      //   1724: goto -> 2073
      //   1727: aload_0
      //   1728: aload_1
      //   1729: iload #5
      //   1731: aload_0
      //   1732: getfield topToTop : I
      //   1735: invokevirtual getResourceId : (II)I
      //   1738: putfield topToTop : I
      //   1741: aload_0
      //   1742: getfield topToTop : I
      //   1745: iconst_m1
      //   1746: if_icmpne -> 2073
      //   1749: aload_0
      //   1750: aload_1
      //   1751: iload #5
      //   1753: iconst_m1
      //   1754: invokevirtual getInt : (II)I
      //   1757: putfield topToTop : I
      //   1760: goto -> 2073
      //   1763: aload_0
      //   1764: aload_1
      //   1765: iload #5
      //   1767: aload_0
      //   1768: getfield rightToRight : I
      //   1771: invokevirtual getResourceId : (II)I
      //   1774: putfield rightToRight : I
      //   1777: aload_0
      //   1778: getfield rightToRight : I
      //   1781: iconst_m1
      //   1782: if_icmpne -> 2073
      //   1785: aload_0
      //   1786: aload_1
      //   1787: iload #5
      //   1789: iconst_m1
      //   1790: invokevirtual getInt : (II)I
      //   1793: putfield rightToRight : I
      //   1796: goto -> 2073
      //   1799: aload_0
      //   1800: aload_1
      //   1801: iload #5
      //   1803: aload_0
      //   1804: getfield rightToLeft : I
      //   1807: invokevirtual getResourceId : (II)I
      //   1810: putfield rightToLeft : I
      //   1813: aload_0
      //   1814: getfield rightToLeft : I
      //   1817: iconst_m1
      //   1818: if_icmpne -> 2073
      //   1821: aload_0
      //   1822: aload_1
      //   1823: iload #5
      //   1825: iconst_m1
      //   1826: invokevirtual getInt : (II)I
      //   1829: putfield rightToLeft : I
      //   1832: goto -> 2073
      //   1835: aload_0
      //   1836: aload_1
      //   1837: iload #5
      //   1839: aload_0
      //   1840: getfield leftToRight : I
      //   1843: invokevirtual getResourceId : (II)I
      //   1846: putfield leftToRight : I
      //   1849: aload_0
      //   1850: getfield leftToRight : I
      //   1853: iconst_m1
      //   1854: if_icmpne -> 2073
      //   1857: aload_0
      //   1858: aload_1
      //   1859: iload #5
      //   1861: iconst_m1
      //   1862: invokevirtual getInt : (II)I
      //   1865: putfield leftToRight : I
      //   1868: goto -> 2073
      //   1871: aload_0
      //   1872: aload_1
      //   1873: iload #5
      //   1875: aload_0
      //   1876: getfield leftToLeft : I
      //   1879: invokevirtual getResourceId : (II)I
      //   1882: putfield leftToLeft : I
      //   1885: aload_0
      //   1886: getfield leftToLeft : I
      //   1889: iconst_m1
      //   1890: if_icmpne -> 2073
      //   1893: aload_0
      //   1894: aload_1
      //   1895: iload #5
      //   1897: iconst_m1
      //   1898: invokevirtual getInt : (II)I
      //   1901: putfield leftToLeft : I
      //   1904: goto -> 2073
      //   1907: aload_0
      //   1908: aload_1
      //   1909: iload #5
      //   1911: aload_0
      //   1912: getfield guidePercent : F
      //   1915: invokevirtual getFloat : (IF)F
      //   1918: putfield guidePercent : F
      //   1921: goto -> 2073
      //   1924: aload_0
      //   1925: aload_1
      //   1926: iload #5
      //   1928: aload_0
      //   1929: getfield guideEnd : I
      //   1932: invokevirtual getDimensionPixelOffset : (II)I
      //   1935: putfield guideEnd : I
      //   1938: goto -> 2073
      //   1941: aload_0
      //   1942: aload_1
      //   1943: iload #5
      //   1945: aload_0
      //   1946: getfield guideBegin : I
      //   1949: invokevirtual getDimensionPixelOffset : (II)I
      //   1952: putfield guideBegin : I
      //   1955: goto -> 2073
      //   1958: aload_0
      //   1959: aload_1
      //   1960: iload #5
      //   1962: aload_0
      //   1963: getfield circleAngle : F
      //   1966: invokevirtual getFloat : (IF)F
      //   1969: ldc_w 360.0
      //   1972: frem
      //   1973: putfield circleAngle : F
      //   1976: aload_0
      //   1977: getfield circleAngle : F
      //   1980: fstore #9
      //   1982: fload #9
      //   1984: fconst_0
      //   1985: fcmpg
      //   1986: ifge -> 2073
      //   1989: aload_0
      //   1990: ldc_w 360.0
      //   1993: fload #9
      //   1995: fsub
      //   1996: ldc_w 360.0
      //   1999: frem
      //   2000: putfield circleAngle : F
      //   2003: goto -> 2073
      //   2006: aload_0
      //   2007: aload_1
      //   2008: iload #5
      //   2010: aload_0
      //   2011: getfield circleRadius : I
      //   2014: invokevirtual getDimensionPixelSize : (II)I
      //   2017: putfield circleRadius : I
      //   2020: goto -> 2073
      //   2023: aload_0
      //   2024: aload_1
      //   2025: iload #5
      //   2027: aload_0
      //   2028: getfield circleConstraint : I
      //   2031: invokevirtual getResourceId : (II)I
      //   2034: putfield circleConstraint : I
      //   2037: aload_0
      //   2038: getfield circleConstraint : I
      //   2041: iconst_m1
      //   2042: if_icmpne -> 2073
      //   2045: aload_0
      //   2046: aload_1
      //   2047: iload #5
      //   2049: iconst_m1
      //   2050: invokevirtual getInt : (II)I
      //   2053: putfield circleConstraint : I
      //   2056: goto -> 2073
      //   2059: aload_0
      //   2060: aload_1
      //   2061: iload #5
      //   2063: aload_0
      //   2064: getfield orientation : I
      //   2067: invokevirtual getInt : (II)I
      //   2070: putfield orientation : I
      //   2073: iinc #4, 1
      //   2076: goto -> 355
      //   2079: aload_1
      //   2080: invokevirtual recycle : ()V
      //   2083: aload_0
      //   2084: invokevirtual validate : ()V
      //   2087: return
      //   2088: astore_2
      //   2089: goto -> 2073
      // Exception table:
      //   from	to	target	type
      //   892	905	2088	java/lang/NumberFormatException
      //   919	939	2088	java/lang/NumberFormatException
      //   942	954	2088	java/lang/NumberFormatException
      //   974	982	2088	java/lang/NumberFormatException
      //   1011	1025	1028	java/lang/Exception
      //   1053	1067	1070	java/lang/Exception
      //   1121	1135	1138	java/lang/Exception
      //   1163	1177	1180	java/lang/Exception
    }
    
    public LayoutParams(ViewGroup.LayoutParams param1LayoutParams) {
      super(param1LayoutParams);
    }
    
    public LayoutParams(LayoutParams param1LayoutParams) {
      super(param1LayoutParams);
      this.guideBegin = param1LayoutParams.guideBegin;
      this.guideEnd = param1LayoutParams.guideEnd;
      this.guidePercent = param1LayoutParams.guidePercent;
      this.leftToLeft = param1LayoutParams.leftToLeft;
      this.leftToRight = param1LayoutParams.leftToRight;
      this.rightToLeft = param1LayoutParams.rightToLeft;
      this.rightToRight = param1LayoutParams.rightToRight;
      this.topToTop = param1LayoutParams.topToTop;
      this.topToBottom = param1LayoutParams.topToBottom;
      this.bottomToTop = param1LayoutParams.bottomToTop;
      this.bottomToBottom = param1LayoutParams.bottomToBottom;
      this.baselineToBaseline = param1LayoutParams.baselineToBaseline;
      this.circleConstraint = param1LayoutParams.circleConstraint;
      this.circleRadius = param1LayoutParams.circleRadius;
      this.circleAngle = param1LayoutParams.circleAngle;
      this.startToEnd = param1LayoutParams.startToEnd;
      this.startToStart = param1LayoutParams.startToStart;
      this.endToStart = param1LayoutParams.endToStart;
      this.endToEnd = param1LayoutParams.endToEnd;
      this.goneLeftMargin = param1LayoutParams.goneLeftMargin;
      this.goneTopMargin = param1LayoutParams.goneTopMargin;
      this.goneRightMargin = param1LayoutParams.goneRightMargin;
      this.goneBottomMargin = param1LayoutParams.goneBottomMargin;
      this.goneStartMargin = param1LayoutParams.goneStartMargin;
      this.goneEndMargin = param1LayoutParams.goneEndMargin;
      this.horizontalBias = param1LayoutParams.horizontalBias;
      this.verticalBias = param1LayoutParams.verticalBias;
      this.dimensionRatio = param1LayoutParams.dimensionRatio;
      this.dimensionRatioValue = param1LayoutParams.dimensionRatioValue;
      this.dimensionRatioSide = param1LayoutParams.dimensionRatioSide;
      this.horizontalWeight = param1LayoutParams.horizontalWeight;
      this.verticalWeight = param1LayoutParams.verticalWeight;
      this.horizontalChainStyle = param1LayoutParams.horizontalChainStyle;
      this.verticalChainStyle = param1LayoutParams.verticalChainStyle;
      this.constrainedWidth = param1LayoutParams.constrainedWidth;
      this.constrainedHeight = param1LayoutParams.constrainedHeight;
      this.matchConstraintDefaultWidth = param1LayoutParams.matchConstraintDefaultWidth;
      this.matchConstraintDefaultHeight = param1LayoutParams.matchConstraintDefaultHeight;
      this.matchConstraintMinWidth = param1LayoutParams.matchConstraintMinWidth;
      this.matchConstraintMaxWidth = param1LayoutParams.matchConstraintMaxWidth;
      this.matchConstraintMinHeight = param1LayoutParams.matchConstraintMinHeight;
      this.matchConstraintMaxHeight = param1LayoutParams.matchConstraintMaxHeight;
      this.matchConstraintPercentWidth = param1LayoutParams.matchConstraintPercentWidth;
      this.matchConstraintPercentHeight = param1LayoutParams.matchConstraintPercentHeight;
      this.editorAbsoluteX = param1LayoutParams.editorAbsoluteX;
      this.editorAbsoluteY = param1LayoutParams.editorAbsoluteY;
      this.orientation = param1LayoutParams.orientation;
      this.horizontalDimensionFixed = param1LayoutParams.horizontalDimensionFixed;
      this.verticalDimensionFixed = param1LayoutParams.verticalDimensionFixed;
      this.needsBaseline = param1LayoutParams.needsBaseline;
      this.isGuideline = param1LayoutParams.isGuideline;
      this.resolvedLeftToLeft = param1LayoutParams.resolvedLeftToLeft;
      this.resolvedLeftToRight = param1LayoutParams.resolvedLeftToRight;
      this.resolvedRightToLeft = param1LayoutParams.resolvedRightToLeft;
      this.resolvedRightToRight = param1LayoutParams.resolvedRightToRight;
      this.resolveGoneLeftMargin = param1LayoutParams.resolveGoneLeftMargin;
      this.resolveGoneRightMargin = param1LayoutParams.resolveGoneRightMargin;
      this.resolvedHorizontalBias = param1LayoutParams.resolvedHorizontalBias;
      this.constraintTag = param1LayoutParams.constraintTag;
      this.widget = param1LayoutParams.widget;
    }
    
    public String getConstraintTag() {
      return this.constraintTag;
    }
    
    public ConstraintWidget getConstraintWidget() {
      return this.widget;
    }
    
    public void reset() {
      ConstraintWidget constraintWidget = this.widget;
      if (constraintWidget != null)
        constraintWidget.reset(); 
    }
    
    public void resolveLayoutDirection(int param1Int) {
      // Byte code:
      //   0: aload_0
      //   1: getfield leftMargin : I
      //   4: istore_2
      //   5: aload_0
      //   6: getfield rightMargin : I
      //   9: istore_3
      //   10: getstatic android/os/Build$VERSION.SDK_INT : I
      //   13: istore #4
      //   15: iconst_0
      //   16: istore #5
      //   18: iload #4
      //   20: bipush #17
      //   22: if_icmplt -> 43
      //   25: aload_0
      //   26: iload_1
      //   27: invokespecial resolveLayoutDirection : (I)V
      //   30: iconst_1
      //   31: aload_0
      //   32: invokevirtual getLayoutDirection : ()I
      //   35: if_icmpne -> 43
      //   38: iconst_1
      //   39: istore_1
      //   40: goto -> 45
      //   43: iconst_0
      //   44: istore_1
      //   45: aload_0
      //   46: iconst_m1
      //   47: putfield resolvedRightToLeft : I
      //   50: aload_0
      //   51: iconst_m1
      //   52: putfield resolvedRightToRight : I
      //   55: aload_0
      //   56: iconst_m1
      //   57: putfield resolvedLeftToLeft : I
      //   60: aload_0
      //   61: iconst_m1
      //   62: putfield resolvedLeftToRight : I
      //   65: aload_0
      //   66: iconst_m1
      //   67: putfield resolveGoneLeftMargin : I
      //   70: aload_0
      //   71: iconst_m1
      //   72: putfield resolveGoneRightMargin : I
      //   75: aload_0
      //   76: aload_0
      //   77: getfield goneLeftMargin : I
      //   80: putfield resolveGoneLeftMargin : I
      //   83: aload_0
      //   84: aload_0
      //   85: getfield goneRightMargin : I
      //   88: putfield resolveGoneRightMargin : I
      //   91: aload_0
      //   92: aload_0
      //   93: getfield horizontalBias : F
      //   96: putfield resolvedHorizontalBias : F
      //   99: aload_0
      //   100: aload_0
      //   101: getfield guideBegin : I
      //   104: putfield resolvedGuideBegin : I
      //   107: aload_0
      //   108: aload_0
      //   109: getfield guideEnd : I
      //   112: putfield resolvedGuideEnd : I
      //   115: aload_0
      //   116: aload_0
      //   117: getfield guidePercent : F
      //   120: putfield resolvedGuidePercent : F
      //   123: iload_1
      //   124: ifeq -> 369
      //   127: aload_0
      //   128: getfield startToEnd : I
      //   131: istore_1
      //   132: iload_1
      //   133: iconst_m1
      //   134: if_icmpeq -> 147
      //   137: aload_0
      //   138: iload_1
      //   139: putfield resolvedRightToLeft : I
      //   142: iconst_1
      //   143: istore_1
      //   144: goto -> 171
      //   147: aload_0
      //   148: getfield startToStart : I
      //   151: istore #4
      //   153: iload #5
      //   155: istore_1
      //   156: iload #4
      //   158: iconst_m1
      //   159: if_icmpeq -> 171
      //   162: aload_0
      //   163: iload #4
      //   165: putfield resolvedRightToRight : I
      //   168: goto -> 142
      //   171: aload_0
      //   172: getfield endToStart : I
      //   175: istore #5
      //   177: iload #5
      //   179: iconst_m1
      //   180: if_icmpeq -> 191
      //   183: aload_0
      //   184: iload #5
      //   186: putfield resolvedLeftToRight : I
      //   189: iconst_1
      //   190: istore_1
      //   191: aload_0
      //   192: getfield endToEnd : I
      //   195: istore #5
      //   197: iload #5
      //   199: iconst_m1
      //   200: if_icmpeq -> 211
      //   203: aload_0
      //   204: iload #5
      //   206: putfield resolvedLeftToLeft : I
      //   209: iconst_1
      //   210: istore_1
      //   211: aload_0
      //   212: getfield goneStartMargin : I
      //   215: istore #5
      //   217: iload #5
      //   219: iconst_m1
      //   220: if_icmpeq -> 229
      //   223: aload_0
      //   224: iload #5
      //   226: putfield resolveGoneRightMargin : I
      //   229: aload_0
      //   230: getfield goneEndMargin : I
      //   233: istore #5
      //   235: iload #5
      //   237: iconst_m1
      //   238: if_icmpeq -> 247
      //   241: aload_0
      //   242: iload #5
      //   244: putfield resolveGoneLeftMargin : I
      //   247: iload_1
      //   248: ifeq -> 261
      //   251: aload_0
      //   252: fconst_1
      //   253: aload_0
      //   254: getfield horizontalBias : F
      //   257: fsub
      //   258: putfield resolvedHorizontalBias : F
      //   261: aload_0
      //   262: getfield isGuideline : Z
      //   265: ifeq -> 459
      //   268: aload_0
      //   269: getfield orientation : I
      //   272: iconst_1
      //   273: if_icmpne -> 459
      //   276: aload_0
      //   277: getfield guidePercent : F
      //   280: fstore #6
      //   282: fload #6
      //   284: ldc -1.0
      //   286: fcmpl
      //   287: ifeq -> 311
      //   290: aload_0
      //   291: fconst_1
      //   292: fload #6
      //   294: fsub
      //   295: putfield resolvedGuidePercent : F
      //   298: aload_0
      //   299: iconst_m1
      //   300: putfield resolvedGuideBegin : I
      //   303: aload_0
      //   304: iconst_m1
      //   305: putfield resolvedGuideEnd : I
      //   308: goto -> 459
      //   311: aload_0
      //   312: getfield guideBegin : I
      //   315: istore_1
      //   316: iload_1
      //   317: iconst_m1
      //   318: if_icmpeq -> 340
      //   321: aload_0
      //   322: iload_1
      //   323: putfield resolvedGuideEnd : I
      //   326: aload_0
      //   327: iconst_m1
      //   328: putfield resolvedGuideBegin : I
      //   331: aload_0
      //   332: ldc -1.0
      //   334: putfield resolvedGuidePercent : F
      //   337: goto -> 459
      //   340: aload_0
      //   341: getfield guideEnd : I
      //   344: istore_1
      //   345: iload_1
      //   346: iconst_m1
      //   347: if_icmpeq -> 459
      //   350: aload_0
      //   351: iload_1
      //   352: putfield resolvedGuideBegin : I
      //   355: aload_0
      //   356: iconst_m1
      //   357: putfield resolvedGuideEnd : I
      //   360: aload_0
      //   361: ldc -1.0
      //   363: putfield resolvedGuidePercent : F
      //   366: goto -> 459
      //   369: aload_0
      //   370: getfield startToEnd : I
      //   373: istore_1
      //   374: iload_1
      //   375: iconst_m1
      //   376: if_icmpeq -> 384
      //   379: aload_0
      //   380: iload_1
      //   381: putfield resolvedLeftToRight : I
      //   384: aload_0
      //   385: getfield startToStart : I
      //   388: istore_1
      //   389: iload_1
      //   390: iconst_m1
      //   391: if_icmpeq -> 399
      //   394: aload_0
      //   395: iload_1
      //   396: putfield resolvedLeftToLeft : I
      //   399: aload_0
      //   400: getfield endToStart : I
      //   403: istore_1
      //   404: iload_1
      //   405: iconst_m1
      //   406: if_icmpeq -> 414
      //   409: aload_0
      //   410: iload_1
      //   411: putfield resolvedRightToLeft : I
      //   414: aload_0
      //   415: getfield endToEnd : I
      //   418: istore_1
      //   419: iload_1
      //   420: iconst_m1
      //   421: if_icmpeq -> 429
      //   424: aload_0
      //   425: iload_1
      //   426: putfield resolvedRightToRight : I
      //   429: aload_0
      //   430: getfield goneStartMargin : I
      //   433: istore_1
      //   434: iload_1
      //   435: iconst_m1
      //   436: if_icmpeq -> 444
      //   439: aload_0
      //   440: iload_1
      //   441: putfield resolveGoneLeftMargin : I
      //   444: aload_0
      //   445: getfield goneEndMargin : I
      //   448: istore_1
      //   449: iload_1
      //   450: iconst_m1
      //   451: if_icmpeq -> 459
      //   454: aload_0
      //   455: iload_1
      //   456: putfield resolveGoneRightMargin : I
      //   459: aload_0
      //   460: getfield endToStart : I
      //   463: iconst_m1
      //   464: if_icmpne -> 621
      //   467: aload_0
      //   468: getfield endToEnd : I
      //   471: iconst_m1
      //   472: if_icmpne -> 621
      //   475: aload_0
      //   476: getfield startToStart : I
      //   479: iconst_m1
      //   480: if_icmpne -> 621
      //   483: aload_0
      //   484: getfield startToEnd : I
      //   487: iconst_m1
      //   488: if_icmpne -> 621
      //   491: aload_0
      //   492: getfield rightToLeft : I
      //   495: istore_1
      //   496: iload_1
      //   497: iconst_m1
      //   498: if_icmpeq -> 525
      //   501: aload_0
      //   502: iload_1
      //   503: putfield resolvedRightToLeft : I
      //   506: aload_0
      //   507: getfield rightMargin : I
      //   510: ifgt -> 556
      //   513: iload_3
      //   514: ifle -> 556
      //   517: aload_0
      //   518: iload_3
      //   519: putfield rightMargin : I
      //   522: goto -> 556
      //   525: aload_0
      //   526: getfield rightToRight : I
      //   529: istore_1
      //   530: iload_1
      //   531: iconst_m1
      //   532: if_icmpeq -> 556
      //   535: aload_0
      //   536: iload_1
      //   537: putfield resolvedRightToRight : I
      //   540: aload_0
      //   541: getfield rightMargin : I
      //   544: ifgt -> 556
      //   547: iload_3
      //   548: ifle -> 556
      //   551: aload_0
      //   552: iload_3
      //   553: putfield rightMargin : I
      //   556: aload_0
      //   557: getfield leftToLeft : I
      //   560: istore_1
      //   561: iload_1
      //   562: iconst_m1
      //   563: if_icmpeq -> 590
      //   566: aload_0
      //   567: iload_1
      //   568: putfield resolvedLeftToLeft : I
      //   571: aload_0
      //   572: getfield leftMargin : I
      //   575: ifgt -> 621
      //   578: iload_2
      //   579: ifle -> 621
      //   582: aload_0
      //   583: iload_2
      //   584: putfield leftMargin : I
      //   587: goto -> 621
      //   590: aload_0
      //   591: getfield leftToRight : I
      //   594: istore_1
      //   595: iload_1
      //   596: iconst_m1
      //   597: if_icmpeq -> 621
      //   600: aload_0
      //   601: iload_1
      //   602: putfield resolvedLeftToRight : I
      //   605: aload_0
      //   606: getfield leftMargin : I
      //   609: ifgt -> 621
      //   612: iload_2
      //   613: ifle -> 621
      //   616: aload_0
      //   617: iload_2
      //   618: putfield leftMargin : I
      //   621: return
    }
    
    public void setWidgetDebugName(String param1String) {
      this.widget.setDebugName(param1String);
    }
    
    public void validate() {
      this.isGuideline = false;
      this.horizontalDimensionFixed = true;
      this.verticalDimensionFixed = true;
      if (this.width == -2 && this.constrainedWidth) {
        this.horizontalDimensionFixed = false;
        if (this.matchConstraintDefaultWidth == 0)
          this.matchConstraintDefaultWidth = 1; 
      } 
      if (this.height == -2 && this.constrainedHeight) {
        this.verticalDimensionFixed = false;
        if (this.matchConstraintDefaultHeight == 0)
          this.matchConstraintDefaultHeight = 1; 
      } 
      if (this.width == 0 || this.width == -1) {
        this.horizontalDimensionFixed = false;
        if (this.width == 0 && this.matchConstraintDefaultWidth == 1) {
          this.width = -2;
          this.constrainedWidth = true;
        } 
      } 
      if (this.height == 0 || this.height == -1) {
        this.verticalDimensionFixed = false;
        if (this.height == 0 && this.matchConstraintDefaultHeight == 1) {
          this.height = -2;
          this.constrainedHeight = true;
        } 
      } 
      if (this.guidePercent != -1.0F || this.guideBegin != -1 || this.guideEnd != -1) {
        this.isGuideline = true;
        this.horizontalDimensionFixed = true;
        this.verticalDimensionFixed = true;
        if (!(this.widget instanceof Guideline))
          this.widget = (ConstraintWidget)new Guideline(); 
        ((Guideline)this.widget).setOrientation(this.orientation);
      } 
    }
    
    private static class Table {
      public static final int ANDROID_ORIENTATION = 1;
      
      public static final int LAYOUT_CONSTRAINED_HEIGHT = 28;
      
      public static final int LAYOUT_CONSTRAINED_WIDTH = 27;
      
      public static final int LAYOUT_CONSTRAINT_BASELINE_CREATOR = 43;
      
      public static final int LAYOUT_CONSTRAINT_BASELINE_TO_BASELINE_OF = 16;
      
      public static final int LAYOUT_CONSTRAINT_BOTTOM_CREATOR = 42;
      
      public static final int LAYOUT_CONSTRAINT_BOTTOM_TO_BOTTOM_OF = 15;
      
      public static final int LAYOUT_CONSTRAINT_BOTTOM_TO_TOP_OF = 14;
      
      public static final int LAYOUT_CONSTRAINT_CIRCLE = 2;
      
      public static final int LAYOUT_CONSTRAINT_CIRCLE_ANGLE = 4;
      
      public static final int LAYOUT_CONSTRAINT_CIRCLE_RADIUS = 3;
      
      public static final int LAYOUT_CONSTRAINT_DIMENSION_RATIO = 44;
      
      public static final int LAYOUT_CONSTRAINT_END_TO_END_OF = 20;
      
      public static final int LAYOUT_CONSTRAINT_END_TO_START_OF = 19;
      
      public static final int LAYOUT_CONSTRAINT_GUIDE_BEGIN = 5;
      
      public static final int LAYOUT_CONSTRAINT_GUIDE_END = 6;
      
      public static final int LAYOUT_CONSTRAINT_GUIDE_PERCENT = 7;
      
      public static final int LAYOUT_CONSTRAINT_HEIGHT_DEFAULT = 32;
      
      public static final int LAYOUT_CONSTRAINT_HEIGHT_MAX = 37;
      
      public static final int LAYOUT_CONSTRAINT_HEIGHT_MIN = 36;
      
      public static final int LAYOUT_CONSTRAINT_HEIGHT_PERCENT = 38;
      
      public static final int LAYOUT_CONSTRAINT_HORIZONTAL_BIAS = 29;
      
      public static final int LAYOUT_CONSTRAINT_HORIZONTAL_CHAINSTYLE = 47;
      
      public static final int LAYOUT_CONSTRAINT_HORIZONTAL_WEIGHT = 45;
      
      public static final int LAYOUT_CONSTRAINT_LEFT_CREATOR = 39;
      
      public static final int LAYOUT_CONSTRAINT_LEFT_TO_LEFT_OF = 8;
      
      public static final int LAYOUT_CONSTRAINT_LEFT_TO_RIGHT_OF = 9;
      
      public static final int LAYOUT_CONSTRAINT_RIGHT_CREATOR = 41;
      
      public static final int LAYOUT_CONSTRAINT_RIGHT_TO_LEFT_OF = 10;
      
      public static final int LAYOUT_CONSTRAINT_RIGHT_TO_RIGHT_OF = 11;
      
      public static final int LAYOUT_CONSTRAINT_START_TO_END_OF = 17;
      
      public static final int LAYOUT_CONSTRAINT_START_TO_START_OF = 18;
      
      public static final int LAYOUT_CONSTRAINT_TAG = 51;
      
      public static final int LAYOUT_CONSTRAINT_TOP_CREATOR = 40;
      
      public static final int LAYOUT_CONSTRAINT_TOP_TO_BOTTOM_OF = 13;
      
      public static final int LAYOUT_CONSTRAINT_TOP_TO_TOP_OF = 12;
      
      public static final int LAYOUT_CONSTRAINT_VERTICAL_BIAS = 30;
      
      public static final int LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE = 48;
      
      public static final int LAYOUT_CONSTRAINT_VERTICAL_WEIGHT = 46;
      
      public static final int LAYOUT_CONSTRAINT_WIDTH_DEFAULT = 31;
      
      public static final int LAYOUT_CONSTRAINT_WIDTH_MAX = 34;
      
      public static final int LAYOUT_CONSTRAINT_WIDTH_MIN = 33;
      
      public static final int LAYOUT_CONSTRAINT_WIDTH_PERCENT = 35;
      
      public static final int LAYOUT_EDITOR_ABSOLUTEX = 49;
      
      public static final int LAYOUT_EDITOR_ABSOLUTEY = 50;
      
      public static final int LAYOUT_GONE_MARGIN_BOTTOM = 24;
      
      public static final int LAYOUT_GONE_MARGIN_END = 26;
      
      public static final int LAYOUT_GONE_MARGIN_LEFT = 21;
      
      public static final int LAYOUT_GONE_MARGIN_RIGHT = 23;
      
      public static final int LAYOUT_GONE_MARGIN_START = 25;
      
      public static final int LAYOUT_GONE_MARGIN_TOP = 22;
      
      public static final int UNUSED = 0;
      
      public static final SparseIntArray map = new SparseIntArray();
      
      static {
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircle, 2);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
        map.append(R.styleable.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
        map.append(R.styleable.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
        map.append(R.styleable.ConstraintLayout_Layout_android_orientation, 1);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
        map.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
        map.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginTop, 22);
        map.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginRight, 23);
        map.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
        map.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginStart, 25);
        map.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constrainedWidth, 27);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constrainedHeight, 28);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
        map.append(R.styleable.ConstraintLayout_Layout_layout_constraintTag, 51);
      }
    }
  }
  
  private static class Table {
    public static final int ANDROID_ORIENTATION = 1;
    
    public static final int LAYOUT_CONSTRAINED_HEIGHT = 28;
    
    public static final int LAYOUT_CONSTRAINED_WIDTH = 27;
    
    public static final int LAYOUT_CONSTRAINT_BASELINE_CREATOR = 43;
    
    public static final int LAYOUT_CONSTRAINT_BASELINE_TO_BASELINE_OF = 16;
    
    public static final int LAYOUT_CONSTRAINT_BOTTOM_CREATOR = 42;
    
    public static final int LAYOUT_CONSTRAINT_BOTTOM_TO_BOTTOM_OF = 15;
    
    public static final int LAYOUT_CONSTRAINT_BOTTOM_TO_TOP_OF = 14;
    
    public static final int LAYOUT_CONSTRAINT_CIRCLE = 2;
    
    public static final int LAYOUT_CONSTRAINT_CIRCLE_ANGLE = 4;
    
    public static final int LAYOUT_CONSTRAINT_CIRCLE_RADIUS = 3;
    
    public static final int LAYOUT_CONSTRAINT_DIMENSION_RATIO = 44;
    
    public static final int LAYOUT_CONSTRAINT_END_TO_END_OF = 20;
    
    public static final int LAYOUT_CONSTRAINT_END_TO_START_OF = 19;
    
    public static final int LAYOUT_CONSTRAINT_GUIDE_BEGIN = 5;
    
    public static final int LAYOUT_CONSTRAINT_GUIDE_END = 6;
    
    public static final int LAYOUT_CONSTRAINT_GUIDE_PERCENT = 7;
    
    public static final int LAYOUT_CONSTRAINT_HEIGHT_DEFAULT = 32;
    
    public static final int LAYOUT_CONSTRAINT_HEIGHT_MAX = 37;
    
    public static final int LAYOUT_CONSTRAINT_HEIGHT_MIN = 36;
    
    public static final int LAYOUT_CONSTRAINT_HEIGHT_PERCENT = 38;
    
    public static final int LAYOUT_CONSTRAINT_HORIZONTAL_BIAS = 29;
    
    public static final int LAYOUT_CONSTRAINT_HORIZONTAL_CHAINSTYLE = 47;
    
    public static final int LAYOUT_CONSTRAINT_HORIZONTAL_WEIGHT = 45;
    
    public static final int LAYOUT_CONSTRAINT_LEFT_CREATOR = 39;
    
    public static final int LAYOUT_CONSTRAINT_LEFT_TO_LEFT_OF = 8;
    
    public static final int LAYOUT_CONSTRAINT_LEFT_TO_RIGHT_OF = 9;
    
    public static final int LAYOUT_CONSTRAINT_RIGHT_CREATOR = 41;
    
    public static final int LAYOUT_CONSTRAINT_RIGHT_TO_LEFT_OF = 10;
    
    public static final int LAYOUT_CONSTRAINT_RIGHT_TO_RIGHT_OF = 11;
    
    public static final int LAYOUT_CONSTRAINT_START_TO_END_OF = 17;
    
    public static final int LAYOUT_CONSTRAINT_START_TO_START_OF = 18;
    
    public static final int LAYOUT_CONSTRAINT_TAG = 51;
    
    public static final int LAYOUT_CONSTRAINT_TOP_CREATOR = 40;
    
    public static final int LAYOUT_CONSTRAINT_TOP_TO_BOTTOM_OF = 13;
    
    public static final int LAYOUT_CONSTRAINT_TOP_TO_TOP_OF = 12;
    
    public static final int LAYOUT_CONSTRAINT_VERTICAL_BIAS = 30;
    
    public static final int LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE = 48;
    
    public static final int LAYOUT_CONSTRAINT_VERTICAL_WEIGHT = 46;
    
    public static final int LAYOUT_CONSTRAINT_WIDTH_DEFAULT = 31;
    
    public static final int LAYOUT_CONSTRAINT_WIDTH_MAX = 34;
    
    public static final int LAYOUT_CONSTRAINT_WIDTH_MIN = 33;
    
    public static final int LAYOUT_CONSTRAINT_WIDTH_PERCENT = 35;
    
    public static final int LAYOUT_EDITOR_ABSOLUTEX = 49;
    
    public static final int LAYOUT_EDITOR_ABSOLUTEY = 50;
    
    public static final int LAYOUT_GONE_MARGIN_BOTTOM = 24;
    
    public static final int LAYOUT_GONE_MARGIN_END = 26;
    
    public static final int LAYOUT_GONE_MARGIN_LEFT = 21;
    
    public static final int LAYOUT_GONE_MARGIN_RIGHT = 23;
    
    public static final int LAYOUT_GONE_MARGIN_START = 25;
    
    public static final int LAYOUT_GONE_MARGIN_TOP = 22;
    
    public static final int UNUSED = 0;
    
    public static final SparseIntArray map = new SparseIntArray();
    
    static {
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircle, 2);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
      map.append(R.styleable.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
      map.append(R.styleable.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
      map.append(R.styleable.ConstraintLayout_Layout_android_orientation, 1);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
      map.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
      map.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginTop, 22);
      map.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginRight, 23);
      map.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
      map.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginStart, 25);
      map.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constrainedWidth, 27);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constrainedHeight, 28);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
      map.append(R.styleable.ConstraintLayout_Layout_layout_constraintTag, 51);
    }
  }
  
  class Measurer implements BasicMeasure.Measurer {
    ConstraintLayout layout;
    
    int layoutHeightSpec;
    
    int layoutWidthSpec;
    
    int paddingBottom;
    
    int paddingHeight;
    
    int paddingTop;
    
    int paddingWidth;
    
    public Measurer(ConstraintLayout param1ConstraintLayout1) {
      this.layout = param1ConstraintLayout1;
    }
    
    public void captureLayoutInfos(int param1Int1, int param1Int2, int param1Int3, int param1Int4, int param1Int5, int param1Int6) {
      this.paddingTop = param1Int3;
      this.paddingBottom = param1Int4;
      this.paddingWidth = param1Int5;
      this.paddingHeight = param1Int6;
      this.layoutWidthSpec = param1Int1;
      this.layoutHeightSpec = param1Int2;
    }
    
    public final void didMeasures() {
      int i = this.layout.getChildCount();
      boolean bool = false;
      byte b;
      for (b = 0; b < i; b++) {
        View view = this.layout.getChildAt(b);
        if (view instanceof Placeholder)
          ((Placeholder)view).updatePostMeasure(this.layout); 
      } 
      i = this.layout.mConstraintHelpers.size();
      if (i > 0)
        for (b = bool; b < i; b++)
          ((ConstraintHelper)this.layout.mConstraintHelpers.get(b)).updatePostMeasure(this.layout);  
    }
    
    public final void measure(ConstraintWidget param1ConstraintWidget, BasicMeasure.Measure param1Measure) {
      // Byte code:
      //   0: aload_1
      //   1: ifnonnull -> 5
      //   4: return
      //   5: aload_1
      //   6: invokevirtual getVisibility : ()I
      //   9: bipush #8
      //   11: if_icmpne -> 37
      //   14: aload_1
      //   15: invokevirtual isInPlaceholder : ()Z
      //   18: ifne -> 37
      //   21: aload_2
      //   22: iconst_0
      //   23: putfield measuredWidth : I
      //   26: aload_2
      //   27: iconst_0
      //   28: putfield measuredHeight : I
      //   31: aload_2
      //   32: iconst_0
      //   33: putfield measuredBaseline : I
      //   36: return
      //   37: aload_2
      //   38: getfield horizontalBehavior : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
      //   41: astore_3
      //   42: aload_2
      //   43: getfield verticalBehavior : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
      //   46: astore #4
      //   48: aload_2
      //   49: getfield horizontalDimension : I
      //   52: istore #5
      //   54: aload_2
      //   55: getfield verticalDimension : I
      //   58: istore #6
      //   60: aload_0
      //   61: getfield paddingTop : I
      //   64: aload_0
      //   65: getfield paddingBottom : I
      //   68: iadd
      //   69: istore #7
      //   71: aload_0
      //   72: getfield paddingWidth : I
      //   75: istore #8
      //   77: aload_1
      //   78: invokevirtual getCompanionWidget : ()Ljava/lang/Object;
      //   81: checkcast android/view/View
      //   84: astore #9
      //   86: getstatic androidx/constraintlayout/widget/ConstraintLayout$1.$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour : [I
      //   89: aload_3
      //   90: invokevirtual ordinal : ()I
      //   93: iaload
      //   94: istore #10
      //   96: iload #10
      //   98: iconst_1
      //   99: if_icmpeq -> 307
      //   102: iload #10
      //   104: iconst_2
      //   105: if_icmpeq -> 280
      //   108: iload #10
      //   110: iconst_3
      //   111: if_icmpeq -> 253
      //   114: iload #10
      //   116: iconst_4
      //   117: if_icmpeq -> 133
      //   120: iconst_0
      //   121: istore #8
      //   123: iconst_0
      //   124: istore #11
      //   126: iload #8
      //   128: istore #5
      //   130: goto -> 327
      //   133: aload_0
      //   134: getfield layoutWidthSpec : I
      //   137: iload #8
      //   139: bipush #-2
      //   141: invokestatic getChildMeasureSpec : (III)I
      //   144: istore #11
      //   146: aload_1
      //   147: getfield mMatchConstraintDefaultWidth : I
      //   150: iconst_1
      //   151: if_icmpne -> 160
      //   154: iconst_1
      //   155: istore #8
      //   157: goto -> 163
      //   160: iconst_0
      //   161: istore #8
      //   163: aload_1
      //   164: getfield wrapMeasure : [I
      //   167: iconst_2
      //   168: iconst_0
      //   169: iastore
      //   170: iload #11
      //   172: istore #5
      //   174: aload_2
      //   175: getfield useCurrentDimensions : Z
      //   178: ifeq -> 301
      //   181: iload #8
      //   183: ifeq -> 208
      //   186: aload_1
      //   187: getfield wrapMeasure : [I
      //   190: iconst_3
      //   191: iaload
      //   192: ifeq -> 208
      //   195: aload_1
      //   196: getfield wrapMeasure : [I
      //   199: iconst_0
      //   200: iaload
      //   201: aload_1
      //   202: invokevirtual getWidth : ()I
      //   205: if_icmpne -> 216
      //   208: aload #9
      //   210: instanceof androidx/constraintlayout/widget/Placeholder
      //   213: ifeq -> 222
      //   216: iconst_1
      //   217: istore #10
      //   219: goto -> 225
      //   222: iconst_0
      //   223: istore #10
      //   225: iload #8
      //   227: ifeq -> 239
      //   230: iload #11
      //   232: istore #5
      //   234: iload #10
      //   236: ifeq -> 301
      //   239: aload_1
      //   240: invokevirtual getWidth : ()I
      //   243: ldc 1073741824
      //   245: invokestatic makeMeasureSpec : (II)I
      //   248: istore #8
      //   250: goto -> 123
      //   253: aload_0
      //   254: getfield layoutWidthSpec : I
      //   257: iload #8
      //   259: aload_1
      //   260: invokevirtual getHorizontalMargin : ()I
      //   263: iadd
      //   264: iconst_m1
      //   265: invokestatic getChildMeasureSpec : (III)I
      //   268: istore #8
      //   270: aload_1
      //   271: getfield wrapMeasure : [I
      //   274: iconst_2
      //   275: iconst_m1
      //   276: iastore
      //   277: goto -> 123
      //   280: aload_0
      //   281: getfield layoutWidthSpec : I
      //   284: iload #8
      //   286: bipush #-2
      //   288: invokestatic getChildMeasureSpec : (III)I
      //   291: istore #5
      //   293: aload_1
      //   294: getfield wrapMeasure : [I
      //   297: iconst_2
      //   298: bipush #-2
      //   300: iastore
      //   301: iconst_1
      //   302: istore #11
      //   304: goto -> 327
      //   307: iload #5
      //   309: ldc 1073741824
      //   311: invokestatic makeMeasureSpec : (II)I
      //   314: istore #8
      //   316: aload_1
      //   317: getfield wrapMeasure : [I
      //   320: iconst_2
      //   321: iload #5
      //   323: iastore
      //   324: goto -> 123
      //   327: getstatic androidx/constraintlayout/widget/ConstraintLayout$1.$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour : [I
      //   330: aload #4
      //   332: invokevirtual ordinal : ()I
      //   335: iaload
      //   336: istore #8
      //   338: iload #8
      //   340: iconst_1
      //   341: if_icmpeq -> 553
      //   344: iload #8
      //   346: iconst_2
      //   347: if_icmpeq -> 526
      //   350: iload #8
      //   352: iconst_3
      //   353: if_icmpeq -> 499
      //   356: iload #8
      //   358: iconst_4
      //   359: if_icmpeq -> 379
      //   362: iconst_0
      //   363: istore #8
      //   365: iconst_0
      //   366: istore #6
      //   368: iload #8
      //   370: istore #10
      //   372: iload #6
      //   374: istore #8
      //   376: goto -> 573
      //   379: aload_0
      //   380: getfield layoutHeightSpec : I
      //   383: iload #7
      //   385: bipush #-2
      //   387: invokestatic getChildMeasureSpec : (III)I
      //   390: istore #7
      //   392: aload_1
      //   393: getfield mMatchConstraintDefaultHeight : I
      //   396: iconst_1
      //   397: if_icmpne -> 406
      //   400: iconst_1
      //   401: istore #8
      //   403: goto -> 409
      //   406: iconst_0
      //   407: istore #8
      //   409: aload_1
      //   410: getfield wrapMeasure : [I
      //   413: iconst_3
      //   414: iconst_0
      //   415: iastore
      //   416: iload #7
      //   418: istore #10
      //   420: aload_2
      //   421: getfield useCurrentDimensions : Z
      //   424: ifeq -> 547
      //   427: iload #8
      //   429: ifeq -> 454
      //   432: aload_1
      //   433: getfield wrapMeasure : [I
      //   436: iconst_2
      //   437: iaload
      //   438: ifeq -> 454
      //   441: aload_1
      //   442: getfield wrapMeasure : [I
      //   445: iconst_1
      //   446: iaload
      //   447: aload_1
      //   448: invokevirtual getHeight : ()I
      //   451: if_icmpne -> 462
      //   454: aload #9
      //   456: instanceof androidx/constraintlayout/widget/Placeholder
      //   459: ifeq -> 468
      //   462: iconst_1
      //   463: istore #6
      //   465: goto -> 471
      //   468: iconst_0
      //   469: istore #6
      //   471: iload #8
      //   473: ifeq -> 485
      //   476: iload #7
      //   478: istore #10
      //   480: iload #6
      //   482: ifeq -> 547
      //   485: aload_1
      //   486: invokevirtual getHeight : ()I
      //   489: ldc 1073741824
      //   491: invokestatic makeMeasureSpec : (II)I
      //   494: istore #8
      //   496: goto -> 365
      //   499: aload_0
      //   500: getfield layoutHeightSpec : I
      //   503: iload #7
      //   505: aload_1
      //   506: invokevirtual getVerticalMargin : ()I
      //   509: iadd
      //   510: iconst_m1
      //   511: invokestatic getChildMeasureSpec : (III)I
      //   514: istore #8
      //   516: aload_1
      //   517: getfield wrapMeasure : [I
      //   520: iconst_3
      //   521: iconst_m1
      //   522: iastore
      //   523: goto -> 365
      //   526: aload_0
      //   527: getfield layoutHeightSpec : I
      //   530: iload #7
      //   532: bipush #-2
      //   534: invokestatic getChildMeasureSpec : (III)I
      //   537: istore #10
      //   539: aload_1
      //   540: getfield wrapMeasure : [I
      //   543: iconst_3
      //   544: bipush #-2
      //   546: iastore
      //   547: iconst_1
      //   548: istore #8
      //   550: goto -> 573
      //   553: iload #6
      //   555: ldc 1073741824
      //   557: invokestatic makeMeasureSpec : (II)I
      //   560: istore #8
      //   562: aload_1
      //   563: getfield wrapMeasure : [I
      //   566: iconst_3
      //   567: iload #6
      //   569: iastore
      //   570: goto -> 365
      //   573: aload_3
      //   574: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
      //   577: if_acmpne -> 586
      //   580: iconst_1
      //   581: istore #6
      //   583: goto -> 589
      //   586: iconst_0
      //   587: istore #6
      //   589: aload #4
      //   591: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
      //   594: if_acmpne -> 603
      //   597: iconst_1
      //   598: istore #12
      //   600: goto -> 606
      //   603: iconst_0
      //   604: istore #12
      //   606: aload #4
      //   608: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_PARENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
      //   611: if_acmpeq -> 631
      //   614: aload #4
      //   616: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
      //   619: if_acmpne -> 625
      //   622: goto -> 631
      //   625: iconst_0
      //   626: istore #7
      //   628: goto -> 634
      //   631: iconst_1
      //   632: istore #7
      //   634: aload_3
      //   635: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_PARENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
      //   638: if_acmpeq -> 657
      //   641: aload_3
      //   642: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
      //   645: if_acmpne -> 651
      //   648: goto -> 657
      //   651: iconst_0
      //   652: istore #13
      //   654: goto -> 660
      //   657: iconst_1
      //   658: istore #13
      //   660: iload #6
      //   662: ifeq -> 680
      //   665: aload_1
      //   666: getfield mDimensionRatio : F
      //   669: fconst_0
      //   670: fcmpl
      //   671: ifle -> 680
      //   674: iconst_1
      //   675: istore #14
      //   677: goto -> 683
      //   680: iconst_0
      //   681: istore #14
      //   683: iload #12
      //   685: ifeq -> 703
      //   688: aload_1
      //   689: getfield mDimensionRatio : F
      //   692: fconst_0
      //   693: fcmpl
      //   694: ifle -> 703
      //   697: iconst_1
      //   698: istore #15
      //   700: goto -> 706
      //   703: iconst_0
      //   704: istore #15
      //   706: aload #9
      //   708: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
      //   711: checkcast androidx/constraintlayout/widget/ConstraintLayout$LayoutParams
      //   714: astore_3
      //   715: aload_2
      //   716: getfield useCurrentDimensions : Z
      //   719: ifne -> 761
      //   722: iload #6
      //   724: ifeq -> 761
      //   727: aload_1
      //   728: getfield mMatchConstraintDefaultWidth : I
      //   731: ifne -> 761
      //   734: iload #12
      //   736: ifeq -> 761
      //   739: aload_1
      //   740: getfield mMatchConstraintDefaultHeight : I
      //   743: ifeq -> 749
      //   746: goto -> 761
      //   749: iconst_0
      //   750: istore #5
      //   752: iconst_0
      //   753: istore #11
      //   755: iconst_0
      //   756: istore #8
      //   758: goto -> 1163
      //   761: aload #9
      //   763: instanceof androidx/constraintlayout/widget/VirtualLayout
      //   766: ifeq -> 799
      //   769: aload_1
      //   770: instanceof androidx/constraintlayout/solver/widgets/VirtualLayout
      //   773: ifeq -> 799
      //   776: aload_1
      //   777: checkcast androidx/constraintlayout/solver/widgets/VirtualLayout
      //   780: astore #4
      //   782: aload #9
      //   784: checkcast androidx/constraintlayout/widget/VirtualLayout
      //   787: aload #4
      //   789: iload #5
      //   791: iload #10
      //   793: invokevirtual onMeasure : (Landroidx/constraintlayout/solver/widgets/VirtualLayout;II)V
      //   796: goto -> 808
      //   799: aload #9
      //   801: iload #5
      //   803: iload #10
      //   805: invokevirtual measure : (II)V
      //   808: aload #9
      //   810: invokevirtual getMeasuredWidth : ()I
      //   813: istore #16
      //   815: aload #9
      //   817: invokevirtual getMeasuredHeight : ()I
      //   820: istore #12
      //   822: aload #9
      //   824: invokevirtual getBaseline : ()I
      //   827: istore #17
      //   829: iload #11
      //   831: ifeq -> 853
      //   834: aload_1
      //   835: getfield wrapMeasure : [I
      //   838: iconst_0
      //   839: iload #16
      //   841: iastore
      //   842: aload_1
      //   843: getfield wrapMeasure : [I
      //   846: iconst_2
      //   847: iload #12
      //   849: iastore
      //   850: goto -> 867
      //   853: aload_1
      //   854: getfield wrapMeasure : [I
      //   857: iconst_0
      //   858: iconst_0
      //   859: iastore
      //   860: aload_1
      //   861: getfield wrapMeasure : [I
      //   864: iconst_2
      //   865: iconst_0
      //   866: iastore
      //   867: iload #8
      //   869: ifeq -> 891
      //   872: aload_1
      //   873: getfield wrapMeasure : [I
      //   876: iconst_1
      //   877: iload #12
      //   879: iastore
      //   880: aload_1
      //   881: getfield wrapMeasure : [I
      //   884: iconst_3
      //   885: iload #16
      //   887: iastore
      //   888: goto -> 905
      //   891: aload_1
      //   892: getfield wrapMeasure : [I
      //   895: iconst_1
      //   896: iconst_0
      //   897: iastore
      //   898: aload_1
      //   899: getfield wrapMeasure : [I
      //   902: iconst_3
      //   903: iconst_0
      //   904: iastore
      //   905: aload_1
      //   906: getfield mMatchConstraintMinWidth : I
      //   909: ifle -> 926
      //   912: aload_1
      //   913: getfield mMatchConstraintMinWidth : I
      //   916: iload #16
      //   918: invokestatic max : (II)I
      //   921: istore #8
      //   923: goto -> 930
      //   926: iload #16
      //   928: istore #8
      //   930: iload #8
      //   932: istore #11
      //   934: aload_1
      //   935: getfield mMatchConstraintMaxWidth : I
      //   938: ifle -> 952
      //   941: aload_1
      //   942: getfield mMatchConstraintMaxWidth : I
      //   945: iload #8
      //   947: invokestatic min : (II)I
      //   950: istore #11
      //   952: aload_1
      //   953: getfield mMatchConstraintMinHeight : I
      //   956: ifle -> 973
      //   959: aload_1
      //   960: getfield mMatchConstraintMinHeight : I
      //   963: iload #12
      //   965: invokestatic max : (II)I
      //   968: istore #6
      //   970: goto -> 977
      //   973: iload #12
      //   975: istore #6
      //   977: iload #6
      //   979: istore #8
      //   981: aload_1
      //   982: getfield mMatchConstraintMaxHeight : I
      //   985: ifle -> 999
      //   988: aload_1
      //   989: getfield mMatchConstraintMaxHeight : I
      //   992: iload #6
      //   994: invokestatic min : (II)I
      //   997: istore #8
      //   999: iload #14
      //   1001: ifeq -> 1030
      //   1004: iload #7
      //   1006: ifeq -> 1030
      //   1009: aload_1
      //   1010: getfield mDimensionRatio : F
      //   1013: fstore #18
      //   1015: iload #8
      //   1017: i2f
      //   1018: fload #18
      //   1020: fmul
      //   1021: ldc 0.5
      //   1023: fadd
      //   1024: f2i
      //   1025: istore #11
      //   1027: goto -> 1070
      //   1030: iload #8
      //   1032: istore #6
      //   1034: iload #15
      //   1036: ifeq -> 1066
      //   1039: iload #8
      //   1041: istore #6
      //   1043: iload #13
      //   1045: ifeq -> 1066
      //   1048: aload_1
      //   1049: getfield mDimensionRatio : F
      //   1052: fstore #18
      //   1054: iload #11
      //   1056: i2f
      //   1057: fload #18
      //   1059: fdiv
      //   1060: ldc 0.5
      //   1062: fadd
      //   1063: f2i
      //   1064: istore #6
      //   1066: iload #6
      //   1068: istore #8
      //   1070: iload #16
      //   1072: iload #11
      //   1074: if_icmpne -> 1098
      //   1077: iload #12
      //   1079: iload #8
      //   1081: if_icmpeq -> 1087
      //   1084: goto -> 1098
      //   1087: iload #8
      //   1089: istore #5
      //   1091: iload #17
      //   1093: istore #8
      //   1095: goto -> 1163
      //   1098: iload #16
      //   1100: iload #11
      //   1102: if_icmpeq -> 1114
      //   1105: iload #11
      //   1107: ldc 1073741824
      //   1109: invokestatic makeMeasureSpec : (II)I
      //   1112: istore #5
      //   1114: iload #12
      //   1116: iload #8
      //   1118: if_icmpeq -> 1130
      //   1121: iload #8
      //   1123: ldc 1073741824
      //   1125: invokestatic makeMeasureSpec : (II)I
      //   1128: istore #10
      //   1130: aload #9
      //   1132: iload #5
      //   1134: iload #10
      //   1136: invokevirtual measure : (II)V
      //   1139: aload #9
      //   1141: invokevirtual getMeasuredWidth : ()I
      //   1144: istore #11
      //   1146: aload #9
      //   1148: invokevirtual getMeasuredHeight : ()I
      //   1151: istore #5
      //   1153: aload #9
      //   1155: invokevirtual getBaseline : ()I
      //   1158: istore #8
      //   1160: goto -> 1095
      //   1163: iload #8
      //   1165: iconst_m1
      //   1166: if_icmpeq -> 1175
      //   1169: iconst_1
      //   1170: istore #19
      //   1172: goto -> 1178
      //   1175: iconst_0
      //   1176: istore #19
      //   1178: iload #11
      //   1180: aload_2
      //   1181: getfield horizontalDimension : I
      //   1184: if_icmpne -> 1205
      //   1187: iload #5
      //   1189: aload_2
      //   1190: getfield verticalDimension : I
      //   1193: if_icmpeq -> 1199
      //   1196: goto -> 1205
      //   1199: iconst_0
      //   1200: istore #20
      //   1202: goto -> 1208
      //   1205: iconst_1
      //   1206: istore #20
      //   1208: aload_2
      //   1209: iload #20
      //   1211: putfield measuredNeedsSolverPass : Z
      //   1214: aload_3
      //   1215: getfield needsBaseline : Z
      //   1218: ifeq -> 1224
      //   1221: iconst_1
      //   1222: istore #19
      //   1224: iload #19
      //   1226: ifeq -> 1249
      //   1229: iload #8
      //   1231: iconst_m1
      //   1232: if_icmpeq -> 1249
      //   1235: aload_1
      //   1236: invokevirtual getBaselineDistance : ()I
      //   1239: iload #8
      //   1241: if_icmpeq -> 1249
      //   1244: aload_2
      //   1245: iconst_1
      //   1246: putfield measuredNeedsSolverPass : Z
      //   1249: aload_2
      //   1250: iload #11
      //   1252: putfield measuredWidth : I
      //   1255: aload_2
      //   1256: iload #5
      //   1258: putfield measuredHeight : I
      //   1261: aload_2
      //   1262: iload #19
      //   1264: putfield measuredHasBaseline : Z
      //   1267: aload_2
      //   1268: iload #8
      //   1270: putfield measuredBaseline : I
      //   1273: return
    }
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/widget/ConstraintLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */