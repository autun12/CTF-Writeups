package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;

public class ChainRun extends WidgetRun {
  private int chainStyle;
  
  ArrayList<WidgetRun> widgets = new ArrayList<WidgetRun>();
  
  public ChainRun(ConstraintWidget paramConstraintWidget, int paramInt) {
    super(paramConstraintWidget);
    this.orientation = paramInt;
    build();
  }
  
  private void build() {
    int i;
    ConstraintWidget constraintWidget1 = this.widget;
    ConstraintWidget constraintWidget2;
    for (constraintWidget2 = constraintWidget1.getPreviousChainMember(this.orientation); constraintWidget2 != null; constraintWidget2 = constraintWidget) {
      ConstraintWidget constraintWidget = constraintWidget2.getPreviousChainMember(this.orientation);
      constraintWidget1 = constraintWidget2;
    } 
    this.widget = constraintWidget1;
    this.widgets.add(constraintWidget1.getRun(this.orientation));
    for (constraintWidget2 = constraintWidget1.getNextChainMember(this.orientation); constraintWidget2 != null; constraintWidget2 = constraintWidget2.getNextChainMember(this.orientation))
      this.widgets.add(constraintWidget2.getRun(this.orientation)); 
    for (WidgetRun widgetRun : this.widgets) {
      if (this.orientation == 0) {
        widgetRun.widget.horizontalChainRun = this;
        continue;
      } 
      if (this.orientation == 1)
        widgetRun.widget.verticalChainRun = this; 
    } 
    if (this.orientation == 0 && ((ConstraintWidgetContainer)this.widget.getParent()).isRtl()) {
      i = 1;
    } else {
      i = 0;
    } 
    if (i && this.widgets.size() > 1) {
      ArrayList<WidgetRun> arrayList = this.widgets;
      this.widget = ((WidgetRun)arrayList.get(arrayList.size() - 1)).widget;
    } 
    if (this.orientation == 0) {
      i = this.widget.getHorizontalChainStyle();
    } else {
      i = this.widget.getVerticalChainStyle();
    } 
    this.chainStyle = i;
  }
  
  private ConstraintWidget getFirstVisibleWidget() {
    for (byte b = 0; b < this.widgets.size(); b++) {
      WidgetRun widgetRun = this.widgets.get(b);
      if (widgetRun.widget.getVisibility() != 8)
        return widgetRun.widget; 
    } 
    return null;
  }
  
  private ConstraintWidget getLastVisibleWidget() {
    for (int i = this.widgets.size() - 1; i >= 0; i--) {
      WidgetRun widgetRun = this.widgets.get(i);
      if (widgetRun.widget.getVisibility() != 8)
        return widgetRun.widget; 
    } 
    return null;
  }
  
  void apply() {
    DependencyNode dependencyNode;
    Iterator<WidgetRun> iterator = this.widgets.iterator();
    while (iterator.hasNext())
      ((WidgetRun)iterator.next()).apply(); 
    int i = this.widgets.size();
    if (i < 1)
      return; 
    ConstraintWidget constraintWidget2 = ((WidgetRun)this.widgets.get(0)).widget;
    ConstraintWidget constraintWidget1 = ((WidgetRun)this.widgets.get(i - 1)).widget;
    if (this.orientation == 0) {
      ConstraintAnchor constraintAnchor2 = constraintWidget2.mLeft;
      ConstraintAnchor constraintAnchor1 = constraintWidget1.mRight;
      DependencyNode dependencyNode1 = getTarget(constraintAnchor2, 0);
      i = constraintAnchor2.getMargin();
      ConstraintWidget constraintWidget = getFirstVisibleWidget();
      if (constraintWidget != null)
        i = constraintWidget.mLeft.getMargin(); 
      if (dependencyNode1 != null)
        addTarget(this.start, dependencyNode1, i); 
      dependencyNode = getTarget(constraintAnchor1, 0);
      i = constraintAnchor1.getMargin();
      constraintWidget1 = getLastVisibleWidget();
      if (constraintWidget1 != null)
        i = constraintWidget1.mRight.getMargin(); 
      if (dependencyNode != null)
        addTarget(this.end, dependencyNode, -i); 
    } else {
      ConstraintAnchor constraintAnchor2 = ((ConstraintWidget)dependencyNode).mTop;
      ConstraintAnchor constraintAnchor1 = constraintWidget1.mBottom;
      dependencyNode = getTarget(constraintAnchor2, 1);
      i = constraintAnchor2.getMargin();
      ConstraintWidget constraintWidget4 = getFirstVisibleWidget();
      if (constraintWidget4 != null)
        i = constraintWidget4.mTop.getMargin(); 
      if (dependencyNode != null)
        addTarget(this.start, dependencyNode, i); 
      dependencyNode = getTarget(constraintAnchor1, 1);
      i = constraintAnchor1.getMargin();
      ConstraintWidget constraintWidget3 = getLastVisibleWidget();
      if (constraintWidget3 != null)
        i = constraintWidget3.mBottom.getMargin(); 
      if (dependencyNode != null)
        addTarget(this.end, dependencyNode, -i); 
    } 
    this.start.updateDelegate = this;
    this.end.updateDelegate = this;
  }
  
  public void applyToWidget() {
    for (byte b = 0; b < this.widgets.size(); b++)
      ((WidgetRun)this.widgets.get(b)).applyToWidget(); 
  }
  
  void clear() {
    this.runGroup = null;
    Iterator<WidgetRun> iterator = this.widgets.iterator();
    while (iterator.hasNext())
      ((WidgetRun)iterator.next()).clear(); 
  }
  
  public long getWrapDimension() {
    int i = this.widgets.size();
    long l = 0L;
    for (byte b = 0; b < i; b++) {
      WidgetRun widgetRun = this.widgets.get(b);
      l = l + widgetRun.start.margin + widgetRun.getWrapDimension() + widgetRun.end.margin;
    } 
    return l;
  }
  
  void reset() {
    this.start.resolved = false;
    this.end.resolved = false;
  }
  
  boolean supportsWrapComputation() {
    int i = this.widgets.size();
    for (byte b = 0; b < i; b++) {
      if (!((WidgetRun)this.widgets.get(b)).supportsWrapComputation())
        return false; 
    } 
    return true;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("ChainRun ");
    if (this.orientation == 0) {
      str = "horizontal : ";
    } else {
      str = "vertical : ";
    } 
    stringBuilder.append(str);
    String str = stringBuilder.toString();
    for (WidgetRun widgetRun : this.widgets) {
      StringBuilder stringBuilder2 = new StringBuilder();
      stringBuilder2.append(str);
      stringBuilder2.append("<");
      str = stringBuilder2.toString();
      stringBuilder2 = new StringBuilder();
      stringBuilder2.append(str);
      stringBuilder2.append(widgetRun);
      str = stringBuilder2.toString();
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append(str);
      stringBuilder1.append("> ");
      str = stringBuilder1.toString();
    } 
    return str;
  }
  
  public void update(Dependency paramDependency) {
    // Byte code:
    //   0: aload_0
    //   1: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   4: getfield resolved : Z
    //   7: ifeq -> 2489
    //   10: aload_0
    //   11: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   14: getfield resolved : Z
    //   17: ifne -> 23
    //   20: goto -> 2489
    //   23: aload_0
    //   24: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   27: invokevirtual getParent : ()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   30: astore_1
    //   31: aload_1
    //   32: ifnull -> 53
    //   35: aload_1
    //   36: instanceof androidx/constraintlayout/solver/widgets/ConstraintWidgetContainer
    //   39: ifeq -> 53
    //   42: aload_1
    //   43: checkcast androidx/constraintlayout/solver/widgets/ConstraintWidgetContainer
    //   46: invokevirtual isRtl : ()Z
    //   49: istore_2
    //   50: goto -> 55
    //   53: iconst_0
    //   54: istore_2
    //   55: aload_0
    //   56: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   59: getfield value : I
    //   62: aload_0
    //   63: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   66: getfield value : I
    //   69: isub
    //   70: istore_3
    //   71: aload_0
    //   72: getfield widgets : Ljava/util/ArrayList;
    //   75: invokevirtual size : ()I
    //   78: istore #4
    //   80: iconst_0
    //   81: istore #5
    //   83: iconst_m1
    //   84: istore #6
    //   86: iload #5
    //   88: iload #4
    //   90: if_icmpge -> 126
    //   93: iload #5
    //   95: istore #7
    //   97: aload_0
    //   98: getfield widgets : Ljava/util/ArrayList;
    //   101: iload #5
    //   103: invokevirtual get : (I)Ljava/lang/Object;
    //   106: checkcast androidx/constraintlayout/solver/widgets/analyzer/WidgetRun
    //   109: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   112: invokevirtual getVisibility : ()I
    //   115: bipush #8
    //   117: if_icmpne -> 129
    //   120: iinc #5, 1
    //   123: goto -> 83
    //   126: iconst_m1
    //   127: istore #7
    //   129: iload #4
    //   131: iconst_1
    //   132: isub
    //   133: istore #8
    //   135: iload #8
    //   137: istore #5
    //   139: iload #6
    //   141: istore #9
    //   143: iload #5
    //   145: iflt -> 181
    //   148: aload_0
    //   149: getfield widgets : Ljava/util/ArrayList;
    //   152: iload #5
    //   154: invokevirtual get : (I)Ljava/lang/Object;
    //   157: checkcast androidx/constraintlayout/solver/widgets/analyzer/WidgetRun
    //   160: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   163: invokevirtual getVisibility : ()I
    //   166: bipush #8
    //   168: if_icmpne -> 177
    //   171: iinc #5, -1
    //   174: goto -> 139
    //   177: iload #5
    //   179: istore #9
    //   181: iconst_0
    //   182: istore #10
    //   184: iload #10
    //   186: iconst_2
    //   187: if_icmpge -> 653
    //   190: iconst_0
    //   191: istore #11
    //   193: iconst_0
    //   194: istore #12
    //   196: iconst_0
    //   197: istore #5
    //   199: iconst_0
    //   200: istore #13
    //   202: fconst_0
    //   203: fstore #14
    //   205: iload #11
    //   207: iload #4
    //   209: if_icmpge -> 622
    //   212: aload_0
    //   213: getfield widgets : Ljava/util/ArrayList;
    //   216: iload #11
    //   218: invokevirtual get : (I)Ljava/lang/Object;
    //   221: checkcast androidx/constraintlayout/solver/widgets/analyzer/WidgetRun
    //   224: astore_1
    //   225: aload_1
    //   226: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   229: invokevirtual getVisibility : ()I
    //   232: bipush #8
    //   234: if_icmpne -> 248
    //   237: iload #12
    //   239: istore #6
    //   241: iload #5
    //   243: istore #15
    //   245: goto -> 608
    //   248: iload #13
    //   250: iconst_1
    //   251: iadd
    //   252: istore #16
    //   254: iload #12
    //   256: istore #6
    //   258: iload #11
    //   260: ifle -> 286
    //   263: iload #12
    //   265: istore #6
    //   267: iload #11
    //   269: iload #7
    //   271: if_icmplt -> 286
    //   274: iload #12
    //   276: aload_1
    //   277: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   280: getfield margin : I
    //   283: iadd
    //   284: istore #6
    //   286: aload_1
    //   287: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   290: getfield value : I
    //   293: istore #15
    //   295: aload_1
    //   296: getfield dimensionBehavior : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   299: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   302: if_acmpeq -> 311
    //   305: iconst_1
    //   306: istore #13
    //   308: goto -> 314
    //   311: iconst_0
    //   312: istore #13
    //   314: iload #13
    //   316: ifeq -> 392
    //   319: aload_0
    //   320: getfield orientation : I
    //   323: ifne -> 343
    //   326: aload_1
    //   327: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   330: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   333: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   336: getfield resolved : Z
    //   339: ifne -> 343
    //   342: return
    //   343: iload #13
    //   345: istore #17
    //   347: iload #15
    //   349: istore #18
    //   351: iload #5
    //   353: istore #12
    //   355: aload_0
    //   356: getfield orientation : I
    //   359: iconst_1
    //   360: if_icmpne -> 464
    //   363: iload #13
    //   365: istore #17
    //   367: iload #15
    //   369: istore #18
    //   371: iload #5
    //   373: istore #12
    //   375: aload_1
    //   376: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   379: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   382: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   385: getfield resolved : Z
    //   388: ifne -> 464
    //   391: return
    //   392: aload_1
    //   393: getfield matchConstraintsType : I
    //   396: iconst_1
    //   397: if_icmpne -> 427
    //   400: iload #10
    //   402: ifne -> 427
    //   405: aload_1
    //   406: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   409: getfield wrapValue : I
    //   412: istore #13
    //   414: iload #5
    //   416: iconst_1
    //   417: iadd
    //   418: istore #12
    //   420: iload #13
    //   422: istore #5
    //   424: goto -> 457
    //   427: iload #13
    //   429: istore #17
    //   431: iload #15
    //   433: istore #18
    //   435: iload #5
    //   437: istore #12
    //   439: aload_1
    //   440: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   443: getfield resolved : Z
    //   446: ifeq -> 464
    //   449: iload #5
    //   451: istore #12
    //   453: iload #15
    //   455: istore #5
    //   457: iconst_1
    //   458: istore #17
    //   460: iload #5
    //   462: istore #18
    //   464: iload #17
    //   466: ifne -> 526
    //   469: iload #12
    //   471: iconst_1
    //   472: iadd
    //   473: istore #13
    //   475: aload_1
    //   476: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   479: getfield mWeight : [F
    //   482: aload_0
    //   483: getfield orientation : I
    //   486: faload
    //   487: fstore #19
    //   489: iload #6
    //   491: istore #5
    //   493: iload #13
    //   495: istore #12
    //   497: fload #14
    //   499: fstore #20
    //   501: fload #19
    //   503: fconst_0
    //   504: fcmpl
    //   505: iflt -> 537
    //   508: fload #14
    //   510: fload #19
    //   512: fadd
    //   513: fstore #20
    //   515: iload #6
    //   517: istore #5
    //   519: iload #13
    //   521: istore #12
    //   523: goto -> 537
    //   526: iload #6
    //   528: iload #18
    //   530: iadd
    //   531: istore #5
    //   533: fload #14
    //   535: fstore #20
    //   537: iload #5
    //   539: istore #6
    //   541: iload #12
    //   543: istore #15
    //   545: iload #16
    //   547: istore #13
    //   549: fload #20
    //   551: fstore #14
    //   553: iload #11
    //   555: iload #8
    //   557: if_icmpge -> 608
    //   560: iload #5
    //   562: istore #6
    //   564: iload #12
    //   566: istore #15
    //   568: iload #16
    //   570: istore #13
    //   572: fload #20
    //   574: fstore #14
    //   576: iload #11
    //   578: iload #9
    //   580: if_icmpge -> 608
    //   583: iload #5
    //   585: aload_1
    //   586: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   589: getfield margin : I
    //   592: ineg
    //   593: iadd
    //   594: istore #6
    //   596: fload #20
    //   598: fstore #14
    //   600: iload #16
    //   602: istore #13
    //   604: iload #12
    //   606: istore #15
    //   608: iinc #11, 1
    //   611: iload #6
    //   613: istore #12
    //   615: iload #15
    //   617: istore #5
    //   619: goto -> 205
    //   622: iload #12
    //   624: iload_3
    //   625: if_icmplt -> 642
    //   628: iload #5
    //   630: ifne -> 636
    //   633: goto -> 642
    //   636: iinc #10, 1
    //   639: goto -> 184
    //   642: iload #13
    //   644: istore #17
    //   646: iload #5
    //   648: istore #6
    //   650: goto -> 665
    //   653: iconst_0
    //   654: istore #17
    //   656: iconst_0
    //   657: istore #12
    //   659: iconst_0
    //   660: istore #6
    //   662: fconst_0
    //   663: fstore #14
    //   665: aload_0
    //   666: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   669: getfield value : I
    //   672: istore #13
    //   674: iload_2
    //   675: ifeq -> 687
    //   678: aload_0
    //   679: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   682: getfield value : I
    //   685: istore #13
    //   687: iload #13
    //   689: istore #5
    //   691: iload #12
    //   693: iload_3
    //   694: if_icmple -> 736
    //   697: iload_2
    //   698: ifeq -> 720
    //   701: iload #13
    //   703: iload #12
    //   705: iload_3
    //   706: isub
    //   707: i2f
    //   708: fconst_2
    //   709: fdiv
    //   710: ldc 0.5
    //   712: fadd
    //   713: f2i
    //   714: iadd
    //   715: istore #5
    //   717: goto -> 736
    //   720: iload #13
    //   722: iload #12
    //   724: iload_3
    //   725: isub
    //   726: i2f
    //   727: fconst_2
    //   728: fdiv
    //   729: ldc 0.5
    //   731: fadd
    //   732: f2i
    //   733: isub
    //   734: istore #5
    //   736: iload #6
    //   738: ifle -> 1279
    //   741: iload_3
    //   742: iload #12
    //   744: isub
    //   745: i2f
    //   746: fstore #20
    //   748: fload #20
    //   750: iload #6
    //   752: i2f
    //   753: fdiv
    //   754: ldc 0.5
    //   756: fadd
    //   757: f2i
    //   758: istore #11
    //   760: iconst_0
    //   761: istore #16
    //   763: iconst_0
    //   764: istore #13
    //   766: iload #5
    //   768: istore #10
    //   770: iload #16
    //   772: iload #4
    //   774: if_icmpge -> 1082
    //   777: aload_0
    //   778: getfield widgets : Ljava/util/ArrayList;
    //   781: iload #16
    //   783: invokevirtual get : (I)Ljava/lang/Object;
    //   786: checkcast androidx/constraintlayout/solver/widgets/analyzer/WidgetRun
    //   789: astore_1
    //   790: aload_1
    //   791: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   794: invokevirtual getVisibility : ()I
    //   797: bipush #8
    //   799: if_icmpne -> 805
    //   802: goto -> 1076
    //   805: aload_1
    //   806: getfield dimensionBehavior : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   809: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   812: if_acmpne -> 1076
    //   815: aload_1
    //   816: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   819: getfield resolved : Z
    //   822: ifne -> 1076
    //   825: fload #14
    //   827: fconst_0
    //   828: fcmpl
    //   829: ifle -> 859
    //   832: aload_1
    //   833: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   836: getfield mWeight : [F
    //   839: aload_0
    //   840: getfield orientation : I
    //   843: faload
    //   844: fload #20
    //   846: fmul
    //   847: fload #14
    //   849: fdiv
    //   850: ldc 0.5
    //   852: fadd
    //   853: f2i
    //   854: istore #5
    //   856: goto -> 863
    //   859: iload #11
    //   861: istore #5
    //   863: aload_0
    //   864: getfield orientation : I
    //   867: ifne -> 962
    //   870: aload_1
    //   871: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   874: getfield mMatchConstraintMaxWidth : I
    //   877: istore #21
    //   879: aload_1
    //   880: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   883: getfield mMatchConstraintMinWidth : I
    //   886: istore #18
    //   888: aload_1
    //   889: getfield matchConstraintsType : I
    //   892: iconst_1
    //   893: if_icmpne -> 913
    //   896: iload #5
    //   898: aload_1
    //   899: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   902: getfield wrapValue : I
    //   905: invokestatic min : (II)I
    //   908: istore #15
    //   910: goto -> 917
    //   913: iload #5
    //   915: istore #15
    //   917: iload #18
    //   919: iload #15
    //   921: invokestatic max : (II)I
    //   924: istore #15
    //   926: iload #15
    //   928: istore #18
    //   930: iload #21
    //   932: ifle -> 944
    //   935: iload #21
    //   937: iload #15
    //   939: invokestatic min : (II)I
    //   942: istore #18
    //   944: iload #5
    //   946: istore #21
    //   948: iload #13
    //   950: istore #15
    //   952: iload #18
    //   954: iload #5
    //   956: if_icmpeq -> 1060
    //   959: goto -> 1050
    //   962: aload_1
    //   963: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   966: getfield mMatchConstraintMaxHeight : I
    //   969: istore #21
    //   971: aload_1
    //   972: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   975: getfield mMatchConstraintMinHeight : I
    //   978: istore #18
    //   980: aload_1
    //   981: getfield matchConstraintsType : I
    //   984: iconst_1
    //   985: if_icmpne -> 1005
    //   988: iload #5
    //   990: aload_1
    //   991: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   994: getfield wrapValue : I
    //   997: invokestatic min : (II)I
    //   1000: istore #15
    //   1002: goto -> 1009
    //   1005: iload #5
    //   1007: istore #15
    //   1009: iload #18
    //   1011: iload #15
    //   1013: invokestatic max : (II)I
    //   1016: istore #18
    //   1018: iload #21
    //   1020: ifle -> 1035
    //   1023: iload #21
    //   1025: iload #18
    //   1027: invokestatic min : (II)I
    //   1030: istore #18
    //   1032: goto -> 1035
    //   1035: iload #5
    //   1037: istore #21
    //   1039: iload #13
    //   1041: istore #15
    //   1043: iload #18
    //   1045: iload #5
    //   1047: if_icmpeq -> 1060
    //   1050: iload #13
    //   1052: iconst_1
    //   1053: iadd
    //   1054: istore #15
    //   1056: iload #18
    //   1058: istore #21
    //   1060: aload_1
    //   1061: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1064: iload #21
    //   1066: invokevirtual resolve : (I)V
    //   1069: iload #15
    //   1071: istore #13
    //   1073: goto -> 1076
    //   1076: iinc #16, 1
    //   1079: goto -> 770
    //   1082: iload #13
    //   1084: ifle -> 1227
    //   1087: iload #6
    //   1089: iload #13
    //   1091: isub
    //   1092: istore #11
    //   1094: iconst_0
    //   1095: istore #6
    //   1097: iconst_0
    //   1098: istore #5
    //   1100: iload #6
    //   1102: iload #4
    //   1104: if_icmpge -> 1220
    //   1107: aload_0
    //   1108: getfield widgets : Ljava/util/ArrayList;
    //   1111: iload #6
    //   1113: invokevirtual get : (I)Ljava/lang/Object;
    //   1116: checkcast androidx/constraintlayout/solver/widgets/analyzer/WidgetRun
    //   1119: astore_1
    //   1120: aload_1
    //   1121: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1124: invokevirtual getVisibility : ()I
    //   1127: bipush #8
    //   1129: if_icmpne -> 1135
    //   1132: goto -> 1214
    //   1135: iload #5
    //   1137: istore #12
    //   1139: iload #6
    //   1141: ifle -> 1167
    //   1144: iload #5
    //   1146: istore #12
    //   1148: iload #6
    //   1150: iload #7
    //   1152: if_icmplt -> 1167
    //   1155: iload #5
    //   1157: aload_1
    //   1158: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1161: getfield margin : I
    //   1164: iadd
    //   1165: istore #12
    //   1167: iload #12
    //   1169: aload_1
    //   1170: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1173: getfield value : I
    //   1176: iadd
    //   1177: istore #12
    //   1179: iload #12
    //   1181: istore #5
    //   1183: iload #6
    //   1185: iload #8
    //   1187: if_icmpge -> 1214
    //   1190: iload #12
    //   1192: istore #5
    //   1194: iload #6
    //   1196: iload #9
    //   1198: if_icmpge -> 1214
    //   1201: iload #12
    //   1203: aload_1
    //   1204: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1207: getfield margin : I
    //   1210: ineg
    //   1211: iadd
    //   1212: istore #5
    //   1214: iinc #6, 1
    //   1217: goto -> 1100
    //   1220: iload #11
    //   1222: istore #6
    //   1224: goto -> 1231
    //   1227: iload #12
    //   1229: istore #5
    //   1231: aload_0
    //   1232: getfield chainStyle : I
    //   1235: iconst_2
    //   1236: if_icmpne -> 1264
    //   1239: iload #13
    //   1241: ifne -> 1264
    //   1244: aload_0
    //   1245: iconst_0
    //   1246: putfield chainStyle : I
    //   1249: iload #5
    //   1251: istore #12
    //   1253: iload #6
    //   1255: istore #11
    //   1257: iload #10
    //   1259: istore #5
    //   1261: goto -> 1283
    //   1264: iload #5
    //   1266: istore #12
    //   1268: iload #6
    //   1270: istore #11
    //   1272: iload #10
    //   1274: istore #5
    //   1276: goto -> 1283
    //   1279: iload #6
    //   1281: istore #11
    //   1283: iconst_0
    //   1284: istore #6
    //   1286: iconst_0
    //   1287: istore #13
    //   1289: iconst_0
    //   1290: istore #10
    //   1292: iload #12
    //   1294: iload_3
    //   1295: if_icmple -> 1303
    //   1298: aload_0
    //   1299: iconst_2
    //   1300: putfield chainStyle : I
    //   1303: iload #17
    //   1305: ifle -> 1325
    //   1308: iload #11
    //   1310: ifne -> 1325
    //   1313: iload #7
    //   1315: iload #9
    //   1317: if_icmpne -> 1325
    //   1320: aload_0
    //   1321: iconst_2
    //   1322: putfield chainStyle : I
    //   1325: aload_0
    //   1326: getfield chainStyle : I
    //   1329: istore #15
    //   1331: iload #15
    //   1333: iconst_1
    //   1334: if_icmpne -> 1740
    //   1337: iload #17
    //   1339: iconst_1
    //   1340: if_icmple -> 1357
    //   1343: iload_3
    //   1344: iload #12
    //   1346: isub
    //   1347: iload #17
    //   1349: iconst_1
    //   1350: isub
    //   1351: idiv
    //   1352: istore #6
    //   1354: goto -> 1377
    //   1357: iload #17
    //   1359: iconst_1
    //   1360: if_icmpne -> 1374
    //   1363: iload_3
    //   1364: iload #12
    //   1366: isub
    //   1367: iconst_2
    //   1368: idiv
    //   1369: istore #6
    //   1371: goto -> 1377
    //   1374: iconst_0
    //   1375: istore #6
    //   1377: iload #6
    //   1379: istore #13
    //   1381: iload #11
    //   1383: ifle -> 1389
    //   1386: iconst_0
    //   1387: istore #13
    //   1389: iload #10
    //   1391: istore #6
    //   1393: iload #5
    //   1395: istore #12
    //   1397: iload #6
    //   1399: iload #4
    //   1401: if_icmpge -> 2489
    //   1404: iload_2
    //   1405: ifeq -> 1420
    //   1408: iload #4
    //   1410: iload #6
    //   1412: iconst_1
    //   1413: iadd
    //   1414: isub
    //   1415: istore #5
    //   1417: goto -> 1424
    //   1420: iload #6
    //   1422: istore #5
    //   1424: aload_0
    //   1425: getfield widgets : Ljava/util/ArrayList;
    //   1428: iload #5
    //   1430: invokevirtual get : (I)Ljava/lang/Object;
    //   1433: checkcast androidx/constraintlayout/solver/widgets/analyzer/WidgetRun
    //   1436: astore_1
    //   1437: aload_1
    //   1438: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1441: invokevirtual getVisibility : ()I
    //   1444: bipush #8
    //   1446: if_icmpne -> 1474
    //   1449: aload_1
    //   1450: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1453: iload #12
    //   1455: invokevirtual resolve : (I)V
    //   1458: aload_1
    //   1459: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1462: iload #12
    //   1464: invokevirtual resolve : (I)V
    //   1467: iload #12
    //   1469: istore #5
    //   1471: goto -> 1730
    //   1474: iload #12
    //   1476: istore #5
    //   1478: iload #6
    //   1480: ifle -> 1504
    //   1483: iload_2
    //   1484: ifeq -> 1497
    //   1487: iload #12
    //   1489: iload #13
    //   1491: isub
    //   1492: istore #5
    //   1494: goto -> 1504
    //   1497: iload #12
    //   1499: iload #13
    //   1501: iadd
    //   1502: istore #5
    //   1504: iload #5
    //   1506: istore #12
    //   1508: iload #6
    //   1510: ifle -> 1555
    //   1513: iload #5
    //   1515: istore #12
    //   1517: iload #6
    //   1519: iload #7
    //   1521: if_icmplt -> 1555
    //   1524: iload_2
    //   1525: ifeq -> 1543
    //   1528: iload #5
    //   1530: aload_1
    //   1531: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1534: getfield margin : I
    //   1537: isub
    //   1538: istore #12
    //   1540: goto -> 1555
    //   1543: iload #5
    //   1545: aload_1
    //   1546: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1549: getfield margin : I
    //   1552: iadd
    //   1553: istore #12
    //   1555: iload_2
    //   1556: ifeq -> 1571
    //   1559: aload_1
    //   1560: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1563: iload #12
    //   1565: invokevirtual resolve : (I)V
    //   1568: goto -> 1580
    //   1571: aload_1
    //   1572: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1575: iload #12
    //   1577: invokevirtual resolve : (I)V
    //   1580: aload_1
    //   1581: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1584: getfield value : I
    //   1587: istore #10
    //   1589: iload #10
    //   1591: istore #5
    //   1593: aload_1
    //   1594: getfield dimensionBehavior : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1597: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1600: if_acmpne -> 1624
    //   1603: iload #10
    //   1605: istore #5
    //   1607: aload_1
    //   1608: getfield matchConstraintsType : I
    //   1611: iconst_1
    //   1612: if_icmpne -> 1624
    //   1615: aload_1
    //   1616: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1619: getfield wrapValue : I
    //   1622: istore #5
    //   1624: iload_2
    //   1625: ifeq -> 1638
    //   1628: iload #12
    //   1630: iload #5
    //   1632: isub
    //   1633: istore #12
    //   1635: goto -> 1645
    //   1638: iload #12
    //   1640: iload #5
    //   1642: iadd
    //   1643: istore #12
    //   1645: iload_2
    //   1646: ifeq -> 1661
    //   1649: aload_1
    //   1650: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1653: iload #12
    //   1655: invokevirtual resolve : (I)V
    //   1658: goto -> 1670
    //   1661: aload_1
    //   1662: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1665: iload #12
    //   1667: invokevirtual resolve : (I)V
    //   1670: aload_1
    //   1671: iconst_1
    //   1672: putfield resolved : Z
    //   1675: iload #12
    //   1677: istore #5
    //   1679: iload #6
    //   1681: iload #8
    //   1683: if_icmpge -> 1730
    //   1686: iload #12
    //   1688: istore #5
    //   1690: iload #6
    //   1692: iload #9
    //   1694: if_icmpge -> 1730
    //   1697: iload_2
    //   1698: ifeq -> 1717
    //   1701: iload #12
    //   1703: aload_1
    //   1704: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1707: getfield margin : I
    //   1710: ineg
    //   1711: isub
    //   1712: istore #5
    //   1714: goto -> 1730
    //   1717: iload #12
    //   1719: aload_1
    //   1720: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1723: getfield margin : I
    //   1726: ineg
    //   1727: iadd
    //   1728: istore #5
    //   1730: iinc #6, 1
    //   1733: iload #5
    //   1735: istore #12
    //   1737: goto -> 1397
    //   1740: iload #15
    //   1742: ifne -> 2090
    //   1745: iload_3
    //   1746: iload #12
    //   1748: isub
    //   1749: iload #17
    //   1751: iconst_1
    //   1752: iadd
    //   1753: idiv
    //   1754: istore #13
    //   1756: iload #11
    //   1758: ifle -> 1764
    //   1761: iconst_0
    //   1762: istore #13
    //   1764: iload #6
    //   1766: iload #4
    //   1768: if_icmpge -> 2489
    //   1771: iload_2
    //   1772: ifeq -> 1787
    //   1775: iload #4
    //   1777: iload #6
    //   1779: iconst_1
    //   1780: iadd
    //   1781: isub
    //   1782: istore #12
    //   1784: goto -> 1791
    //   1787: iload #6
    //   1789: istore #12
    //   1791: aload_0
    //   1792: getfield widgets : Ljava/util/ArrayList;
    //   1795: iload #12
    //   1797: invokevirtual get : (I)Ljava/lang/Object;
    //   1800: checkcast androidx/constraintlayout/solver/widgets/analyzer/WidgetRun
    //   1803: astore_1
    //   1804: aload_1
    //   1805: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1808: invokevirtual getVisibility : ()I
    //   1811: bipush #8
    //   1813: if_icmpne -> 1837
    //   1816: aload_1
    //   1817: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1820: iload #5
    //   1822: invokevirtual resolve : (I)V
    //   1825: aload_1
    //   1826: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1829: iload #5
    //   1831: invokevirtual resolve : (I)V
    //   1834: goto -> 2084
    //   1837: iload_2
    //   1838: ifeq -> 1851
    //   1841: iload #5
    //   1843: iload #13
    //   1845: isub
    //   1846: istore #12
    //   1848: goto -> 1858
    //   1851: iload #5
    //   1853: iload #13
    //   1855: iadd
    //   1856: istore #12
    //   1858: iload #12
    //   1860: istore #5
    //   1862: iload #6
    //   1864: ifle -> 1909
    //   1867: iload #12
    //   1869: istore #5
    //   1871: iload #6
    //   1873: iload #7
    //   1875: if_icmplt -> 1909
    //   1878: iload_2
    //   1879: ifeq -> 1897
    //   1882: iload #12
    //   1884: aload_1
    //   1885: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1888: getfield margin : I
    //   1891: isub
    //   1892: istore #5
    //   1894: goto -> 1909
    //   1897: iload #12
    //   1899: aload_1
    //   1900: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1903: getfield margin : I
    //   1906: iadd
    //   1907: istore #5
    //   1909: iload_2
    //   1910: ifeq -> 1925
    //   1913: aload_1
    //   1914: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1917: iload #5
    //   1919: invokevirtual resolve : (I)V
    //   1922: goto -> 1934
    //   1925: aload_1
    //   1926: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   1929: iload #5
    //   1931: invokevirtual resolve : (I)V
    //   1934: aload_1
    //   1935: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1938: getfield value : I
    //   1941: istore #10
    //   1943: iload #10
    //   1945: istore #12
    //   1947: aload_1
    //   1948: getfield dimensionBehavior : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1951: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1954: if_acmpne -> 1983
    //   1957: iload #10
    //   1959: istore #12
    //   1961: aload_1
    //   1962: getfield matchConstraintsType : I
    //   1965: iconst_1
    //   1966: if_icmpne -> 1983
    //   1969: iload #10
    //   1971: aload_1
    //   1972: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1975: getfield wrapValue : I
    //   1978: invokestatic min : (II)I
    //   1981: istore #12
    //   1983: iload_2
    //   1984: ifeq -> 1997
    //   1987: iload #5
    //   1989: iload #12
    //   1991: isub
    //   1992: istore #12
    //   1994: goto -> 2004
    //   1997: iload #5
    //   1999: iload #12
    //   2001: iadd
    //   2002: istore #12
    //   2004: iload_2
    //   2005: ifeq -> 2020
    //   2008: aload_1
    //   2009: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   2012: iload #12
    //   2014: invokevirtual resolve : (I)V
    //   2017: goto -> 2029
    //   2020: aload_1
    //   2021: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   2024: iload #12
    //   2026: invokevirtual resolve : (I)V
    //   2029: iload #12
    //   2031: istore #5
    //   2033: iload #6
    //   2035: iload #8
    //   2037: if_icmpge -> 2084
    //   2040: iload #12
    //   2042: istore #5
    //   2044: iload #6
    //   2046: iload #9
    //   2048: if_icmpge -> 2084
    //   2051: iload_2
    //   2052: ifeq -> 2071
    //   2055: iload #12
    //   2057: aload_1
    //   2058: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   2061: getfield margin : I
    //   2064: ineg
    //   2065: isub
    //   2066: istore #5
    //   2068: goto -> 2084
    //   2071: iload #12
    //   2073: aload_1
    //   2074: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   2077: getfield margin : I
    //   2080: ineg
    //   2081: iadd
    //   2082: istore #5
    //   2084: iinc #6, 1
    //   2087: goto -> 1764
    //   2090: iload #15
    //   2092: iconst_2
    //   2093: if_icmpne -> 2489
    //   2096: aload_0
    //   2097: getfield orientation : I
    //   2100: ifne -> 2115
    //   2103: aload_0
    //   2104: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   2107: invokevirtual getHorizontalBiasPercent : ()F
    //   2110: fstore #14
    //   2112: goto -> 2124
    //   2115: aload_0
    //   2116: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   2119: invokevirtual getVerticalBiasPercent : ()F
    //   2122: fstore #14
    //   2124: fload #14
    //   2126: fstore #20
    //   2128: iload_2
    //   2129: ifeq -> 2138
    //   2132: fconst_1
    //   2133: fload #14
    //   2135: fsub
    //   2136: fstore #20
    //   2138: iload_3
    //   2139: iload #12
    //   2141: isub
    //   2142: i2f
    //   2143: fload #20
    //   2145: fmul
    //   2146: ldc 0.5
    //   2148: fadd
    //   2149: f2i
    //   2150: istore #6
    //   2152: iload #6
    //   2154: iflt -> 2162
    //   2157: iload #11
    //   2159: ifle -> 2165
    //   2162: iconst_0
    //   2163: istore #6
    //   2165: iload_2
    //   2166: ifeq -> 2183
    //   2169: iload #5
    //   2171: iload #6
    //   2173: isub
    //   2174: istore #5
    //   2176: iload #13
    //   2178: istore #6
    //   2180: goto -> 2194
    //   2183: iload #5
    //   2185: iload #6
    //   2187: iadd
    //   2188: istore #5
    //   2190: iload #13
    //   2192: istore #6
    //   2194: iload #6
    //   2196: iload #4
    //   2198: if_icmpge -> 2489
    //   2201: iload_2
    //   2202: ifeq -> 2217
    //   2205: iload #4
    //   2207: iload #6
    //   2209: iconst_1
    //   2210: iadd
    //   2211: isub
    //   2212: istore #12
    //   2214: goto -> 2221
    //   2217: iload #6
    //   2219: istore #12
    //   2221: aload_0
    //   2222: getfield widgets : Ljava/util/ArrayList;
    //   2225: iload #12
    //   2227: invokevirtual get : (I)Ljava/lang/Object;
    //   2230: checkcast androidx/constraintlayout/solver/widgets/analyzer/WidgetRun
    //   2233: astore_1
    //   2234: aload_1
    //   2235: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   2238: invokevirtual getVisibility : ()I
    //   2241: bipush #8
    //   2243: if_icmpne -> 2267
    //   2246: aload_1
    //   2247: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   2250: iload #5
    //   2252: invokevirtual resolve : (I)V
    //   2255: aload_1
    //   2256: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   2259: iload #5
    //   2261: invokevirtual resolve : (I)V
    //   2264: goto -> 2483
    //   2267: iload #5
    //   2269: istore #12
    //   2271: iload #6
    //   2273: ifle -> 2318
    //   2276: iload #5
    //   2278: istore #12
    //   2280: iload #6
    //   2282: iload #7
    //   2284: if_icmplt -> 2318
    //   2287: iload_2
    //   2288: ifeq -> 2306
    //   2291: iload #5
    //   2293: aload_1
    //   2294: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   2297: getfield margin : I
    //   2300: isub
    //   2301: istore #12
    //   2303: goto -> 2318
    //   2306: iload #5
    //   2308: aload_1
    //   2309: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   2312: getfield margin : I
    //   2315: iadd
    //   2316: istore #12
    //   2318: iload_2
    //   2319: ifeq -> 2334
    //   2322: aload_1
    //   2323: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   2326: iload #12
    //   2328: invokevirtual resolve : (I)V
    //   2331: goto -> 2343
    //   2334: aload_1
    //   2335: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   2338: iload #12
    //   2340: invokevirtual resolve : (I)V
    //   2343: aload_1
    //   2344: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   2347: getfield value : I
    //   2350: istore #5
    //   2352: aload_1
    //   2353: getfield dimensionBehavior : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   2356: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   2359: if_acmpne -> 2382
    //   2362: aload_1
    //   2363: getfield matchConstraintsType : I
    //   2366: iconst_1
    //   2367: if_icmpne -> 2382
    //   2370: aload_1
    //   2371: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   2374: getfield wrapValue : I
    //   2377: istore #5
    //   2379: goto -> 2382
    //   2382: iload_2
    //   2383: ifeq -> 2396
    //   2386: iload #12
    //   2388: iload #5
    //   2390: isub
    //   2391: istore #12
    //   2393: goto -> 2403
    //   2396: iload #12
    //   2398: iload #5
    //   2400: iadd
    //   2401: istore #12
    //   2403: iload_2
    //   2404: ifeq -> 2419
    //   2407: aload_1
    //   2408: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   2411: iload #12
    //   2413: invokevirtual resolve : (I)V
    //   2416: goto -> 2428
    //   2419: aload_1
    //   2420: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   2423: iload #12
    //   2425: invokevirtual resolve : (I)V
    //   2428: iload #12
    //   2430: istore #5
    //   2432: iload #6
    //   2434: iload #8
    //   2436: if_icmpge -> 2483
    //   2439: iload #12
    //   2441: istore #5
    //   2443: iload #6
    //   2445: iload #9
    //   2447: if_icmpge -> 2483
    //   2450: iload_2
    //   2451: ifeq -> 2470
    //   2454: iload #12
    //   2456: aload_1
    //   2457: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   2460: getfield margin : I
    //   2463: ineg
    //   2464: isub
    //   2465: istore #5
    //   2467: goto -> 2483
    //   2470: iload #12
    //   2472: aload_1
    //   2473: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   2476: getfield margin : I
    //   2479: ineg
    //   2480: iadd
    //   2481: istore #5
    //   2483: iinc #6, 1
    //   2486: goto -> 2194
    //   2489: return
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/widgets/analyzer/ChainRun.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */