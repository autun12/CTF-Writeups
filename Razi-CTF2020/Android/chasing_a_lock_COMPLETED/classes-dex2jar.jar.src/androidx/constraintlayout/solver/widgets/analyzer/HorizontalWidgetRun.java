package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;

public class HorizontalWidgetRun extends WidgetRun {
  private static int[] tempDimensions = new int[2];
  
  public HorizontalWidgetRun(ConstraintWidget paramConstraintWidget) {
    super(paramConstraintWidget);
    this.start.type = DependencyNode.Type.LEFT;
    this.end.type = DependencyNode.Type.RIGHT;
    this.orientation = 0;
  }
  
  private void computeInsetRatio(int[] paramArrayOfint, int paramInt1, int paramInt2, int paramInt3, int paramInt4, float paramFloat, int paramInt5) {
    paramInt1 = paramInt2 - paramInt1;
    paramInt2 = paramInt4 - paramInt3;
    if (paramInt5 != -1) {
      if (paramInt5 != 0) {
        if (paramInt5 == 1) {
          paramInt2 = (int)(paramInt1 * paramFloat + 0.5F);
          paramArrayOfint[0] = paramInt1;
          paramArrayOfint[1] = paramInt2;
        } 
      } else {
        paramArrayOfint[0] = (int)(paramInt2 * paramFloat + 0.5F);
        paramArrayOfint[1] = paramInt2;
      } 
    } else {
      paramInt3 = (int)(paramInt2 * paramFloat + 0.5F);
      paramInt4 = (int)(paramInt1 / paramFloat + 0.5F);
      if (paramInt3 <= paramInt1) {
        paramArrayOfint[0] = paramInt3;
        paramArrayOfint[1] = paramInt2;
      } else if (paramInt4 <= paramInt2) {
        paramArrayOfint[0] = paramInt1;
        paramArrayOfint[1] = paramInt4;
      } 
    } 
  }
  
  void apply() {
    if (this.widget.measured)
      this.dimension.resolve(this.widget.getWidth()); 
    if (!this.dimension.resolved) {
      this.dimensionBehavior = this.widget.getHorizontalDimensionBehaviour();
      if (this.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
        if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
          ConstraintWidget constraintWidget = this.widget.getParent();
          if ((constraintWidget != null && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED) || constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int i = constraintWidget.getWidth();
            int j = this.widget.mLeft.getMargin();
            int k = this.widget.mRight.getMargin();
            addTarget(this.start, constraintWidget.horizontalRun.start, this.widget.mLeft.getMargin());
            addTarget(this.end, constraintWidget.horizontalRun.end, -this.widget.mRight.getMargin());
            this.dimension.resolve(i - j - k);
            return;
          } 
        } 
        if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.FIXED)
          this.dimension.resolve(this.widget.getWidth()); 
      } 
    } else if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
      ConstraintWidget constraintWidget = this.widget.getParent();
      if ((constraintWidget != null && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED) || constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
        addTarget(this.start, constraintWidget.horizontalRun.start, this.widget.mLeft.getMargin());
        addTarget(this.end, constraintWidget.horizontalRun.end, -this.widget.mRight.getMargin());
        return;
      } 
    } 
    if (this.dimension.resolved && this.widget.measured) {
      if ((this.widget.mListAnchors[0]).mTarget != null && (this.widget.mListAnchors[1]).mTarget != null) {
        if (this.widget.isInHorizontalChain()) {
          this.start.margin = this.widget.mListAnchors[0].getMargin();
          this.end.margin = -this.widget.mListAnchors[1].getMargin();
        } else {
          DependencyNode dependencyNode = getTarget(this.widget.mListAnchors[0]);
          if (dependencyNode != null)
            addTarget(this.start, dependencyNode, this.widget.mListAnchors[0].getMargin()); 
          dependencyNode = getTarget(this.widget.mListAnchors[1]);
          if (dependencyNode != null)
            addTarget(this.end, dependencyNode, -this.widget.mListAnchors[1].getMargin()); 
          this.start.delegateToWidgetRun = true;
          this.end.delegateToWidgetRun = true;
        } 
      } else if ((this.widget.mListAnchors[0]).mTarget != null) {
        DependencyNode dependencyNode = getTarget(this.widget.mListAnchors[0]);
        if (dependencyNode != null) {
          addTarget(this.start, dependencyNode, this.widget.mListAnchors[0].getMargin());
          addTarget(this.end, this.start, this.dimension.value);
        } 
      } else if ((this.widget.mListAnchors[1]).mTarget != null) {
        DependencyNode dependencyNode = getTarget(this.widget.mListAnchors[1]);
        if (dependencyNode != null) {
          addTarget(this.end, dependencyNode, -this.widget.mListAnchors[1].getMargin());
          addTarget(this.start, this.end, -this.dimension.value);
        } 
      } else if (!(this.widget instanceof androidx.constraintlayout.solver.widgets.Helper) && this.widget.getParent() != null && (this.widget.getAnchor(ConstraintAnchor.Type.CENTER)).mTarget == null) {
        DependencyNode dependencyNode = (this.widget.getParent()).horizontalRun.start;
        addTarget(this.start, dependencyNode, this.widget.getX());
        addTarget(this.end, this.start, this.dimension.value);
      } 
    } else {
      if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
        int i = this.widget.mMatchConstraintDefaultWidth;
        if (i != 2) {
          if (i == 3)
            if (this.widget.mMatchConstraintDefaultHeight == 3) {
              this.start.updateDelegate = this;
              this.end.updateDelegate = this;
              this.widget.verticalRun.start.updateDelegate = this;
              this.widget.verticalRun.end.updateDelegate = this;
              this.dimension.updateDelegate = this;
              if (this.widget.isInVerticalChain()) {
                this.dimension.targets.add(this.widget.verticalRun.dimension);
                this.widget.verticalRun.dimension.dependencies.add(this.dimension);
                this.widget.verticalRun.dimension.updateDelegate = this;
                this.dimension.targets.add(this.widget.verticalRun.start);
                this.dimension.targets.add(this.widget.verticalRun.end);
                this.widget.verticalRun.start.dependencies.add(this.dimension);
                this.widget.verticalRun.end.dependencies.add(this.dimension);
              } else if (this.widget.isInHorizontalChain()) {
                this.widget.verticalRun.dimension.targets.add(this.dimension);
                this.dimension.dependencies.add(this.widget.verticalRun.dimension);
              } else {
                this.widget.verticalRun.dimension.targets.add(this.dimension);
              } 
            } else {
              DimensionDependency dimensionDependency = this.widget.verticalRun.dimension;
              this.dimension.targets.add(dimensionDependency);
              dimensionDependency.dependencies.add(this.dimension);
              this.widget.verticalRun.start.dependencies.add(this.dimension);
              this.widget.verticalRun.end.dependencies.add(this.dimension);
              this.dimension.delegateToWidgetRun = true;
              this.dimension.dependencies.add(this.start);
              this.dimension.dependencies.add(this.end);
              this.start.targets.add(this.dimension);
              this.end.targets.add(this.dimension);
            }  
        } else {
          ConstraintWidget constraintWidget = this.widget.getParent();
          if (constraintWidget != null) {
            DimensionDependency dimensionDependency = constraintWidget.verticalRun.dimension;
            this.dimension.targets.add(dimensionDependency);
            dimensionDependency.dependencies.add(this.dimension);
            this.dimension.delegateToWidgetRun = true;
            this.dimension.dependencies.add(this.start);
            this.dimension.dependencies.add(this.end);
          } 
        } 
      } 
      if ((this.widget.mListAnchors[0]).mTarget != null && (this.widget.mListAnchors[1]).mTarget != null) {
        if (this.widget.isInHorizontalChain()) {
          this.start.margin = this.widget.mListAnchors[0].getMargin();
          this.end.margin = -this.widget.mListAnchors[1].getMargin();
        } else {
          DependencyNode dependencyNode2 = getTarget(this.widget.mListAnchors[0]);
          DependencyNode dependencyNode1 = getTarget(this.widget.mListAnchors[1]);
          dependencyNode2.addDependency(this);
          dependencyNode1.addDependency(this);
          this.mRunType = WidgetRun.RunType.CENTER;
        } 
      } else if ((this.widget.mListAnchors[0]).mTarget != null) {
        DependencyNode dependencyNode = getTarget(this.widget.mListAnchors[0]);
        if (dependencyNode != null) {
          addTarget(this.start, dependencyNode, this.widget.mListAnchors[0].getMargin());
          addTarget(this.end, this.start, 1, this.dimension);
        } 
      } else if ((this.widget.mListAnchors[1]).mTarget != null) {
        DependencyNode dependencyNode = getTarget(this.widget.mListAnchors[1]);
        if (dependencyNode != null) {
          addTarget(this.end, dependencyNode, -this.widget.mListAnchors[1].getMargin());
          addTarget(this.start, this.end, -1, this.dimension);
        } 
      } else if (!(this.widget instanceof androidx.constraintlayout.solver.widgets.Helper) && this.widget.getParent() != null) {
        DependencyNode dependencyNode = (this.widget.getParent()).horizontalRun.start;
        addTarget(this.start, dependencyNode, this.widget.getX());
        addTarget(this.end, this.start, 1, this.dimension);
      } 
    } 
  }
  
  public void applyToWidget() {
    if (this.start.resolved)
      this.widget.setX(this.start.value); 
  }
  
  void clear() {
    this.runGroup = null;
    this.start.clear();
    this.end.clear();
    this.dimension.clear();
    this.resolved = false;
  }
  
  void reset() {
    this.resolved = false;
    this.start.clear();
    this.start.resolved = false;
    this.end.clear();
    this.end.resolved = false;
    this.dimension.resolved = false;
  }
  
  boolean supportsWrapComputation() {
    return (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) ? ((this.widget.mMatchConstraintDefaultWidth == 0)) : true;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("HorizontalRun ");
    stringBuilder.append(this.widget.getDebugName());
    return stringBuilder.toString();
  }
  
  public void update(Dependency paramDependency) {
    // Byte code:
    //   0: getstatic androidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun$1.$SwitchMap$androidx$constraintlayout$solver$widgets$analyzer$WidgetRun$RunType : [I
    //   3: aload_0
    //   4: getfield mRunType : Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;
    //   7: invokevirtual ordinal : ()I
    //   10: iaload
    //   11: istore_2
    //   12: iload_2
    //   13: iconst_1
    //   14: if_icmpeq -> 59
    //   17: iload_2
    //   18: iconst_2
    //   19: if_icmpeq -> 51
    //   22: iload_2
    //   23: iconst_3
    //   24: if_icmpeq -> 30
    //   27: goto -> 64
    //   30: aload_0
    //   31: aload_1
    //   32: aload_0
    //   33: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   36: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   39: aload_0
    //   40: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   43: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   46: iconst_0
    //   47: invokevirtual updateRunCenter : (Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V
    //   50: return
    //   51: aload_0
    //   52: aload_1
    //   53: invokevirtual updateRunEnd : (Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;)V
    //   56: goto -> 64
    //   59: aload_0
    //   60: aload_1
    //   61: invokevirtual updateRunStart : (Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;)V
    //   64: aload_0
    //   65: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   68: getfield resolved : Z
    //   71: ifne -> 1567
    //   74: aload_0
    //   75: getfield dimensionBehavior : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   78: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   81: if_acmpne -> 1567
    //   84: aload_0
    //   85: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   88: getfield mMatchConstraintDefaultWidth : I
    //   91: istore_2
    //   92: iload_2
    //   93: iconst_2
    //   94: if_icmpeq -> 1506
    //   97: iload_2
    //   98: iconst_3
    //   99: if_icmpeq -> 105
    //   102: goto -> 1567
    //   105: aload_0
    //   106: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   109: getfield mMatchConstraintDefaultHeight : I
    //   112: ifeq -> 258
    //   115: aload_0
    //   116: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   119: getfield mMatchConstraintDefaultHeight : I
    //   122: iconst_3
    //   123: if_icmpne -> 129
    //   126: goto -> 258
    //   129: aload_0
    //   130: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   133: invokevirtual getDimensionRatioSide : ()I
    //   136: istore_2
    //   137: iload_2
    //   138: iconst_m1
    //   139: if_icmpeq -> 210
    //   142: iload_2
    //   143: ifeq -> 183
    //   146: iload_2
    //   147: iconst_1
    //   148: if_icmpeq -> 156
    //   151: iconst_0
    //   152: istore_2
    //   153: goto -> 247
    //   156: aload_0
    //   157: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   160: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   163: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   166: getfield value : I
    //   169: i2f
    //   170: fstore_3
    //   171: aload_0
    //   172: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   175: invokevirtual getDimensionRatio : ()F
    //   178: fstore #4
    //   180: goto -> 234
    //   183: aload_0
    //   184: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   187: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   190: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   193: getfield value : I
    //   196: i2f
    //   197: aload_0
    //   198: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   201: invokevirtual getDimensionRatio : ()F
    //   204: fdiv
    //   205: fstore #4
    //   207: goto -> 240
    //   210: aload_0
    //   211: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   214: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   217: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   220: getfield value : I
    //   223: i2f
    //   224: fstore_3
    //   225: aload_0
    //   226: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   229: invokevirtual getDimensionRatio : ()F
    //   232: fstore #4
    //   234: fload_3
    //   235: fload #4
    //   237: fmul
    //   238: fstore #4
    //   240: fload #4
    //   242: ldc 0.5
    //   244: fadd
    //   245: f2i
    //   246: istore_2
    //   247: aload_0
    //   248: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   251: iload_2
    //   252: invokevirtual resolve : (I)V
    //   255: goto -> 1567
    //   258: aload_0
    //   259: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   262: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   265: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   268: astore #5
    //   270: aload_0
    //   271: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   274: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   277: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   280: astore_1
    //   281: aload_0
    //   282: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   285: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   288: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   291: ifnull -> 299
    //   294: iconst_1
    //   295: istore_2
    //   296: goto -> 301
    //   299: iconst_0
    //   300: istore_2
    //   301: aload_0
    //   302: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   305: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   308: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   311: ifnull -> 320
    //   314: iconst_1
    //   315: istore #6
    //   317: goto -> 323
    //   320: iconst_0
    //   321: istore #6
    //   323: aload_0
    //   324: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   327: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   330: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   333: ifnull -> 342
    //   336: iconst_1
    //   337: istore #7
    //   339: goto -> 345
    //   342: iconst_0
    //   343: istore #7
    //   345: aload_0
    //   346: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   349: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   352: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   355: ifnull -> 364
    //   358: iconst_1
    //   359: istore #8
    //   361: goto -> 367
    //   364: iconst_0
    //   365: istore #8
    //   367: aload_0
    //   368: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   371: invokevirtual getDimensionRatioSide : ()I
    //   374: istore #9
    //   376: iload_2
    //   377: ifeq -> 986
    //   380: iload #6
    //   382: ifeq -> 986
    //   385: iload #7
    //   387: ifeq -> 986
    //   390: iload #8
    //   392: ifeq -> 986
    //   395: aload_0
    //   396: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   399: invokevirtual getDimensionRatio : ()F
    //   402: fstore #4
    //   404: aload #5
    //   406: getfield resolved : Z
    //   409: ifeq -> 588
    //   412: aload_1
    //   413: getfield resolved : Z
    //   416: ifeq -> 588
    //   419: aload_0
    //   420: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   423: getfield readyToSolve : Z
    //   426: ifeq -> 587
    //   429: aload_0
    //   430: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   433: getfield readyToSolve : Z
    //   436: ifne -> 442
    //   439: goto -> 587
    //   442: aload_0
    //   443: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   446: getfield targets : Ljava/util/List;
    //   449: iconst_0
    //   450: invokeinterface get : (I)Ljava/lang/Object;
    //   455: checkcast androidx/constraintlayout/solver/widgets/analyzer/DependencyNode
    //   458: getfield value : I
    //   461: istore #10
    //   463: aload_0
    //   464: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   467: getfield margin : I
    //   470: istore_2
    //   471: aload_0
    //   472: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   475: getfield targets : Ljava/util/List;
    //   478: iconst_0
    //   479: invokeinterface get : (I)Ljava/lang/Object;
    //   484: checkcast androidx/constraintlayout/solver/widgets/analyzer/DependencyNode
    //   487: getfield value : I
    //   490: istore #11
    //   492: aload_0
    //   493: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   496: getfield margin : I
    //   499: istore #6
    //   501: aload #5
    //   503: getfield value : I
    //   506: istore #12
    //   508: aload #5
    //   510: getfield margin : I
    //   513: istore #8
    //   515: aload_1
    //   516: getfield value : I
    //   519: istore #13
    //   521: aload_1
    //   522: getfield margin : I
    //   525: istore #7
    //   527: aload_0
    //   528: getstatic androidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun.tempDimensions : [I
    //   531: iload #10
    //   533: iload_2
    //   534: iadd
    //   535: iload #11
    //   537: iload #6
    //   539: isub
    //   540: iload #12
    //   542: iload #8
    //   544: iadd
    //   545: iload #13
    //   547: iload #7
    //   549: isub
    //   550: fload #4
    //   552: iload #9
    //   554: invokespecial computeInsetRatio : ([IIIIIFI)V
    //   557: aload_0
    //   558: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   561: getstatic androidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun.tempDimensions : [I
    //   564: iconst_0
    //   565: iaload
    //   566: invokevirtual resolve : (I)V
    //   569: aload_0
    //   570: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   573: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   576: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   579: getstatic androidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun.tempDimensions : [I
    //   582: iconst_1
    //   583: iaload
    //   584: invokevirtual resolve : (I)V
    //   587: return
    //   588: aload_0
    //   589: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   592: getfield resolved : Z
    //   595: ifeq -> 775
    //   598: aload_0
    //   599: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   602: getfield resolved : Z
    //   605: ifeq -> 775
    //   608: aload #5
    //   610: getfield readyToSolve : Z
    //   613: ifeq -> 774
    //   616: aload_1
    //   617: getfield readyToSolve : Z
    //   620: ifne -> 626
    //   623: goto -> 774
    //   626: aload_0
    //   627: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   630: getfield value : I
    //   633: istore #12
    //   635: aload_0
    //   636: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   639: getfield margin : I
    //   642: istore #7
    //   644: aload_0
    //   645: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   648: getfield value : I
    //   651: istore #6
    //   653: aload_0
    //   654: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   657: getfield margin : I
    //   660: istore #8
    //   662: aload #5
    //   664: getfield targets : Ljava/util/List;
    //   667: iconst_0
    //   668: invokeinterface get : (I)Ljava/lang/Object;
    //   673: checkcast androidx/constraintlayout/solver/widgets/analyzer/DependencyNode
    //   676: getfield value : I
    //   679: istore_2
    //   680: aload #5
    //   682: getfield margin : I
    //   685: istore #13
    //   687: aload_1
    //   688: getfield targets : Ljava/util/List;
    //   691: iconst_0
    //   692: invokeinterface get : (I)Ljava/lang/Object;
    //   697: checkcast androidx/constraintlayout/solver/widgets/analyzer/DependencyNode
    //   700: getfield value : I
    //   703: istore #10
    //   705: aload_1
    //   706: getfield margin : I
    //   709: istore #11
    //   711: aload_0
    //   712: getstatic androidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun.tempDimensions : [I
    //   715: iload #12
    //   717: iload #7
    //   719: iadd
    //   720: iload #6
    //   722: iload #8
    //   724: isub
    //   725: iload_2
    //   726: iload #13
    //   728: iadd
    //   729: iload #10
    //   731: iload #11
    //   733: isub
    //   734: fload #4
    //   736: iload #9
    //   738: invokespecial computeInsetRatio : ([IIIIIFI)V
    //   741: aload_0
    //   742: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   745: getstatic androidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun.tempDimensions : [I
    //   748: iconst_0
    //   749: iaload
    //   750: invokevirtual resolve : (I)V
    //   753: aload_0
    //   754: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   757: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   760: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   763: getstatic androidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun.tempDimensions : [I
    //   766: iconst_1
    //   767: iaload
    //   768: invokevirtual resolve : (I)V
    //   771: goto -> 775
    //   774: return
    //   775: aload_0
    //   776: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   779: getfield readyToSolve : Z
    //   782: ifeq -> 985
    //   785: aload_0
    //   786: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   789: getfield readyToSolve : Z
    //   792: ifeq -> 985
    //   795: aload #5
    //   797: getfield readyToSolve : Z
    //   800: ifeq -> 985
    //   803: aload_1
    //   804: getfield readyToSolve : Z
    //   807: ifne -> 813
    //   810: goto -> 985
    //   813: aload_0
    //   814: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   817: getfield targets : Ljava/util/List;
    //   820: iconst_0
    //   821: invokeinterface get : (I)Ljava/lang/Object;
    //   826: checkcast androidx/constraintlayout/solver/widgets/analyzer/DependencyNode
    //   829: getfield value : I
    //   832: istore #6
    //   834: aload_0
    //   835: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   838: getfield margin : I
    //   841: istore #8
    //   843: aload_0
    //   844: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   847: getfield targets : Ljava/util/List;
    //   850: iconst_0
    //   851: invokeinterface get : (I)Ljava/lang/Object;
    //   856: checkcast androidx/constraintlayout/solver/widgets/analyzer/DependencyNode
    //   859: getfield value : I
    //   862: istore_2
    //   863: aload_0
    //   864: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   867: getfield margin : I
    //   870: istore #12
    //   872: aload #5
    //   874: getfield targets : Ljava/util/List;
    //   877: iconst_0
    //   878: invokeinterface get : (I)Ljava/lang/Object;
    //   883: checkcast androidx/constraintlayout/solver/widgets/analyzer/DependencyNode
    //   886: getfield value : I
    //   889: istore #10
    //   891: aload #5
    //   893: getfield margin : I
    //   896: istore #11
    //   898: aload_1
    //   899: getfield targets : Ljava/util/List;
    //   902: iconst_0
    //   903: invokeinterface get : (I)Ljava/lang/Object;
    //   908: checkcast androidx/constraintlayout/solver/widgets/analyzer/DependencyNode
    //   911: getfield value : I
    //   914: istore #13
    //   916: aload_1
    //   917: getfield margin : I
    //   920: istore #7
    //   922: aload_0
    //   923: getstatic androidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun.tempDimensions : [I
    //   926: iload #6
    //   928: iload #8
    //   930: iadd
    //   931: iload_2
    //   932: iload #12
    //   934: isub
    //   935: iload #10
    //   937: iload #11
    //   939: iadd
    //   940: iload #13
    //   942: iload #7
    //   944: isub
    //   945: fload #4
    //   947: iload #9
    //   949: invokespecial computeInsetRatio : ([IIIIIFI)V
    //   952: aload_0
    //   953: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   956: getstatic androidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun.tempDimensions : [I
    //   959: iconst_0
    //   960: iaload
    //   961: invokevirtual resolve : (I)V
    //   964: aload_0
    //   965: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   968: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   971: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   974: getstatic androidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun.tempDimensions : [I
    //   977: iconst_1
    //   978: iaload
    //   979: invokevirtual resolve : (I)V
    //   982: goto -> 1567
    //   985: return
    //   986: iload_2
    //   987: ifeq -> 1253
    //   990: iload #7
    //   992: ifeq -> 1253
    //   995: aload_0
    //   996: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   999: getfield readyToSolve : Z
    //   1002: ifeq -> 1252
    //   1005: aload_0
    //   1006: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1009: getfield readyToSolve : Z
    //   1012: ifne -> 1018
    //   1015: goto -> 1252
    //   1018: aload_0
    //   1019: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1022: invokevirtual getDimensionRatio : ()F
    //   1025: fstore #4
    //   1027: aload_0
    //   1028: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1031: getfield targets : Ljava/util/List;
    //   1034: iconst_0
    //   1035: invokeinterface get : (I)Ljava/lang/Object;
    //   1040: checkcast androidx/constraintlayout/solver/widgets/analyzer/DependencyNode
    //   1043: getfield value : I
    //   1046: aload_0
    //   1047: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1050: getfield margin : I
    //   1053: iadd
    //   1054: istore #6
    //   1056: aload_0
    //   1057: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1060: getfield targets : Ljava/util/List;
    //   1063: iconst_0
    //   1064: invokeinterface get : (I)Ljava/lang/Object;
    //   1069: checkcast androidx/constraintlayout/solver/widgets/analyzer/DependencyNode
    //   1072: getfield value : I
    //   1075: aload_0
    //   1076: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1079: getfield margin : I
    //   1082: isub
    //   1083: istore_2
    //   1084: iload #9
    //   1086: iconst_m1
    //   1087: if_icmpeq -> 1178
    //   1090: iload #9
    //   1092: ifeq -> 1178
    //   1095: iload #9
    //   1097: iconst_1
    //   1098: if_icmpeq -> 1104
    //   1101: goto -> 1567
    //   1104: aload_0
    //   1105: iload_2
    //   1106: iload #6
    //   1108: isub
    //   1109: iconst_0
    //   1110: invokevirtual getLimitedDimension : (II)I
    //   1113: istore_2
    //   1114: iload_2
    //   1115: i2f
    //   1116: fload #4
    //   1118: fdiv
    //   1119: ldc 0.5
    //   1121: fadd
    //   1122: f2i
    //   1123: istore #7
    //   1125: aload_0
    //   1126: iload #7
    //   1128: iconst_1
    //   1129: invokevirtual getLimitedDimension : (II)I
    //   1132: istore #6
    //   1134: iload #7
    //   1136: iload #6
    //   1138: if_icmpeq -> 1152
    //   1141: iload #6
    //   1143: i2f
    //   1144: fload #4
    //   1146: fmul
    //   1147: ldc 0.5
    //   1149: fadd
    //   1150: f2i
    //   1151: istore_2
    //   1152: aload_0
    //   1153: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1156: iload_2
    //   1157: invokevirtual resolve : (I)V
    //   1160: aload_0
    //   1161: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1164: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   1167: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1170: iload #6
    //   1172: invokevirtual resolve : (I)V
    //   1175: goto -> 1567
    //   1178: aload_0
    //   1179: iload_2
    //   1180: iload #6
    //   1182: isub
    //   1183: iconst_0
    //   1184: invokevirtual getLimitedDimension : (II)I
    //   1187: istore_2
    //   1188: iload_2
    //   1189: i2f
    //   1190: fload #4
    //   1192: fmul
    //   1193: ldc 0.5
    //   1195: fadd
    //   1196: f2i
    //   1197: istore #7
    //   1199: aload_0
    //   1200: iload #7
    //   1202: iconst_1
    //   1203: invokevirtual getLimitedDimension : (II)I
    //   1206: istore #6
    //   1208: iload #7
    //   1210: iload #6
    //   1212: if_icmpeq -> 1226
    //   1215: iload #6
    //   1217: i2f
    //   1218: fload #4
    //   1220: fdiv
    //   1221: ldc 0.5
    //   1223: fadd
    //   1224: f2i
    //   1225: istore_2
    //   1226: aload_0
    //   1227: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1230: iload_2
    //   1231: invokevirtual resolve : (I)V
    //   1234: aload_0
    //   1235: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1238: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   1241: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1244: iload #6
    //   1246: invokevirtual resolve : (I)V
    //   1249: goto -> 1567
    //   1252: return
    //   1253: iload #6
    //   1255: ifeq -> 1567
    //   1258: iload #8
    //   1260: ifeq -> 1567
    //   1263: aload #5
    //   1265: getfield readyToSolve : Z
    //   1268: ifeq -> 1505
    //   1271: aload_1
    //   1272: getfield readyToSolve : Z
    //   1275: ifne -> 1281
    //   1278: goto -> 1505
    //   1281: aload_0
    //   1282: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1285: invokevirtual getDimensionRatio : ()F
    //   1288: fstore #4
    //   1290: aload #5
    //   1292: getfield targets : Ljava/util/List;
    //   1295: iconst_0
    //   1296: invokeinterface get : (I)Ljava/lang/Object;
    //   1301: checkcast androidx/constraintlayout/solver/widgets/analyzer/DependencyNode
    //   1304: getfield value : I
    //   1307: aload #5
    //   1309: getfield margin : I
    //   1312: iadd
    //   1313: istore #6
    //   1315: aload_1
    //   1316: getfield targets : Ljava/util/List;
    //   1319: iconst_0
    //   1320: invokeinterface get : (I)Ljava/lang/Object;
    //   1325: checkcast androidx/constraintlayout/solver/widgets/analyzer/DependencyNode
    //   1328: getfield value : I
    //   1331: aload_1
    //   1332: getfield margin : I
    //   1335: isub
    //   1336: istore_2
    //   1337: iload #9
    //   1339: iconst_m1
    //   1340: if_icmpeq -> 1431
    //   1343: iload #9
    //   1345: ifeq -> 1357
    //   1348: iload #9
    //   1350: iconst_1
    //   1351: if_icmpeq -> 1431
    //   1354: goto -> 1567
    //   1357: aload_0
    //   1358: iload_2
    //   1359: iload #6
    //   1361: isub
    //   1362: iconst_1
    //   1363: invokevirtual getLimitedDimension : (II)I
    //   1366: istore_2
    //   1367: iload_2
    //   1368: i2f
    //   1369: fload #4
    //   1371: fmul
    //   1372: ldc 0.5
    //   1374: fadd
    //   1375: f2i
    //   1376: istore #7
    //   1378: aload_0
    //   1379: iload #7
    //   1381: iconst_0
    //   1382: invokevirtual getLimitedDimension : (II)I
    //   1385: istore #6
    //   1387: iload #7
    //   1389: iload #6
    //   1391: if_icmpeq -> 1405
    //   1394: iload #6
    //   1396: i2f
    //   1397: fload #4
    //   1399: fdiv
    //   1400: ldc 0.5
    //   1402: fadd
    //   1403: f2i
    //   1404: istore_2
    //   1405: aload_0
    //   1406: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1409: iload #6
    //   1411: invokevirtual resolve : (I)V
    //   1414: aload_0
    //   1415: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1418: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   1421: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1424: iload_2
    //   1425: invokevirtual resolve : (I)V
    //   1428: goto -> 1567
    //   1431: aload_0
    //   1432: iload_2
    //   1433: iload #6
    //   1435: isub
    //   1436: iconst_1
    //   1437: invokevirtual getLimitedDimension : (II)I
    //   1440: istore_2
    //   1441: iload_2
    //   1442: i2f
    //   1443: fload #4
    //   1445: fdiv
    //   1446: ldc 0.5
    //   1448: fadd
    //   1449: f2i
    //   1450: istore #7
    //   1452: aload_0
    //   1453: iload #7
    //   1455: iconst_0
    //   1456: invokevirtual getLimitedDimension : (II)I
    //   1459: istore #6
    //   1461: iload #7
    //   1463: iload #6
    //   1465: if_icmpeq -> 1479
    //   1468: iload #6
    //   1470: i2f
    //   1471: fload #4
    //   1473: fmul
    //   1474: ldc 0.5
    //   1476: fadd
    //   1477: f2i
    //   1478: istore_2
    //   1479: aload_0
    //   1480: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1483: iload #6
    //   1485: invokevirtual resolve : (I)V
    //   1488: aload_0
    //   1489: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1492: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   1495: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1498: iload_2
    //   1499: invokevirtual resolve : (I)V
    //   1502: goto -> 1567
    //   1505: return
    //   1506: aload_0
    //   1507: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1510: invokevirtual getParent : ()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1513: astore_1
    //   1514: aload_1
    //   1515: ifnull -> 1567
    //   1518: aload_1
    //   1519: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   1522: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1525: getfield resolved : Z
    //   1528: ifeq -> 1567
    //   1531: aload_0
    //   1532: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1535: getfield mMatchConstraintPercentWidth : F
    //   1538: fstore #4
    //   1540: aload_1
    //   1541: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   1544: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1547: getfield value : I
    //   1550: i2f
    //   1551: fload #4
    //   1553: fmul
    //   1554: ldc 0.5
    //   1556: fadd
    //   1557: f2i
    //   1558: istore_2
    //   1559: aload_0
    //   1560: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1563: iload_2
    //   1564: invokevirtual resolve : (I)V
    //   1567: aload_0
    //   1568: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1571: getfield readyToSolve : Z
    //   1574: ifeq -> 2097
    //   1577: aload_0
    //   1578: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1581: getfield readyToSolve : Z
    //   1584: ifne -> 1590
    //   1587: goto -> 2097
    //   1590: aload_0
    //   1591: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1594: getfield resolved : Z
    //   1597: ifeq -> 1621
    //   1600: aload_0
    //   1601: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1604: getfield resolved : Z
    //   1607: ifeq -> 1621
    //   1610: aload_0
    //   1611: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1614: getfield resolved : Z
    //   1617: ifeq -> 1621
    //   1620: return
    //   1621: aload_0
    //   1622: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1625: getfield resolved : Z
    //   1628: ifne -> 1753
    //   1631: aload_0
    //   1632: getfield dimensionBehavior : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1635: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1638: if_acmpne -> 1753
    //   1641: aload_0
    //   1642: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1645: getfield mMatchConstraintDefaultWidth : I
    //   1648: ifne -> 1753
    //   1651: aload_0
    //   1652: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1655: invokevirtual isInHorizontalChain : ()Z
    //   1658: ifne -> 1753
    //   1661: aload_0
    //   1662: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1665: getfield targets : Ljava/util/List;
    //   1668: iconst_0
    //   1669: invokeinterface get : (I)Ljava/lang/Object;
    //   1674: checkcast androidx/constraintlayout/solver/widgets/analyzer/DependencyNode
    //   1677: astore_1
    //   1678: aload_0
    //   1679: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1682: getfield targets : Ljava/util/List;
    //   1685: iconst_0
    //   1686: invokeinterface get : (I)Ljava/lang/Object;
    //   1691: checkcast androidx/constraintlayout/solver/widgets/analyzer/DependencyNode
    //   1694: astore #5
    //   1696: aload_1
    //   1697: getfield value : I
    //   1700: aload_0
    //   1701: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1704: getfield margin : I
    //   1707: iadd
    //   1708: istore_2
    //   1709: aload #5
    //   1711: getfield value : I
    //   1714: aload_0
    //   1715: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1718: getfield margin : I
    //   1721: iadd
    //   1722: istore #6
    //   1724: aload_0
    //   1725: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1728: iload_2
    //   1729: invokevirtual resolve : (I)V
    //   1732: aload_0
    //   1733: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1736: iload #6
    //   1738: invokevirtual resolve : (I)V
    //   1741: aload_0
    //   1742: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1745: iload #6
    //   1747: iload_2
    //   1748: isub
    //   1749: invokevirtual resolve : (I)V
    //   1752: return
    //   1753: aload_0
    //   1754: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1757: getfield resolved : Z
    //   1760: ifne -> 1935
    //   1763: aload_0
    //   1764: getfield dimensionBehavior : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1767: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1770: if_acmpne -> 1935
    //   1773: aload_0
    //   1774: getfield matchConstraintsType : I
    //   1777: iconst_1
    //   1778: if_icmpne -> 1935
    //   1781: aload_0
    //   1782: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1785: getfield targets : Ljava/util/List;
    //   1788: invokeinterface size : ()I
    //   1793: ifle -> 1935
    //   1796: aload_0
    //   1797: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1800: getfield targets : Ljava/util/List;
    //   1803: invokeinterface size : ()I
    //   1808: ifle -> 1935
    //   1811: aload_0
    //   1812: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1815: getfield targets : Ljava/util/List;
    //   1818: iconst_0
    //   1819: invokeinterface get : (I)Ljava/lang/Object;
    //   1824: checkcast androidx/constraintlayout/solver/widgets/analyzer/DependencyNode
    //   1827: astore #5
    //   1829: aload_0
    //   1830: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1833: getfield targets : Ljava/util/List;
    //   1836: iconst_0
    //   1837: invokeinterface get : (I)Ljava/lang/Object;
    //   1842: checkcast androidx/constraintlayout/solver/widgets/analyzer/DependencyNode
    //   1845: astore_1
    //   1846: aload #5
    //   1848: getfield value : I
    //   1851: istore #6
    //   1853: aload_0
    //   1854: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1857: getfield margin : I
    //   1860: istore_2
    //   1861: aload_1
    //   1862: getfield value : I
    //   1865: aload_0
    //   1866: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1869: getfield margin : I
    //   1872: iadd
    //   1873: iload #6
    //   1875: iload_2
    //   1876: iadd
    //   1877: isub
    //   1878: aload_0
    //   1879: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1882: getfield wrapValue : I
    //   1885: invokestatic min : (II)I
    //   1888: istore_2
    //   1889: aload_0
    //   1890: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1893: getfield mMatchConstraintMaxWidth : I
    //   1896: istore #7
    //   1898: aload_0
    //   1899: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1902: getfield mMatchConstraintMinWidth : I
    //   1905: iload_2
    //   1906: invokestatic max : (II)I
    //   1909: istore #6
    //   1911: iload #6
    //   1913: istore_2
    //   1914: iload #7
    //   1916: ifle -> 1927
    //   1919: iload #7
    //   1921: iload #6
    //   1923: invokestatic min : (II)I
    //   1926: istore_2
    //   1927: aload_0
    //   1928: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1931: iload_2
    //   1932: invokevirtual resolve : (I)V
    //   1935: aload_0
    //   1936: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1939: getfield resolved : Z
    //   1942: ifne -> 1946
    //   1945: return
    //   1946: aload_0
    //   1947: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1950: getfield targets : Ljava/util/List;
    //   1953: iconst_0
    //   1954: invokeinterface get : (I)Ljava/lang/Object;
    //   1959: checkcast androidx/constraintlayout/solver/widgets/analyzer/DependencyNode
    //   1962: astore #5
    //   1964: aload_0
    //   1965: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1968: getfield targets : Ljava/util/List;
    //   1971: iconst_0
    //   1972: invokeinterface get : (I)Ljava/lang/Object;
    //   1977: checkcast androidx/constraintlayout/solver/widgets/analyzer/DependencyNode
    //   1980: astore_1
    //   1981: aload #5
    //   1983: getfield value : I
    //   1986: aload_0
    //   1987: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1990: getfield margin : I
    //   1993: iadd
    //   1994: istore #6
    //   1996: aload_1
    //   1997: getfield value : I
    //   2000: aload_0
    //   2001: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   2004: getfield margin : I
    //   2007: iadd
    //   2008: istore_2
    //   2009: aload_0
    //   2010: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   2013: invokevirtual getHorizontalBiasPercent : ()F
    //   2016: fstore #4
    //   2018: aload #5
    //   2020: aload_1
    //   2021: if_acmpne -> 2040
    //   2024: aload #5
    //   2026: getfield value : I
    //   2029: istore #6
    //   2031: aload_1
    //   2032: getfield value : I
    //   2035: istore_2
    //   2036: ldc 0.5
    //   2038: fstore #4
    //   2040: aload_0
    //   2041: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   2044: getfield value : I
    //   2047: istore #7
    //   2049: aload_0
    //   2050: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   2053: iload #6
    //   2055: i2f
    //   2056: ldc 0.5
    //   2058: fadd
    //   2059: iload_2
    //   2060: iload #6
    //   2062: isub
    //   2063: iload #7
    //   2065: isub
    //   2066: i2f
    //   2067: fload #4
    //   2069: fmul
    //   2070: fadd
    //   2071: f2i
    //   2072: invokevirtual resolve : (I)V
    //   2075: aload_0
    //   2076: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   2079: aload_0
    //   2080: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   2083: getfield value : I
    //   2086: aload_0
    //   2087: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   2090: getfield value : I
    //   2093: iadd
    //   2094: invokevirtual resolve : (I)V
    //   2097: return
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */