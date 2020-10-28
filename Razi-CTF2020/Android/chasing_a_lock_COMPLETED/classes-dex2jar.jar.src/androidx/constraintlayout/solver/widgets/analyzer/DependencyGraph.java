package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;

public class DependencyGraph {
  private static final boolean USE_GROUPS = true;
  
  private ConstraintWidgetContainer container;
  
  private ConstraintWidgetContainer mContainer;
  
  ArrayList<RunGroup> mGroups = new ArrayList<RunGroup>();
  
  private BasicMeasure.Measure mMeasure = new BasicMeasure.Measure();
  
  private BasicMeasure.Measurer mMeasurer = null;
  
  private boolean mNeedBuildGraph = true;
  
  private boolean mNeedRedoMeasures = true;
  
  private ArrayList<WidgetRun> mRuns = new ArrayList<WidgetRun>();
  
  private ArrayList<RunGroup> runGroups = new ArrayList<RunGroup>();
  
  public DependencyGraph(ConstraintWidgetContainer paramConstraintWidgetContainer) {
    this.container = paramConstraintWidgetContainer;
    this.mContainer = paramConstraintWidgetContainer;
  }
  
  private void applyGroup(DependencyNode paramDependencyNode1, int paramInt1, int paramInt2, DependencyNode paramDependencyNode2, ArrayList<RunGroup> paramArrayList, RunGroup paramRunGroup) {
    WidgetRun widgetRun = paramDependencyNode1.run;
    if (widgetRun.runGroup == null && widgetRun != this.container.horizontalRun && widgetRun != this.container.verticalRun) {
      RunGroup runGroup = paramRunGroup;
      if (paramRunGroup == null) {
        runGroup = new RunGroup(widgetRun, paramInt2);
        paramArrayList.add(runGroup);
      } 
      widgetRun.runGroup = runGroup;
      runGroup.add(widgetRun);
      for (Dependency dependency : widgetRun.start.dependencies) {
        if (dependency instanceof DependencyNode)
          applyGroup((DependencyNode)dependency, paramInt1, 0, paramDependencyNode2, paramArrayList, runGroup); 
      } 
      for (Dependency dependency : widgetRun.end.dependencies) {
        if (dependency instanceof DependencyNode)
          applyGroup((DependencyNode)dependency, paramInt1, 1, paramDependencyNode2, paramArrayList, runGroup); 
      } 
      if (paramInt1 == 1 && widgetRun instanceof VerticalWidgetRun)
        for (Dependency dependency : ((VerticalWidgetRun)widgetRun).baseline.dependencies) {
          if (dependency instanceof DependencyNode)
            applyGroup((DependencyNode)dependency, paramInt1, 2, paramDependencyNode2, paramArrayList, runGroup); 
        }  
      for (DependencyNode dependencyNode : widgetRun.start.targets) {
        if (dependencyNode == paramDependencyNode2)
          runGroup.dual = true; 
        applyGroup(dependencyNode, paramInt1, 0, paramDependencyNode2, paramArrayList, runGroup);
      } 
      for (DependencyNode dependencyNode : widgetRun.end.targets) {
        if (dependencyNode == paramDependencyNode2)
          runGroup.dual = true; 
        applyGroup(dependencyNode, paramInt1, 1, paramDependencyNode2, paramArrayList, runGroup);
      } 
      if (paramInt1 == 1 && widgetRun instanceof VerticalWidgetRun) {
        Iterator<DependencyNode> iterator = ((VerticalWidgetRun)widgetRun).baseline.targets.iterator();
        while (true) {
          if (iterator.hasNext()) {
            DependencyNode dependencyNode = iterator.next();
            try {
              applyGroup(dependencyNode, paramInt1, 2, paramDependencyNode2, paramArrayList, runGroup);
            } finally {}
            continue;
          } 
          return;
        } 
      } 
    } 
  }
  
  private boolean basicMeasureWidgets(ConstraintWidgetContainer paramConstraintWidgetContainer) {
    // Byte code:
    //   0: aload_1
    //   1: getfield mChildren : Ljava/util/ArrayList;
    //   4: invokevirtual iterator : ()Ljava/util/Iterator;
    //   7: astore_2
    //   8: aload_2
    //   9: invokeinterface hasNext : ()Z
    //   14: ifeq -> 1508
    //   17: aload_2
    //   18: invokeinterface next : ()Ljava/lang/Object;
    //   23: checkcast androidx/constraintlayout/solver/widgets/ConstraintWidget
    //   26: astore_3
    //   27: aload_3
    //   28: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   31: iconst_0
    //   32: aaload
    //   33: astore #4
    //   35: aload_3
    //   36: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   39: iconst_1
    //   40: aaload
    //   41: astore #5
    //   43: aload_3
    //   44: invokevirtual getVisibility : ()I
    //   47: bipush #8
    //   49: if_icmpne -> 60
    //   52: aload_3
    //   53: iconst_1
    //   54: putfield measured : Z
    //   57: goto -> 8
    //   60: aload_3
    //   61: getfield mMatchConstraintPercentWidth : F
    //   64: fconst_1
    //   65: fcmpg
    //   66: ifge -> 82
    //   69: aload #4
    //   71: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   74: if_acmpne -> 82
    //   77: aload_3
    //   78: iconst_2
    //   79: putfield mMatchConstraintDefaultWidth : I
    //   82: aload_3
    //   83: getfield mMatchConstraintPercentHeight : F
    //   86: fconst_1
    //   87: fcmpg
    //   88: ifge -> 104
    //   91: aload #5
    //   93: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   96: if_acmpne -> 104
    //   99: aload_3
    //   100: iconst_2
    //   101: putfield mMatchConstraintDefaultHeight : I
    //   104: aload_3
    //   105: invokevirtual getDimensionRatio : ()F
    //   108: fconst_0
    //   109: fcmpl
    //   110: ifle -> 217
    //   113: aload #4
    //   115: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   118: if_acmpne -> 145
    //   121: aload #5
    //   123: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   126: if_acmpeq -> 137
    //   129: aload #5
    //   131: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   134: if_acmpne -> 145
    //   137: aload_3
    //   138: iconst_3
    //   139: putfield mMatchConstraintDefaultWidth : I
    //   142: goto -> 217
    //   145: aload #5
    //   147: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   150: if_acmpne -> 177
    //   153: aload #4
    //   155: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   158: if_acmpeq -> 169
    //   161: aload #4
    //   163: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   166: if_acmpne -> 177
    //   169: aload_3
    //   170: iconst_3
    //   171: putfield mMatchConstraintDefaultHeight : I
    //   174: goto -> 217
    //   177: aload #4
    //   179: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   182: if_acmpne -> 217
    //   185: aload #5
    //   187: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   190: if_acmpne -> 217
    //   193: aload_3
    //   194: getfield mMatchConstraintDefaultWidth : I
    //   197: ifne -> 205
    //   200: aload_3
    //   201: iconst_3
    //   202: putfield mMatchConstraintDefaultWidth : I
    //   205: aload_3
    //   206: getfield mMatchConstraintDefaultHeight : I
    //   209: ifne -> 217
    //   212: aload_3
    //   213: iconst_3
    //   214: putfield mMatchConstraintDefaultHeight : I
    //   217: aload #4
    //   219: astore #6
    //   221: aload #4
    //   223: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   226: if_acmpne -> 270
    //   229: aload #4
    //   231: astore #6
    //   233: aload_3
    //   234: getfield mMatchConstraintDefaultWidth : I
    //   237: iconst_1
    //   238: if_icmpne -> 270
    //   241: aload_3
    //   242: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   245: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   248: ifnull -> 265
    //   251: aload #4
    //   253: astore #6
    //   255: aload_3
    //   256: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   259: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   262: ifnonnull -> 270
    //   265: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   268: astore #6
    //   270: aload #6
    //   272: astore #4
    //   274: aload #5
    //   276: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   279: if_acmpne -> 318
    //   282: aload_3
    //   283: getfield mMatchConstraintDefaultHeight : I
    //   286: iconst_1
    //   287: if_icmpne -> 318
    //   290: aload_3
    //   291: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   294: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   297: ifnull -> 310
    //   300: aload_3
    //   301: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   304: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   307: ifnonnull -> 318
    //   310: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   313: astore #6
    //   315: goto -> 322
    //   318: aload #5
    //   320: astore #6
    //   322: aload_3
    //   323: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   326: aload #4
    //   328: putfield dimensionBehavior : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   331: aload_3
    //   332: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   335: aload_3
    //   336: getfield mMatchConstraintDefaultWidth : I
    //   339: putfield matchConstraintsType : I
    //   342: aload_3
    //   343: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   346: aload #6
    //   348: putfield dimensionBehavior : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   351: aload_3
    //   352: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   355: aload_3
    //   356: getfield mMatchConstraintDefaultHeight : I
    //   359: putfield matchConstraintsType : I
    //   362: aload #4
    //   364: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_PARENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   367: if_acmpeq -> 386
    //   370: aload #4
    //   372: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   375: if_acmpeq -> 386
    //   378: aload #4
    //   380: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   383: if_acmpne -> 413
    //   386: aload #6
    //   388: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_PARENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   391: if_acmpeq -> 1347
    //   394: aload #6
    //   396: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   399: if_acmpeq -> 1347
    //   402: aload #6
    //   404: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   407: if_acmpne -> 413
    //   410: goto -> 1347
    //   413: aload #4
    //   415: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   418: if_acmpne -> 750
    //   421: aload #6
    //   423: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   426: if_acmpeq -> 437
    //   429: aload #6
    //   431: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   434: if_acmpne -> 750
    //   437: aload_3
    //   438: getfield mMatchConstraintDefaultWidth : I
    //   441: iconst_3
    //   442: if_icmpne -> 537
    //   445: aload #6
    //   447: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   450: if_acmpne -> 466
    //   453: aload_0
    //   454: aload_3
    //   455: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   458: iconst_0
    //   459: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   462: iconst_0
    //   463: invokespecial measure : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    //   466: aload_3
    //   467: invokevirtual getHeight : ()I
    //   470: istore #7
    //   472: iload #7
    //   474: i2f
    //   475: aload_3
    //   476: getfield mDimensionRatio : F
    //   479: fmul
    //   480: ldc 0.5
    //   482: fadd
    //   483: f2i
    //   484: istore #8
    //   486: aload_0
    //   487: aload_3
    //   488: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   491: iload #8
    //   493: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   496: iload #7
    //   498: invokespecial measure : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    //   501: aload_3
    //   502: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   505: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   508: aload_3
    //   509: invokevirtual getWidth : ()I
    //   512: invokevirtual resolve : (I)V
    //   515: aload_3
    //   516: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   519: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   522: aload_3
    //   523: invokevirtual getHeight : ()I
    //   526: invokevirtual resolve : (I)V
    //   529: aload_3
    //   530: iconst_1
    //   531: putfield measured : Z
    //   534: goto -> 8
    //   537: aload_3
    //   538: getfield mMatchConstraintDefaultWidth : I
    //   541: iconst_1
    //   542: if_icmpne -> 574
    //   545: aload_0
    //   546: aload_3
    //   547: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   550: iconst_0
    //   551: aload #6
    //   553: iconst_0
    //   554: invokespecial measure : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    //   557: aload_3
    //   558: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   561: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   564: aload_3
    //   565: invokevirtual getWidth : ()I
    //   568: putfield wrapValue : I
    //   571: goto -> 8
    //   574: aload_3
    //   575: getfield mMatchConstraintDefaultWidth : I
    //   578: iconst_2
    //   579: if_icmpne -> 678
    //   582: aload_1
    //   583: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   586: iconst_0
    //   587: aaload
    //   588: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   591: if_acmpeq -> 606
    //   594: aload_1
    //   595: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   598: iconst_0
    //   599: aaload
    //   600: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_PARENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   603: if_acmpne -> 750
    //   606: aload_3
    //   607: getfield mMatchConstraintPercentWidth : F
    //   610: aload_1
    //   611: invokevirtual getWidth : ()I
    //   614: i2f
    //   615: fmul
    //   616: ldc 0.5
    //   618: fadd
    //   619: f2i
    //   620: istore #7
    //   622: aload_3
    //   623: invokevirtual getHeight : ()I
    //   626: istore #8
    //   628: aload_0
    //   629: aload_3
    //   630: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   633: iload #7
    //   635: aload #6
    //   637: iload #8
    //   639: invokespecial measure : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    //   642: aload_3
    //   643: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   646: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   649: aload_3
    //   650: invokevirtual getWidth : ()I
    //   653: invokevirtual resolve : (I)V
    //   656: aload_3
    //   657: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   660: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   663: aload_3
    //   664: invokevirtual getHeight : ()I
    //   667: invokevirtual resolve : (I)V
    //   670: aload_3
    //   671: iconst_1
    //   672: putfield measured : Z
    //   675: goto -> 8
    //   678: aload_3
    //   679: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   682: iconst_0
    //   683: aaload
    //   684: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   687: ifnull -> 702
    //   690: aload_3
    //   691: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   694: iconst_1
    //   695: aaload
    //   696: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   699: ifnonnull -> 750
    //   702: aload_0
    //   703: aload_3
    //   704: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   707: iconst_0
    //   708: aload #6
    //   710: iconst_0
    //   711: invokespecial measure : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    //   714: aload_3
    //   715: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   718: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   721: aload_3
    //   722: invokevirtual getWidth : ()I
    //   725: invokevirtual resolve : (I)V
    //   728: aload_3
    //   729: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   732: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   735: aload_3
    //   736: invokevirtual getHeight : ()I
    //   739: invokevirtual resolve : (I)V
    //   742: aload_3
    //   743: iconst_1
    //   744: putfield measured : Z
    //   747: goto -> 8
    //   750: aload #6
    //   752: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   755: if_acmpne -> 1113
    //   758: aload #4
    //   760: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   763: if_acmpeq -> 774
    //   766: aload #4
    //   768: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   771: if_acmpne -> 1113
    //   774: aload_3
    //   775: getfield mMatchConstraintDefaultHeight : I
    //   778: iconst_3
    //   779: if_icmpne -> 896
    //   782: aload #4
    //   784: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   787: if_acmpne -> 803
    //   790: aload_0
    //   791: aload_3
    //   792: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   795: iconst_0
    //   796: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   799: iconst_0
    //   800: invokespecial measure : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    //   803: aload_3
    //   804: invokevirtual getWidth : ()I
    //   807: istore #8
    //   809: aload_3
    //   810: getfield mDimensionRatio : F
    //   813: fstore #9
    //   815: fload #9
    //   817: fstore #10
    //   819: aload_3
    //   820: invokevirtual getDimensionRatioSide : ()I
    //   823: iconst_m1
    //   824: if_icmpne -> 833
    //   827: fconst_1
    //   828: fload #9
    //   830: fdiv
    //   831: fstore #10
    //   833: iload #8
    //   835: i2f
    //   836: fload #10
    //   838: fmul
    //   839: ldc 0.5
    //   841: fadd
    //   842: f2i
    //   843: istore #7
    //   845: aload_0
    //   846: aload_3
    //   847: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   850: iload #8
    //   852: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   855: iload #7
    //   857: invokespecial measure : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    //   860: aload_3
    //   861: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   864: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   867: aload_3
    //   868: invokevirtual getWidth : ()I
    //   871: invokevirtual resolve : (I)V
    //   874: aload_3
    //   875: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   878: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   881: aload_3
    //   882: invokevirtual getHeight : ()I
    //   885: invokevirtual resolve : (I)V
    //   888: aload_3
    //   889: iconst_1
    //   890: putfield measured : Z
    //   893: goto -> 8
    //   896: aload_3
    //   897: getfield mMatchConstraintDefaultHeight : I
    //   900: iconst_1
    //   901: if_icmpne -> 933
    //   904: aload_0
    //   905: aload_3
    //   906: aload #4
    //   908: iconst_0
    //   909: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   912: iconst_0
    //   913: invokespecial measure : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    //   916: aload_3
    //   917: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   920: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   923: aload_3
    //   924: invokevirtual getHeight : ()I
    //   927: putfield wrapValue : I
    //   930: goto -> 8
    //   933: aload_3
    //   934: getfield mMatchConstraintDefaultHeight : I
    //   937: iconst_2
    //   938: if_icmpne -> 1041
    //   941: aload_1
    //   942: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   945: iconst_1
    //   946: aaload
    //   947: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   950: if_acmpeq -> 965
    //   953: aload_1
    //   954: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   957: iconst_1
    //   958: aaload
    //   959: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_PARENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   962: if_acmpne -> 1113
    //   965: aload_3
    //   966: getfield mMatchConstraintPercentHeight : F
    //   969: fstore #10
    //   971: aload_3
    //   972: invokevirtual getWidth : ()I
    //   975: istore #8
    //   977: fload #10
    //   979: aload_1
    //   980: invokevirtual getHeight : ()I
    //   983: i2f
    //   984: fmul
    //   985: ldc 0.5
    //   987: fadd
    //   988: f2i
    //   989: istore #7
    //   991: aload_0
    //   992: aload_3
    //   993: aload #4
    //   995: iload #8
    //   997: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1000: iload #7
    //   1002: invokespecial measure : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    //   1005: aload_3
    //   1006: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   1009: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1012: aload_3
    //   1013: invokevirtual getWidth : ()I
    //   1016: invokevirtual resolve : (I)V
    //   1019: aload_3
    //   1020: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   1023: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1026: aload_3
    //   1027: invokevirtual getHeight : ()I
    //   1030: invokevirtual resolve : (I)V
    //   1033: aload_3
    //   1034: iconst_1
    //   1035: putfield measured : Z
    //   1038: goto -> 8
    //   1041: aload_3
    //   1042: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1045: iconst_2
    //   1046: aaload
    //   1047: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1050: ifnull -> 1065
    //   1053: aload_3
    //   1054: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1057: iconst_3
    //   1058: aaload
    //   1059: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1062: ifnonnull -> 1113
    //   1065: aload_0
    //   1066: aload_3
    //   1067: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1070: iconst_0
    //   1071: aload #6
    //   1073: iconst_0
    //   1074: invokespecial measure : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    //   1077: aload_3
    //   1078: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   1081: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1084: aload_3
    //   1085: invokevirtual getWidth : ()I
    //   1088: invokevirtual resolve : (I)V
    //   1091: aload_3
    //   1092: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   1095: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1098: aload_3
    //   1099: invokevirtual getHeight : ()I
    //   1102: invokevirtual resolve : (I)V
    //   1105: aload_3
    //   1106: iconst_1
    //   1107: putfield measured : Z
    //   1110: goto -> 8
    //   1113: aload #4
    //   1115: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1118: if_acmpne -> 8
    //   1121: aload #6
    //   1123: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1126: if_acmpne -> 8
    //   1129: aload_3
    //   1130: getfield mMatchConstraintDefaultWidth : I
    //   1133: iconst_1
    //   1134: if_icmpeq -> 1303
    //   1137: aload_3
    //   1138: getfield mMatchConstraintDefaultHeight : I
    //   1141: iconst_1
    //   1142: if_icmpne -> 1148
    //   1145: goto -> 1303
    //   1148: aload_3
    //   1149: getfield mMatchConstraintDefaultHeight : I
    //   1152: iconst_2
    //   1153: if_icmpne -> 8
    //   1156: aload_3
    //   1157: getfield mMatchConstraintDefaultWidth : I
    //   1160: iconst_2
    //   1161: if_icmpne -> 8
    //   1164: aload_1
    //   1165: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1168: iconst_0
    //   1169: aaload
    //   1170: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1173: if_acmpeq -> 1188
    //   1176: aload_1
    //   1177: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1180: iconst_0
    //   1181: aaload
    //   1182: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1185: if_acmpne -> 8
    //   1188: aload_1
    //   1189: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1192: iconst_1
    //   1193: aaload
    //   1194: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1197: if_acmpeq -> 1212
    //   1200: aload_1
    //   1201: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1204: iconst_1
    //   1205: aaload
    //   1206: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1209: if_acmpne -> 8
    //   1212: aload_3
    //   1213: getfield mMatchConstraintPercentWidth : F
    //   1216: fstore #9
    //   1218: aload_3
    //   1219: getfield mMatchConstraintPercentHeight : F
    //   1222: fstore #10
    //   1224: fload #9
    //   1226: aload_1
    //   1227: invokevirtual getWidth : ()I
    //   1230: i2f
    //   1231: fmul
    //   1232: ldc 0.5
    //   1234: fadd
    //   1235: f2i
    //   1236: istore #7
    //   1238: fload #10
    //   1240: aload_1
    //   1241: invokevirtual getHeight : ()I
    //   1244: i2f
    //   1245: fmul
    //   1246: ldc 0.5
    //   1248: fadd
    //   1249: f2i
    //   1250: istore #8
    //   1252: aload_0
    //   1253: aload_3
    //   1254: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1257: iload #7
    //   1259: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1262: iload #8
    //   1264: invokespecial measure : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    //   1267: aload_3
    //   1268: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   1271: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1274: aload_3
    //   1275: invokevirtual getWidth : ()I
    //   1278: invokevirtual resolve : (I)V
    //   1281: aload_3
    //   1282: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   1285: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1288: aload_3
    //   1289: invokevirtual getHeight : ()I
    //   1292: invokevirtual resolve : (I)V
    //   1295: aload_3
    //   1296: iconst_1
    //   1297: putfield measured : Z
    //   1300: goto -> 8
    //   1303: aload_0
    //   1304: aload_3
    //   1305: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1308: iconst_0
    //   1309: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1312: iconst_0
    //   1313: invokespecial measure : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    //   1316: aload_3
    //   1317: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   1320: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1323: aload_3
    //   1324: invokevirtual getWidth : ()I
    //   1327: putfield wrapValue : I
    //   1330: aload_3
    //   1331: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   1334: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1337: aload_3
    //   1338: invokevirtual getHeight : ()I
    //   1341: putfield wrapValue : I
    //   1344: goto -> 8
    //   1347: aload_3
    //   1348: invokevirtual getWidth : ()I
    //   1351: istore #7
    //   1353: aload #4
    //   1355: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_PARENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1358: if_acmpne -> 1403
    //   1361: aload_1
    //   1362: invokevirtual getWidth : ()I
    //   1365: istore #11
    //   1367: aload_3
    //   1368: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1371: getfield mMargin : I
    //   1374: istore #8
    //   1376: aload_3
    //   1377: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1380: getfield mMargin : I
    //   1383: istore #7
    //   1385: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1388: astore #4
    //   1390: iload #11
    //   1392: iload #8
    //   1394: isub
    //   1395: iload #7
    //   1397: isub
    //   1398: istore #7
    //   1400: goto -> 1403
    //   1403: aload_3
    //   1404: invokevirtual getHeight : ()I
    //   1407: istore #8
    //   1409: aload #6
    //   1411: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_PARENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1414: if_acmpne -> 1459
    //   1417: aload_1
    //   1418: invokevirtual getHeight : ()I
    //   1421: istore #12
    //   1423: aload_3
    //   1424: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1427: getfield mMargin : I
    //   1430: istore #8
    //   1432: aload_3
    //   1433: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1436: getfield mMargin : I
    //   1439: istore #11
    //   1441: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   1444: astore #6
    //   1446: iload #12
    //   1448: iload #8
    //   1450: isub
    //   1451: iload #11
    //   1453: isub
    //   1454: istore #8
    //   1456: goto -> 1459
    //   1459: aload_0
    //   1460: aload_3
    //   1461: aload #4
    //   1463: iload #7
    //   1465: aload #6
    //   1467: iload #8
    //   1469: invokespecial measure : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    //   1472: aload_3
    //   1473: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   1476: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1479: aload_3
    //   1480: invokevirtual getWidth : ()I
    //   1483: invokevirtual resolve : (I)V
    //   1486: aload_3
    //   1487: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   1490: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   1493: aload_3
    //   1494: invokevirtual getHeight : ()I
    //   1497: invokevirtual resolve : (I)V
    //   1500: aload_3
    //   1501: iconst_1
    //   1502: putfield measured : Z
    //   1505: goto -> 8
    //   1508: iconst_0
    //   1509: ireturn
  }
  
  private int computeWrap(ConstraintWidgetContainer paramConstraintWidgetContainer, int paramInt) {
    int i = this.mGroups.size();
    long l = 0L;
    for (byte b = 0; b < i; b++)
      l = Math.max(l, ((RunGroup)this.mGroups.get(b)).computeWrapSize(paramConstraintWidgetContainer, paramInt)); 
    return (int)l;
  }
  
  private void displayGraph() {
    Iterator<WidgetRun> iterator = this.mRuns.iterator();
    String str;
    for (str = "digraph {\n"; iterator.hasNext(); str = generateDisplayGraph(iterator.next(), str));
    StringBuilder stringBuilder1 = new StringBuilder();
    stringBuilder1.append(str);
    stringBuilder1.append("\n}\n");
    str = stringBuilder1.toString();
    PrintStream printStream = System.out;
    StringBuilder stringBuilder2 = new StringBuilder();
    stringBuilder2.append("content:<<\n");
    stringBuilder2.append(str);
    stringBuilder2.append("\n>>");
    printStream.println(stringBuilder2.toString());
  }
  
  private void findGroup(WidgetRun paramWidgetRun, int paramInt, ArrayList<RunGroup> paramArrayList) {
    for (Dependency dependency : paramWidgetRun.start.dependencies) {
      if (dependency instanceof DependencyNode) {
        applyGroup((DependencyNode)dependency, paramInt, 0, paramWidgetRun.end, paramArrayList, null);
        continue;
      } 
      if (dependency instanceof WidgetRun)
        applyGroup(((WidgetRun)dependency).start, paramInt, 0, paramWidgetRun.end, paramArrayList, null); 
    } 
    for (Dependency dependency : paramWidgetRun.end.dependencies) {
      if (dependency instanceof DependencyNode) {
        applyGroup((DependencyNode)dependency, paramInt, 1, paramWidgetRun.start, paramArrayList, null);
        continue;
      } 
      if (dependency instanceof WidgetRun)
        applyGroup(((WidgetRun)dependency).end, paramInt, 1, paramWidgetRun.start, paramArrayList, null); 
    } 
    if (paramInt == 1)
      for (Dependency dependency : ((VerticalWidgetRun)paramWidgetRun).baseline.dependencies) {
        if (dependency instanceof DependencyNode)
          applyGroup((DependencyNode)dependency, paramInt, 2, null, paramArrayList, null); 
      }  
  }
  
  private String generateChainDisplayGraph(ChainRun paramChainRun, String paramString) {
    int i = paramChainRun.orientation;
    StringBuilder stringBuilder2 = new StringBuilder();
    stringBuilder2.append("cluster_");
    stringBuilder2.append(paramChainRun.widget.getDebugName());
    String str2 = stringBuilder2.toString();
    if (i == 0) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(str2);
      stringBuilder.append("_h");
      str2 = stringBuilder.toString();
    } else {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(str2);
      stringBuilder.append("_v");
      str2 = stringBuilder.toString();
    } 
    StringBuilder stringBuilder3 = new StringBuilder();
    stringBuilder3.append("subgraph ");
    stringBuilder3.append(str2);
    stringBuilder3.append(" {\n");
    str2 = stringBuilder3.toString();
    Iterator<WidgetRun> iterator = paramChainRun.widgets.iterator();
    String str1;
    for (str1 = ""; iterator.hasNext(); str1 = generateDisplayGraph(widgetRun, str1)) {
      WidgetRun widgetRun = iterator.next();
      String str = widgetRun.widget.getDebugName();
      if (i == 0) {
        StringBuilder stringBuilder4 = new StringBuilder();
        stringBuilder4.append(str);
        stringBuilder4.append("_HORIZONTAL");
        str = stringBuilder4.toString();
      } else {
        StringBuilder stringBuilder4 = new StringBuilder();
        stringBuilder4.append(str);
        stringBuilder4.append("_VERTICAL");
        str = stringBuilder4.toString();
      } 
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(str2);
      stringBuilder.append(str);
      stringBuilder.append(";\n");
      str2 = stringBuilder.toString();
    } 
    stringBuilder3 = new StringBuilder();
    stringBuilder3.append(str2);
    stringBuilder3.append("}\n");
    String str3 = stringBuilder3.toString();
    StringBuilder stringBuilder1 = new StringBuilder();
    stringBuilder1.append(paramString);
    stringBuilder1.append(str1);
    stringBuilder1.append(str3);
    return stringBuilder1.toString();
  }
  
  private String generateDisplayGraph(WidgetRun paramWidgetRun, String paramString) {
    // Byte code:
    //   0: aload_1
    //   1: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   4: astore_3
    //   5: aload_1
    //   6: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   9: astore #4
    //   11: aload_1
    //   12: instanceof androidx/constraintlayout/solver/widgets/analyzer/HelperReferences
    //   15: ifne -> 68
    //   18: aload_3
    //   19: getfield dependencies : Ljava/util/List;
    //   22: invokeinterface isEmpty : ()Z
    //   27: ifeq -> 68
    //   30: aload #4
    //   32: getfield dependencies : Ljava/util/List;
    //   35: invokeinterface isEmpty : ()Z
    //   40: aload_3
    //   41: getfield targets : Ljava/util/List;
    //   44: invokeinterface isEmpty : ()Z
    //   49: iand
    //   50: ifeq -> 68
    //   53: aload #4
    //   55: getfield targets : Ljava/util/List;
    //   58: invokeinterface isEmpty : ()Z
    //   63: ifeq -> 68
    //   66: aload_2
    //   67: areturn
    //   68: new java/lang/StringBuilder
    //   71: dup
    //   72: invokespecial <init> : ()V
    //   75: astore #5
    //   77: aload #5
    //   79: aload_2
    //   80: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   83: pop
    //   84: aload #5
    //   86: aload_0
    //   87: aload_1
    //   88: invokespecial nodeDefinition : (Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)Ljava/lang/String;
    //   91: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: pop
    //   95: aload #5
    //   97: invokevirtual toString : ()Ljava/lang/String;
    //   100: astore_2
    //   101: aload_0
    //   102: aload_3
    //   103: aload #4
    //   105: invokespecial isCenteredConnection : (Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)Z
    //   108: istore #6
    //   110: aload_0
    //   111: aload #4
    //   113: iload #6
    //   115: aload_0
    //   116: aload_3
    //   117: iload #6
    //   119: aload_2
    //   120: invokespecial generateDisplayNode : (Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ZLjava/lang/String;)Ljava/lang/String;
    //   123: invokespecial generateDisplayNode : (Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ZLjava/lang/String;)Ljava/lang/String;
    //   126: astore_2
    //   127: aload_1
    //   128: instanceof androidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun
    //   131: istore #7
    //   133: aload_2
    //   134: astore #5
    //   136: iload #7
    //   138: ifeq -> 157
    //   141: aload_0
    //   142: aload_1
    //   143: checkcast androidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun
    //   146: getfield baseline : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   149: iload #6
    //   151: aload_2
    //   152: invokespecial generateDisplayNode : (Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ZLjava/lang/String;)Ljava/lang/String;
    //   155: astore #5
    //   157: aload_1
    //   158: instanceof androidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun
    //   161: ifne -> 573
    //   164: aload_1
    //   165: instanceof androidx/constraintlayout/solver/widgets/analyzer/ChainRun
    //   168: istore #6
    //   170: iload #6
    //   172: ifeq -> 188
    //   175: aload_1
    //   176: checkcast androidx/constraintlayout/solver/widgets/analyzer/ChainRun
    //   179: getfield orientation : I
    //   182: ifne -> 188
    //   185: goto -> 573
    //   188: iload #7
    //   190: ifne -> 215
    //   193: aload #5
    //   195: astore_2
    //   196: iload #6
    //   198: ifeq -> 928
    //   201: aload #5
    //   203: astore_2
    //   204: aload_1
    //   205: checkcast androidx/constraintlayout/solver/widgets/analyzer/ChainRun
    //   208: getfield orientation : I
    //   211: iconst_1
    //   212: if_icmpne -> 928
    //   215: aload_1
    //   216: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   219: invokevirtual getVerticalDimensionBehaviour : ()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   222: astore #8
    //   224: aload #8
    //   226: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   229: if_acmpeq -> 339
    //   232: aload #8
    //   234: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   237: if_acmpne -> 243
    //   240: goto -> 339
    //   243: aload #5
    //   245: astore_2
    //   246: aload #8
    //   248: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   251: if_acmpne -> 928
    //   254: aload #5
    //   256: astore_2
    //   257: aload_1
    //   258: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   261: invokevirtual getDimensionRatio : ()F
    //   264: fconst_0
    //   265: fcmpl
    //   266: ifle -> 928
    //   269: aload_1
    //   270: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   273: invokevirtual getDebugName : ()Ljava/lang/String;
    //   276: astore_2
    //   277: new java/lang/StringBuilder
    //   280: dup
    //   281: invokespecial <init> : ()V
    //   284: astore #4
    //   286: aload #4
    //   288: ldc_w '\\n'
    //   291: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   294: pop
    //   295: aload #4
    //   297: aload_2
    //   298: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   301: pop
    //   302: aload #4
    //   304: ldc_w '_VERTICAL -> '
    //   307: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   310: pop
    //   311: aload #4
    //   313: aload_2
    //   314: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: pop
    //   318: aload #4
    //   320: ldc_w '_HORIZONTAL;\\n'
    //   323: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   326: pop
    //   327: aload #4
    //   329: invokevirtual toString : ()Ljava/lang/String;
    //   332: pop
    //   333: aload #5
    //   335: astore_2
    //   336: goto -> 928
    //   339: aload_3
    //   340: getfield targets : Ljava/util/List;
    //   343: invokeinterface isEmpty : ()Z
    //   348: ifne -> 453
    //   351: aload #4
    //   353: getfield targets : Ljava/util/List;
    //   356: invokeinterface isEmpty : ()Z
    //   361: ifeq -> 453
    //   364: new java/lang/StringBuilder
    //   367: dup
    //   368: invokespecial <init> : ()V
    //   371: astore_2
    //   372: aload_2
    //   373: ldc_w '\\n'
    //   376: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   379: pop
    //   380: aload_2
    //   381: aload #4
    //   383: invokevirtual name : ()Ljava/lang/String;
    //   386: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   389: pop
    //   390: aload_2
    //   391: ldc_w ' -> '
    //   394: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   397: pop
    //   398: aload_2
    //   399: aload_3
    //   400: invokevirtual name : ()Ljava/lang/String;
    //   403: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   406: pop
    //   407: aload_2
    //   408: ldc_w '\\n'
    //   411: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   414: pop
    //   415: aload_2
    //   416: invokevirtual toString : ()Ljava/lang/String;
    //   419: astore_2
    //   420: new java/lang/StringBuilder
    //   423: dup
    //   424: invokespecial <init> : ()V
    //   427: astore #4
    //   429: aload #4
    //   431: aload #5
    //   433: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   436: pop
    //   437: aload #4
    //   439: aload_2
    //   440: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   443: pop
    //   444: aload #4
    //   446: invokevirtual toString : ()Ljava/lang/String;
    //   449: astore_2
    //   450: goto -> 928
    //   453: aload #5
    //   455: astore_2
    //   456: aload_3
    //   457: getfield targets : Ljava/util/List;
    //   460: invokeinterface isEmpty : ()Z
    //   465: ifeq -> 928
    //   468: aload #5
    //   470: astore_2
    //   471: aload #4
    //   473: getfield targets : Ljava/util/List;
    //   476: invokeinterface isEmpty : ()Z
    //   481: ifne -> 928
    //   484: new java/lang/StringBuilder
    //   487: dup
    //   488: invokespecial <init> : ()V
    //   491: astore_2
    //   492: aload_2
    //   493: ldc_w '\\n'
    //   496: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   499: pop
    //   500: aload_2
    //   501: aload_3
    //   502: invokevirtual name : ()Ljava/lang/String;
    //   505: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   508: pop
    //   509: aload_2
    //   510: ldc_w ' -> '
    //   513: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   516: pop
    //   517: aload_2
    //   518: aload #4
    //   520: invokevirtual name : ()Ljava/lang/String;
    //   523: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   526: pop
    //   527: aload_2
    //   528: ldc_w '\\n'
    //   531: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   534: pop
    //   535: aload_2
    //   536: invokevirtual toString : ()Ljava/lang/String;
    //   539: astore_2
    //   540: new java/lang/StringBuilder
    //   543: dup
    //   544: invokespecial <init> : ()V
    //   547: astore #4
    //   549: aload #4
    //   551: aload #5
    //   553: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   556: pop
    //   557: aload #4
    //   559: aload_2
    //   560: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   563: pop
    //   564: aload #4
    //   566: invokevirtual toString : ()Ljava/lang/String;
    //   569: astore_2
    //   570: goto -> 928
    //   573: aload_1
    //   574: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   577: invokevirtual getHorizontalDimensionBehaviour : ()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   580: astore #8
    //   582: aload #8
    //   584: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   587: if_acmpeq -> 697
    //   590: aload #8
    //   592: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   595: if_acmpne -> 601
    //   598: goto -> 697
    //   601: aload #5
    //   603: astore_2
    //   604: aload #8
    //   606: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   609: if_acmpne -> 928
    //   612: aload #5
    //   614: astore_2
    //   615: aload_1
    //   616: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   619: invokevirtual getDimensionRatio : ()F
    //   622: fconst_0
    //   623: fcmpl
    //   624: ifle -> 928
    //   627: aload_1
    //   628: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   631: invokevirtual getDebugName : ()Ljava/lang/String;
    //   634: astore_2
    //   635: new java/lang/StringBuilder
    //   638: dup
    //   639: invokespecial <init> : ()V
    //   642: astore #4
    //   644: aload #4
    //   646: ldc_w '\\n'
    //   649: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   652: pop
    //   653: aload #4
    //   655: aload_2
    //   656: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   659: pop
    //   660: aload #4
    //   662: ldc_w '_HORIZONTAL -> '
    //   665: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   668: pop
    //   669: aload #4
    //   671: aload_2
    //   672: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   675: pop
    //   676: aload #4
    //   678: ldc_w '_VERTICAL;\\n'
    //   681: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   684: pop
    //   685: aload #4
    //   687: invokevirtual toString : ()Ljava/lang/String;
    //   690: pop
    //   691: aload #5
    //   693: astore_2
    //   694: goto -> 928
    //   697: aload_3
    //   698: getfield targets : Ljava/util/List;
    //   701: invokeinterface isEmpty : ()Z
    //   706: ifne -> 811
    //   709: aload #4
    //   711: getfield targets : Ljava/util/List;
    //   714: invokeinterface isEmpty : ()Z
    //   719: ifeq -> 811
    //   722: new java/lang/StringBuilder
    //   725: dup
    //   726: invokespecial <init> : ()V
    //   729: astore_2
    //   730: aload_2
    //   731: ldc_w '\\n'
    //   734: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   737: pop
    //   738: aload_2
    //   739: aload #4
    //   741: invokevirtual name : ()Ljava/lang/String;
    //   744: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   747: pop
    //   748: aload_2
    //   749: ldc_w ' -> '
    //   752: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   755: pop
    //   756: aload_2
    //   757: aload_3
    //   758: invokevirtual name : ()Ljava/lang/String;
    //   761: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   764: pop
    //   765: aload_2
    //   766: ldc_w '\\n'
    //   769: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   772: pop
    //   773: aload_2
    //   774: invokevirtual toString : ()Ljava/lang/String;
    //   777: astore_2
    //   778: new java/lang/StringBuilder
    //   781: dup
    //   782: invokespecial <init> : ()V
    //   785: astore #4
    //   787: aload #4
    //   789: aload #5
    //   791: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   794: pop
    //   795: aload #4
    //   797: aload_2
    //   798: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   801: pop
    //   802: aload #4
    //   804: invokevirtual toString : ()Ljava/lang/String;
    //   807: astore_2
    //   808: goto -> 928
    //   811: aload #5
    //   813: astore_2
    //   814: aload_3
    //   815: getfield targets : Ljava/util/List;
    //   818: invokeinterface isEmpty : ()Z
    //   823: ifeq -> 928
    //   826: aload #5
    //   828: astore_2
    //   829: aload #4
    //   831: getfield targets : Ljava/util/List;
    //   834: invokeinterface isEmpty : ()Z
    //   839: ifne -> 928
    //   842: new java/lang/StringBuilder
    //   845: dup
    //   846: invokespecial <init> : ()V
    //   849: astore_2
    //   850: aload_2
    //   851: ldc_w '\\n'
    //   854: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   857: pop
    //   858: aload_2
    //   859: aload_3
    //   860: invokevirtual name : ()Ljava/lang/String;
    //   863: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   866: pop
    //   867: aload_2
    //   868: ldc_w ' -> '
    //   871: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   874: pop
    //   875: aload_2
    //   876: aload #4
    //   878: invokevirtual name : ()Ljava/lang/String;
    //   881: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   884: pop
    //   885: aload_2
    //   886: ldc_w '\\n'
    //   889: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   892: pop
    //   893: aload_2
    //   894: invokevirtual toString : ()Ljava/lang/String;
    //   897: astore_2
    //   898: new java/lang/StringBuilder
    //   901: dup
    //   902: invokespecial <init> : ()V
    //   905: astore #4
    //   907: aload #4
    //   909: aload #5
    //   911: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   914: pop
    //   915: aload #4
    //   917: aload_2
    //   918: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   921: pop
    //   922: aload #4
    //   924: invokevirtual toString : ()Ljava/lang/String;
    //   927: astore_2
    //   928: aload_1
    //   929: instanceof androidx/constraintlayout/solver/widgets/analyzer/ChainRun
    //   932: ifeq -> 945
    //   935: aload_0
    //   936: aload_1
    //   937: checkcast androidx/constraintlayout/solver/widgets/analyzer/ChainRun
    //   940: aload_2
    //   941: invokespecial generateChainDisplayGraph : (Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;Ljava/lang/String;)Ljava/lang/String;
    //   944: areturn
    //   945: aload_2
    //   946: areturn
  }
  
  private String generateDisplayNode(DependencyNode paramDependencyNode, boolean paramBoolean, String paramString) {
    // Byte code:
    //   0: aload_1
    //   1: getfield targets : Ljava/util/List;
    //   4: invokeinterface iterator : ()Ljava/util/Iterator;
    //   9: astore #4
    //   11: aload_3
    //   12: astore #5
    //   14: aload #4
    //   16: invokeinterface hasNext : ()Z
    //   21: ifeq -> 433
    //   24: aload #4
    //   26: invokeinterface next : ()Ljava/lang/Object;
    //   31: checkcast androidx/constraintlayout/solver/widgets/analyzer/DependencyNode
    //   34: astore_3
    //   35: new java/lang/StringBuilder
    //   38: dup
    //   39: invokespecial <init> : ()V
    //   42: astore #6
    //   44: aload #6
    //   46: ldc_w '\\n'
    //   49: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: pop
    //   53: aload #6
    //   55: aload_1
    //   56: invokevirtual name : ()Ljava/lang/String;
    //   59: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: pop
    //   63: aload #6
    //   65: invokevirtual toString : ()Ljava/lang/String;
    //   68: astore #7
    //   70: new java/lang/StringBuilder
    //   73: dup
    //   74: invokespecial <init> : ()V
    //   77: astore #6
    //   79: aload #6
    //   81: aload #7
    //   83: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: pop
    //   87: aload #6
    //   89: ldc_w ' -> '
    //   92: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: pop
    //   96: aload #6
    //   98: aload_3
    //   99: invokevirtual name : ()Ljava/lang/String;
    //   102: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: pop
    //   106: aload #6
    //   108: invokevirtual toString : ()Ljava/lang/String;
    //   111: astore #6
    //   113: aload_1
    //   114: getfield margin : I
    //   117: ifgt -> 137
    //   120: iload_2
    //   121: ifne -> 137
    //   124: aload #6
    //   126: astore_3
    //   127: aload_1
    //   128: getfield run : Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    //   131: instanceof androidx/constraintlayout/solver/widgets/analyzer/HelperReferences
    //   134: ifeq -> 368
    //   137: new java/lang/StringBuilder
    //   140: dup
    //   141: invokespecial <init> : ()V
    //   144: astore_3
    //   145: aload_3
    //   146: aload #6
    //   148: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: pop
    //   152: aload_3
    //   153: ldc_w '['
    //   156: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: pop
    //   160: aload_3
    //   161: invokevirtual toString : ()Ljava/lang/String;
    //   164: astore #6
    //   166: aload #6
    //   168: astore_3
    //   169: aload_1
    //   170: getfield margin : I
    //   173: ifle -> 257
    //   176: new java/lang/StringBuilder
    //   179: dup
    //   180: invokespecial <init> : ()V
    //   183: astore_3
    //   184: aload_3
    //   185: aload #6
    //   187: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   190: pop
    //   191: aload_3
    //   192: ldc_w 'label="'
    //   195: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: pop
    //   199: aload_3
    //   200: aload_1
    //   201: getfield margin : I
    //   204: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   207: pop
    //   208: aload_3
    //   209: ldc_w '"'
    //   212: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   215: pop
    //   216: aload_3
    //   217: invokevirtual toString : ()Ljava/lang/String;
    //   220: astore #6
    //   222: aload #6
    //   224: astore_3
    //   225: iload_2
    //   226: ifeq -> 257
    //   229: new java/lang/StringBuilder
    //   232: dup
    //   233: invokespecial <init> : ()V
    //   236: astore_3
    //   237: aload_3
    //   238: aload #6
    //   240: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   243: pop
    //   244: aload_3
    //   245: ldc_w ','
    //   248: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: pop
    //   252: aload_3
    //   253: invokevirtual toString : ()Ljava/lang/String;
    //   256: astore_3
    //   257: aload_3
    //   258: astore #6
    //   260: iload_2
    //   261: ifeq -> 296
    //   264: new java/lang/StringBuilder
    //   267: dup
    //   268: invokespecial <init> : ()V
    //   271: astore #6
    //   273: aload #6
    //   275: aload_3
    //   276: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   279: pop
    //   280: aload #6
    //   282: ldc_w ' style=dashed '
    //   285: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   288: pop
    //   289: aload #6
    //   291: invokevirtual toString : ()Ljava/lang/String;
    //   294: astore #6
    //   296: aload #6
    //   298: astore_3
    //   299: aload_1
    //   300: getfield run : Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    //   303: instanceof androidx/constraintlayout/solver/widgets/analyzer/HelperReferences
    //   306: ifeq -> 337
    //   309: new java/lang/StringBuilder
    //   312: dup
    //   313: invokespecial <init> : ()V
    //   316: astore_3
    //   317: aload_3
    //   318: aload #6
    //   320: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   323: pop
    //   324: aload_3
    //   325: ldc_w ' style=bold,color=gray '
    //   328: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   331: pop
    //   332: aload_3
    //   333: invokevirtual toString : ()Ljava/lang/String;
    //   336: astore_3
    //   337: new java/lang/StringBuilder
    //   340: dup
    //   341: invokespecial <init> : ()V
    //   344: astore #6
    //   346: aload #6
    //   348: aload_3
    //   349: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   352: pop
    //   353: aload #6
    //   355: ldc_w ']'
    //   358: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   361: pop
    //   362: aload #6
    //   364: invokevirtual toString : ()Ljava/lang/String;
    //   367: astore_3
    //   368: new java/lang/StringBuilder
    //   371: dup
    //   372: invokespecial <init> : ()V
    //   375: astore #6
    //   377: aload #6
    //   379: aload_3
    //   380: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   383: pop
    //   384: aload #6
    //   386: ldc_w '\\n'
    //   389: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   392: pop
    //   393: aload #6
    //   395: invokevirtual toString : ()Ljava/lang/String;
    //   398: astore_3
    //   399: new java/lang/StringBuilder
    //   402: dup
    //   403: invokespecial <init> : ()V
    //   406: astore #6
    //   408: aload #6
    //   410: aload #5
    //   412: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   415: pop
    //   416: aload #6
    //   418: aload_3
    //   419: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   422: pop
    //   423: aload #6
    //   425: invokevirtual toString : ()Ljava/lang/String;
    //   428: astore #5
    //   430: goto -> 14
    //   433: aload #5
    //   435: areturn
  }
  
  private boolean isCenteredConnection(DependencyNode paramDependencyNode1, DependencyNode paramDependencyNode2) {
    Iterator<DependencyNode> iterator2 = paramDependencyNode1.targets.iterator();
    boolean bool1 = false;
    byte b1 = 0;
    while (iterator2.hasNext()) {
      if ((DependencyNode)iterator2.next() != paramDependencyNode2)
        b1++; 
    } 
    Iterator<DependencyNode> iterator1 = paramDependencyNode2.targets.iterator();
    byte b2 = 0;
    while (iterator1.hasNext()) {
      if ((DependencyNode)iterator1.next() != paramDependencyNode1)
        b2++; 
    } 
    boolean bool2 = bool1;
    if (b1 > 0) {
      bool2 = bool1;
      if (b2 > 0)
        bool2 = true; 
    } 
    return bool2;
  }
  
  private void measure(ConstraintWidget paramConstraintWidget, ConstraintWidget.DimensionBehaviour paramDimensionBehaviour1, int paramInt1, ConstraintWidget.DimensionBehaviour paramDimensionBehaviour2, int paramInt2) {
    BasicMeasure.Measure measure = this.mMeasure;
    measure.horizontalBehavior = paramDimensionBehaviour1;
    measure.verticalBehavior = paramDimensionBehaviour2;
    measure.horizontalDimension = paramInt1;
    measure.verticalDimension = paramInt2;
    this.mMeasurer.measure(paramConstraintWidget, measure);
    paramConstraintWidget.setWidth(this.mMeasure.measuredWidth);
    paramConstraintWidget.setHeight(this.mMeasure.measuredHeight);
    paramConstraintWidget.setHasBaseline(this.mMeasure.measuredHasBaseline);
    paramConstraintWidget.setBaselineDistance(this.mMeasure.measuredBaseline);
  }
  
  private String nodeDefinition(WidgetRun paramWidgetRun) {
    String str4;
    ConstraintWidget.DimensionBehaviour dimensionBehaviour;
    boolean bool = paramWidgetRun instanceof VerticalWidgetRun;
    String str2 = paramWidgetRun.widget.getDebugName();
    ConstraintWidget constraintWidget = paramWidgetRun.widget;
    if (!bool) {
      dimensionBehaviour = constraintWidget.getHorizontalDimensionBehaviour();
    } else {
      dimensionBehaviour = constraintWidget.getVerticalDimensionBehaviour();
    } 
    RunGroup runGroup = paramWidgetRun.runGroup;
    if (!bool) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(str2);
      stringBuilder.append("_HORIZONTAL");
      str4 = stringBuilder.toString();
    } else {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(str2);
      stringBuilder.append("_VERTICAL");
      str4 = stringBuilder.toString();
    } 
    StringBuilder stringBuilder5 = new StringBuilder();
    stringBuilder5.append(str4);
    stringBuilder5.append(" [shape=none, label=<");
    String str6 = stringBuilder5.toString();
    StringBuilder stringBuilder2 = new StringBuilder();
    stringBuilder2.append(str6);
    stringBuilder2.append("<TABLE BORDER=\"0\" CELLSPACING=\"0\" CELLPADDING=\"2\">");
    String str3 = stringBuilder2.toString();
    StringBuilder stringBuilder4 = new StringBuilder();
    stringBuilder4.append(str3);
    stringBuilder4.append("  <TR>");
    str3 = stringBuilder4.toString();
    if (!bool) {
      stringBuilder4 = new StringBuilder();
      stringBuilder4.append(str3);
      stringBuilder4.append("    <TD ");
      String str = stringBuilder4.toString();
      str3 = str;
      if (paramWidgetRun.start.resolved) {
        StringBuilder stringBuilder6 = new StringBuilder();
        stringBuilder6.append(str);
        stringBuilder6.append(" BGCOLOR=\"green\"");
        str3 = stringBuilder6.toString();
      } 
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(str3);
      stringBuilder.append(" PORT=\"LEFT\" BORDER=\"1\">L</TD>");
      str3 = stringBuilder.toString();
    } else {
      stringBuilder4 = new StringBuilder();
      stringBuilder4.append(str3);
      stringBuilder4.append("    <TD ");
      String str = stringBuilder4.toString();
      str3 = str;
      if (paramWidgetRun.start.resolved) {
        StringBuilder stringBuilder6 = new StringBuilder();
        stringBuilder6.append(str);
        stringBuilder6.append(" BGCOLOR=\"green\"");
        str3 = stringBuilder6.toString();
      } 
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(str3);
      stringBuilder.append(" PORT=\"TOP\" BORDER=\"1\">T</TD>");
      str3 = stringBuilder.toString();
    } 
    stringBuilder4 = new StringBuilder();
    stringBuilder4.append(str3);
    stringBuilder4.append("    <TD BORDER=\"1\" ");
    String str5 = stringBuilder4.toString();
    if (paramWidgetRun.dimension.resolved && !paramWidgetRun.widget.measured) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(str5);
      stringBuilder.append(" BGCOLOR=\"green\" ");
      String str = stringBuilder.toString();
    } else if (paramWidgetRun.dimension.resolved && paramWidgetRun.widget.measured) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(str5);
      stringBuilder.append(" BGCOLOR=\"lightgray\" ");
      String str = stringBuilder.toString();
    } else {
      str3 = str5;
      if (!paramWidgetRun.dimension.resolved) {
        str3 = str5;
        if (paramWidgetRun.widget.measured) {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append(str5);
          stringBuilder.append(" BGCOLOR=\"yellow\" ");
          str3 = stringBuilder.toString();
        } 
      } 
    } 
    str5 = str3;
    if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(str3);
      stringBuilder.append("style=\"dashed\"");
      str5 = stringBuilder.toString();
    } 
    if (runGroup != null) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(" [");
      stringBuilder.append(runGroup.groupIndex + 1);
      stringBuilder.append("/");
      stringBuilder.append(RunGroup.index);
      stringBuilder.append("]");
      String str = stringBuilder.toString();
    } else {
      str3 = "";
    } 
    StringBuilder stringBuilder3 = new StringBuilder();
    stringBuilder3.append(str5);
    stringBuilder3.append(">");
    stringBuilder3.append(str2);
    stringBuilder3.append(str3);
    stringBuilder3.append(" </TD>");
    str3 = stringBuilder3.toString();
    if (!bool) {
      stringBuilder3 = new StringBuilder();
      stringBuilder3.append(str3);
      stringBuilder3.append("    <TD ");
      String str = stringBuilder3.toString();
      str3 = str;
      if (paramWidgetRun.end.resolved) {
        StringBuilder stringBuilder6 = new StringBuilder();
        stringBuilder6.append(str);
        stringBuilder6.append(" BGCOLOR=\"green\"");
        str3 = stringBuilder6.toString();
      } 
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(str3);
      stringBuilder.append(" PORT=\"RIGHT\" BORDER=\"1\">R</TD>");
      str1 = stringBuilder.toString();
    } else {
      String str8;
      stringBuilder3 = new StringBuilder();
      stringBuilder3.append(str3);
      stringBuilder3.append("    <TD ");
      String str10 = stringBuilder3.toString();
      str3 = str10;
      if (bool) {
        str3 = str10;
        if (((VerticalWidgetRun)str1).baseline.resolved) {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append(str10);
          stringBuilder.append(" BGCOLOR=\"green\"");
          str8 = stringBuilder.toString();
        } 
      } 
      StringBuilder stringBuilder8 = new StringBuilder();
      stringBuilder8.append(str8);
      stringBuilder8.append(" PORT=\"BASELINE\" BORDER=\"1\">b</TD>");
      String str9 = stringBuilder8.toString();
      StringBuilder stringBuilder7 = new StringBuilder();
      stringBuilder7.append(str9);
      stringBuilder7.append("    <TD ");
      str9 = stringBuilder7.toString();
      String str7 = str9;
      if (((WidgetRun)str1).end.resolved) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str9);
        stringBuilder.append(" BGCOLOR=\"green\"");
        str7 = stringBuilder.toString();
      } 
      StringBuilder stringBuilder6 = new StringBuilder();
      stringBuilder6.append(str7);
      stringBuilder6.append(" PORT=\"BOTTOM\" BORDER=\"1\">B</TD>");
      str1 = stringBuilder6.toString();
    } 
    StringBuilder stringBuilder1 = new StringBuilder();
    stringBuilder1.append(str1);
    stringBuilder1.append("  </TR></TABLE>");
    String str1 = stringBuilder1.toString();
    stringBuilder1 = new StringBuilder();
    stringBuilder1.append(str1);
    stringBuilder1.append(">];\n");
    return stringBuilder1.toString();
  }
  
  public void buildGraph() {
    buildGraph(this.mRuns);
    this.mGroups.clear();
    RunGroup.index = 0;
    findGroup(this.container.horizontalRun, 0, this.mGroups);
    findGroup(this.container.verticalRun, 1, this.mGroups);
    this.mNeedBuildGraph = false;
  }
  
  public void buildGraph(ArrayList<WidgetRun> paramArrayList) {
    paramArrayList.clear();
    this.mContainer.horizontalRun.clear();
    this.mContainer.verticalRun.clear();
    paramArrayList.add(this.mContainer.horizontalRun);
    paramArrayList.add(this.mContainer.verticalRun);
    Iterator<ConstraintWidget> iterator = this.mContainer.mChildren.iterator();
    HashSet<ChainRun> hashSet = null;
    while (iterator.hasNext()) {
      HashSet<ChainRun> hashSet1;
      ConstraintWidget constraintWidget = iterator.next();
      if (constraintWidget instanceof androidx.constraintlayout.solver.widgets.Guideline) {
        paramArrayList.add(new GuidelineReference(constraintWidget));
        continue;
      } 
      if (constraintWidget.isInHorizontalChain()) {
        if (constraintWidget.horizontalChainRun == null)
          constraintWidget.horizontalChainRun = new ChainRun(constraintWidget, 0); 
        hashSet1 = hashSet;
        if (hashSet == null)
          hashSet1 = new HashSet(); 
        hashSet1.add(constraintWidget.horizontalChainRun);
        hashSet = hashSet1;
      } else {
        paramArrayList.add(constraintWidget.horizontalRun);
      } 
      if (constraintWidget.isInVerticalChain()) {
        if (constraintWidget.verticalChainRun == null)
          constraintWidget.verticalChainRun = new ChainRun(constraintWidget, 1); 
        hashSet1 = hashSet;
        if (hashSet == null)
          hashSet1 = new HashSet<ChainRun>(); 
        hashSet1.add(constraintWidget.verticalChainRun);
      } else {
        paramArrayList.add(constraintWidget.verticalRun);
        hashSet1 = hashSet;
      } 
      hashSet = hashSet1;
      if (constraintWidget instanceof androidx.constraintlayout.solver.widgets.HelperWidget) {
        paramArrayList.add(new HelperReferences(constraintWidget));
        hashSet = hashSet1;
      } 
    } 
    if (hashSet != null)
      paramArrayList.addAll((Collection)hashSet); 
    Iterator<WidgetRun> iterator1 = paramArrayList.iterator();
    while (iterator1.hasNext())
      ((WidgetRun)iterator1.next()).clear(); 
    for (WidgetRun widgetRun : paramArrayList) {
      if (widgetRun.widget == this.mContainer)
        continue; 
      widgetRun.apply();
    } 
  }
  
  public void defineTerminalWidgets(ConstraintWidget.DimensionBehaviour paramDimensionBehaviour1, ConstraintWidget.DimensionBehaviour paramDimensionBehaviour2) {
    if (this.mNeedBuildGraph) {
      buildGraph();
      Iterator<ConstraintWidget> iterator = this.container.mChildren.iterator();
      boolean bool = false;
      while (iterator.hasNext()) {
        ConstraintWidget constraintWidget = iterator.next();
        constraintWidget.isTerminalWidget[0] = true;
        constraintWidget.isTerminalWidget[1] = true;
        if (constraintWidget instanceof androidx.constraintlayout.solver.widgets.Barrier)
          bool = true; 
      } 
      if (!bool)
        for (RunGroup runGroup : this.mGroups) {
          boolean bool1;
          boolean bool2;
          if (paramDimensionBehaviour1 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            bool1 = true;
          } else {
            bool1 = false;
          } 
          if (paramDimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            bool2 = true;
          } else {
            bool2 = false;
          } 
          runGroup.defineTerminalWidgets(bool1, bool2);
        }  
    } 
  }
  
  public boolean directMeasure(boolean paramBoolean) {
    // Byte code:
    //   0: iload_1
    //   1: iconst_1
    //   2: iand
    //   3: istore_2
    //   4: aload_0
    //   5: getfield mNeedBuildGraph : Z
    //   8: istore_3
    //   9: iconst_0
    //   10: istore_1
    //   11: iload_3
    //   12: ifne -> 22
    //   15: aload_0
    //   16: getfield mNeedRedoMeasures : Z
    //   19: ifeq -> 116
    //   22: aload_0
    //   23: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   26: getfield mChildren : Ljava/util/ArrayList;
    //   29: invokevirtual iterator : ()Ljava/util/Iterator;
    //   32: astore #4
    //   34: aload #4
    //   36: invokeinterface hasNext : ()Z
    //   41: ifeq -> 81
    //   44: aload #4
    //   46: invokeinterface next : ()Ljava/lang/Object;
    //   51: checkcast androidx/constraintlayout/solver/widgets/ConstraintWidget
    //   54: astore #5
    //   56: aload #5
    //   58: iconst_0
    //   59: putfield measured : Z
    //   62: aload #5
    //   64: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   67: invokevirtual reset : ()V
    //   70: aload #5
    //   72: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   75: invokevirtual reset : ()V
    //   78: goto -> 34
    //   81: aload_0
    //   82: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   85: astore #5
    //   87: aload #5
    //   89: iconst_0
    //   90: putfield measured : Z
    //   93: aload #5
    //   95: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   98: invokevirtual reset : ()V
    //   101: aload_0
    //   102: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   105: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   108: invokevirtual reset : ()V
    //   111: aload_0
    //   112: iconst_0
    //   113: putfield mNeedRedoMeasures : Z
    //   116: aload_0
    //   117: aload_0
    //   118: getfield mContainer : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   121: invokespecial basicMeasureWidgets : (Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)Z
    //   124: ifeq -> 129
    //   127: iconst_0
    //   128: ireturn
    //   129: aload_0
    //   130: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   133: iconst_0
    //   134: invokevirtual setX : (I)V
    //   137: aload_0
    //   138: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   141: iconst_0
    //   142: invokevirtual setY : (I)V
    //   145: aload_0
    //   146: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   149: iconst_0
    //   150: invokevirtual getDimensionBehaviour : (I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   153: astore #5
    //   155: aload_0
    //   156: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   159: iconst_1
    //   160: invokevirtual getDimensionBehaviour : (I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   163: astore #4
    //   165: aload_0
    //   166: getfield mNeedBuildGraph : Z
    //   169: ifeq -> 176
    //   172: aload_0
    //   173: invokevirtual buildGraph : ()V
    //   176: aload_0
    //   177: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   180: invokevirtual getX : ()I
    //   183: istore #6
    //   185: aload_0
    //   186: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   189: invokevirtual getY : ()I
    //   192: istore #7
    //   194: aload_0
    //   195: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   198: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   201: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   204: iload #6
    //   206: invokevirtual resolve : (I)V
    //   209: aload_0
    //   210: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   213: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   216: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   219: iload #7
    //   221: invokevirtual resolve : (I)V
    //   224: aload_0
    //   225: invokevirtual measureWidgets : ()V
    //   228: aload #5
    //   230: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   233: if_acmpeq -> 244
    //   236: aload #4
    //   238: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   241: if_acmpne -> 414
    //   244: iload_2
    //   245: istore #8
    //   247: iload_2
    //   248: ifeq -> 292
    //   251: aload_0
    //   252: getfield mRuns : Ljava/util/ArrayList;
    //   255: invokevirtual iterator : ()Ljava/util/Iterator;
    //   258: astore #9
    //   260: iload_2
    //   261: istore #8
    //   263: aload #9
    //   265: invokeinterface hasNext : ()Z
    //   270: ifeq -> 292
    //   273: aload #9
    //   275: invokeinterface next : ()Ljava/lang/Object;
    //   280: checkcast androidx/constraintlayout/solver/widgets/analyzer/WidgetRun
    //   283: invokevirtual supportsWrapComputation : ()Z
    //   286: ifne -> 260
    //   289: iconst_0
    //   290: istore #8
    //   292: iload #8
    //   294: ifeq -> 353
    //   297: aload #5
    //   299: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   302: if_acmpne -> 353
    //   305: aload_0
    //   306: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   309: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   312: invokevirtual setHorizontalDimensionBehaviour : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    //   315: aload_0
    //   316: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   319: astore #9
    //   321: aload #9
    //   323: aload_0
    //   324: aload #9
    //   326: iconst_0
    //   327: invokespecial computeWrap : (Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;I)I
    //   330: invokevirtual setWidth : (I)V
    //   333: aload_0
    //   334: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   337: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   340: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   343: aload_0
    //   344: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   347: invokevirtual getWidth : ()I
    //   350: invokevirtual resolve : (I)V
    //   353: iload #8
    //   355: ifeq -> 414
    //   358: aload #4
    //   360: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   363: if_acmpne -> 414
    //   366: aload_0
    //   367: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   370: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   373: invokevirtual setVerticalDimensionBehaviour : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    //   376: aload_0
    //   377: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   380: astore #9
    //   382: aload #9
    //   384: aload_0
    //   385: aload #9
    //   387: iconst_1
    //   388: invokespecial computeWrap : (Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;I)I
    //   391: invokevirtual setHeight : (I)V
    //   394: aload_0
    //   395: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   398: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   401: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   404: aload_0
    //   405: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   408: invokevirtual getHeight : ()I
    //   411: invokevirtual resolve : (I)V
    //   414: aload_0
    //   415: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   418: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   421: iconst_0
    //   422: aaload
    //   423: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   426: if_acmpeq -> 453
    //   429: aload_0
    //   430: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   433: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   436: iconst_0
    //   437: aaload
    //   438: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_PARENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   441: if_acmpne -> 447
    //   444: goto -> 453
    //   447: iconst_0
    //   448: istore #8
    //   450: goto -> 584
    //   453: aload_0
    //   454: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   457: invokevirtual getWidth : ()I
    //   460: iload #6
    //   462: iadd
    //   463: istore #8
    //   465: aload_0
    //   466: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   469: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   472: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   475: iload #8
    //   477: invokevirtual resolve : (I)V
    //   480: aload_0
    //   481: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   484: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   487: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   490: iload #8
    //   492: iload #6
    //   494: isub
    //   495: invokevirtual resolve : (I)V
    //   498: aload_0
    //   499: invokevirtual measureWidgets : ()V
    //   502: aload_0
    //   503: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   506: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   509: iconst_1
    //   510: aaload
    //   511: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   514: if_acmpeq -> 532
    //   517: aload_0
    //   518: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   521: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   524: iconst_1
    //   525: aaload
    //   526: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_PARENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   529: if_acmpne -> 577
    //   532: aload_0
    //   533: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   536: invokevirtual getHeight : ()I
    //   539: iload #7
    //   541: iadd
    //   542: istore #8
    //   544: aload_0
    //   545: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   548: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   551: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   554: iload #8
    //   556: invokevirtual resolve : (I)V
    //   559: aload_0
    //   560: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   563: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   566: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   569: iload #8
    //   571: iload #7
    //   573: isub
    //   574: invokevirtual resolve : (I)V
    //   577: aload_0
    //   578: invokevirtual measureWidgets : ()V
    //   581: iconst_1
    //   582: istore #8
    //   584: aload_0
    //   585: getfield mRuns : Ljava/util/ArrayList;
    //   588: invokevirtual iterator : ()Ljava/util/Iterator;
    //   591: astore #9
    //   593: aload #9
    //   595: invokeinterface hasNext : ()Z
    //   600: ifeq -> 646
    //   603: aload #9
    //   605: invokeinterface next : ()Ljava/lang/Object;
    //   610: checkcast androidx/constraintlayout/solver/widgets/analyzer/WidgetRun
    //   613: astore #10
    //   615: aload #10
    //   617: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   620: aload_0
    //   621: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   624: if_acmpne -> 638
    //   627: aload #10
    //   629: getfield resolved : Z
    //   632: ifne -> 638
    //   635: goto -> 593
    //   638: aload #10
    //   640: invokevirtual applyToWidget : ()V
    //   643: goto -> 593
    //   646: aload_0
    //   647: getfield mRuns : Ljava/util/ArrayList;
    //   650: invokevirtual iterator : ()Ljava/util/Iterator;
    //   653: astore #10
    //   655: aload #10
    //   657: invokeinterface hasNext : ()Z
    //   662: ifeq -> 763
    //   665: aload #10
    //   667: invokeinterface next : ()Ljava/lang/Object;
    //   672: checkcast androidx/constraintlayout/solver/widgets/analyzer/WidgetRun
    //   675: astore #9
    //   677: iload #8
    //   679: ifne -> 697
    //   682: aload #9
    //   684: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   687: aload_0
    //   688: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   691: if_acmpne -> 697
    //   694: goto -> 655
    //   697: aload #9
    //   699: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   702: getfield resolved : Z
    //   705: ifne -> 711
    //   708: goto -> 765
    //   711: aload #9
    //   713: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   716: getfield resolved : Z
    //   719: ifne -> 733
    //   722: aload #9
    //   724: instanceof androidx/constraintlayout/solver/widgets/analyzer/GuidelineReference
    //   727: ifne -> 733
    //   730: goto -> 765
    //   733: aload #9
    //   735: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   738: getfield resolved : Z
    //   741: ifne -> 655
    //   744: aload #9
    //   746: instanceof androidx/constraintlayout/solver/widgets/analyzer/ChainRun
    //   749: ifne -> 655
    //   752: aload #9
    //   754: instanceof androidx/constraintlayout/solver/widgets/analyzer/GuidelineReference
    //   757: ifne -> 655
    //   760: goto -> 765
    //   763: iconst_1
    //   764: istore_1
    //   765: aload_0
    //   766: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   769: aload #5
    //   771: invokevirtual setHorizontalDimensionBehaviour : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    //   774: aload_0
    //   775: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   778: aload #4
    //   780: invokevirtual setVerticalDimensionBehaviour : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    //   783: iload_1
    //   784: ireturn
  }
  
  public boolean directMeasureSetup(boolean paramBoolean) {
    if (this.mNeedBuildGraph) {
      for (ConstraintWidget constraintWidget : this.container.mChildren) {
        constraintWidget.measured = false;
        constraintWidget.horizontalRun.dimension.resolved = false;
        constraintWidget.horizontalRun.resolved = false;
        constraintWidget.horizontalRun.reset();
        constraintWidget.verticalRun.dimension.resolved = false;
        constraintWidget.verticalRun.resolved = false;
        constraintWidget.verticalRun.reset();
      } 
      ConstraintWidgetContainer constraintWidgetContainer = this.container;
      constraintWidgetContainer.measured = false;
      constraintWidgetContainer.horizontalRun.dimension.resolved = false;
      this.container.horizontalRun.resolved = false;
      this.container.horizontalRun.reset();
      this.container.verticalRun.dimension.resolved = false;
      this.container.verticalRun.resolved = false;
      this.container.verticalRun.reset();
      buildGraph();
    } 
    if (basicMeasureWidgets(this.mContainer))
      return false; 
    this.container.setX(0);
    this.container.setY(0);
    this.container.horizontalRun.start.resolve(0);
    this.container.verticalRun.start.resolve(0);
    return true;
  }
  
  public boolean directMeasureWithOrientation(boolean paramBoolean, int paramInt) {
    // Byte code:
    //   0: iload_1
    //   1: iconst_1
    //   2: iand
    //   3: istore_3
    //   4: aload_0
    //   5: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   8: astore #4
    //   10: iconst_0
    //   11: istore_1
    //   12: aload #4
    //   14: iconst_0
    //   15: invokevirtual getDimensionBehaviour : (I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   18: astore #5
    //   20: aload_0
    //   21: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   24: iconst_1
    //   25: invokevirtual getDimensionBehaviour : (I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   28: astore #4
    //   30: aload_0
    //   31: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   34: invokevirtual getX : ()I
    //   37: istore #6
    //   39: aload_0
    //   40: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   43: invokevirtual getY : ()I
    //   46: istore #7
    //   48: iload_3
    //   49: ifeq -> 251
    //   52: aload #5
    //   54: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   57: if_acmpeq -> 68
    //   60: aload #4
    //   62: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   65: if_acmpne -> 251
    //   68: aload_0
    //   69: getfield mRuns : Ljava/util/ArrayList;
    //   72: invokevirtual iterator : ()Ljava/util/Iterator;
    //   75: astore #8
    //   77: iload_3
    //   78: istore #9
    //   80: aload #8
    //   82: invokeinterface hasNext : ()Z
    //   87: ifeq -> 122
    //   90: aload #8
    //   92: invokeinterface next : ()Ljava/lang/Object;
    //   97: checkcast androidx/constraintlayout/solver/widgets/analyzer/WidgetRun
    //   100: astore #10
    //   102: aload #10
    //   104: getfield orientation : I
    //   107: iload_2
    //   108: if_icmpne -> 77
    //   111: aload #10
    //   113: invokevirtual supportsWrapComputation : ()Z
    //   116: ifne -> 77
    //   119: iconst_0
    //   120: istore #9
    //   122: iload_2
    //   123: ifne -> 190
    //   126: iload #9
    //   128: ifeq -> 251
    //   131: aload #5
    //   133: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   136: if_acmpne -> 251
    //   139: aload_0
    //   140: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   143: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   146: invokevirtual setHorizontalDimensionBehaviour : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    //   149: aload_0
    //   150: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   153: astore #10
    //   155: aload #10
    //   157: aload_0
    //   158: aload #10
    //   160: iconst_0
    //   161: invokespecial computeWrap : (Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;I)I
    //   164: invokevirtual setWidth : (I)V
    //   167: aload_0
    //   168: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   171: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   174: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   177: aload_0
    //   178: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   181: invokevirtual getWidth : ()I
    //   184: invokevirtual resolve : (I)V
    //   187: goto -> 251
    //   190: iload #9
    //   192: ifeq -> 251
    //   195: aload #4
    //   197: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   200: if_acmpne -> 251
    //   203: aload_0
    //   204: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   207: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   210: invokevirtual setVerticalDimensionBehaviour : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    //   213: aload_0
    //   214: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   217: astore #10
    //   219: aload #10
    //   221: aload_0
    //   222: aload #10
    //   224: iconst_1
    //   225: invokespecial computeWrap : (Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;I)I
    //   228: invokevirtual setHeight : (I)V
    //   231: aload_0
    //   232: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   235: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   238: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   241: aload_0
    //   242: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   245: invokevirtual getHeight : ()I
    //   248: invokevirtual resolve : (I)V
    //   251: iload_2
    //   252: ifne -> 333
    //   255: aload_0
    //   256: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   259: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   262: iconst_0
    //   263: aaload
    //   264: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   267: if_acmpeq -> 285
    //   270: aload_0
    //   271: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   274: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   277: iconst_0
    //   278: aaload
    //   279: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_PARENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   282: if_acmpne -> 366
    //   285: aload_0
    //   286: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   289: invokevirtual getWidth : ()I
    //   292: iload #6
    //   294: iadd
    //   295: istore #9
    //   297: aload_0
    //   298: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   301: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   304: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   307: iload #9
    //   309: invokevirtual resolve : (I)V
    //   312: aload_0
    //   313: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   316: getfield horizontalRun : Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
    //   319: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   322: iload #9
    //   324: iload #6
    //   326: isub
    //   327: invokevirtual resolve : (I)V
    //   330: goto -> 417
    //   333: aload_0
    //   334: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   337: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   340: iconst_1
    //   341: aaload
    //   342: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.FIXED : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   345: if_acmpeq -> 372
    //   348: aload_0
    //   349: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   352: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   355: iconst_1
    //   356: aaload
    //   357: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_PARENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   360: if_acmpne -> 366
    //   363: goto -> 372
    //   366: iconst_0
    //   367: istore #9
    //   369: goto -> 420
    //   372: aload_0
    //   373: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   376: invokevirtual getHeight : ()I
    //   379: iload #7
    //   381: iadd
    //   382: istore #9
    //   384: aload_0
    //   385: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   388: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   391: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   394: iload #9
    //   396: invokevirtual resolve : (I)V
    //   399: aload_0
    //   400: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   403: getfield verticalRun : Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    //   406: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   409: iload #9
    //   411: iload #7
    //   413: isub
    //   414: invokevirtual resolve : (I)V
    //   417: iconst_1
    //   418: istore #9
    //   420: aload_0
    //   421: invokevirtual measureWidgets : ()V
    //   424: aload_0
    //   425: getfield mRuns : Ljava/util/ArrayList;
    //   428: invokevirtual iterator : ()Ljava/util/Iterator;
    //   431: astore #8
    //   433: aload #8
    //   435: invokeinterface hasNext : ()Z
    //   440: ifeq -> 498
    //   443: aload #8
    //   445: invokeinterface next : ()Ljava/lang/Object;
    //   450: checkcast androidx/constraintlayout/solver/widgets/analyzer/WidgetRun
    //   453: astore #10
    //   455: aload #10
    //   457: getfield orientation : I
    //   460: iload_2
    //   461: if_icmpeq -> 467
    //   464: goto -> 433
    //   467: aload #10
    //   469: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   472: aload_0
    //   473: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   476: if_acmpne -> 490
    //   479: aload #10
    //   481: getfield resolved : Z
    //   484: ifne -> 490
    //   487: goto -> 433
    //   490: aload #10
    //   492: invokevirtual applyToWidget : ()V
    //   495: goto -> 433
    //   498: aload_0
    //   499: getfield mRuns : Ljava/util/ArrayList;
    //   502: invokevirtual iterator : ()Ljava/util/Iterator;
    //   505: astore #8
    //   507: aload #8
    //   509: invokeinterface hasNext : ()Z
    //   514: ifeq -> 611
    //   517: aload #8
    //   519: invokeinterface next : ()Ljava/lang/Object;
    //   524: checkcast androidx/constraintlayout/solver/widgets/analyzer/WidgetRun
    //   527: astore #10
    //   529: aload #10
    //   531: getfield orientation : I
    //   534: iload_2
    //   535: if_icmpeq -> 541
    //   538: goto -> 507
    //   541: iload #9
    //   543: ifne -> 561
    //   546: aload #10
    //   548: getfield widget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   551: aload_0
    //   552: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   555: if_acmpne -> 561
    //   558: goto -> 507
    //   561: aload #10
    //   563: getfield start : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   566: getfield resolved : Z
    //   569: ifne -> 575
    //   572: goto -> 613
    //   575: aload #10
    //   577: getfield end : Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    //   580: getfield resolved : Z
    //   583: ifne -> 589
    //   586: goto -> 613
    //   589: aload #10
    //   591: instanceof androidx/constraintlayout/solver/widgets/analyzer/ChainRun
    //   594: ifne -> 507
    //   597: aload #10
    //   599: getfield dimension : Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
    //   602: getfield resolved : Z
    //   605: ifne -> 507
    //   608: goto -> 613
    //   611: iconst_1
    //   612: istore_1
    //   613: aload_0
    //   614: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   617: aload #5
    //   619: invokevirtual setHorizontalDimensionBehaviour : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    //   622: aload_0
    //   623: getfield container : Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    //   626: aload #4
    //   628: invokevirtual setVerticalDimensionBehaviour : (Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    //   631: iload_1
    //   632: ireturn
  }
  
  public void invalidateGraph() {
    this.mNeedBuildGraph = true;
  }
  
  public void invalidateMeasures() {
    this.mNeedRedoMeasures = true;
  }
  
  public void measureWidgets() {
    Iterator iterator = this.container.mChildren.iterator();
    while (true) {
      while (true)
        break; 
      if (((ConstraintWidget)SYNTHETIC_LOCAL_VARIABLE_2).measured && ((ConstraintWidget)SYNTHETIC_LOCAL_VARIABLE_2).verticalRun.baselineDimension != null)
        ((ConstraintWidget)SYNTHETIC_LOCAL_VARIABLE_2).verticalRun.baselineDimension.resolve(SYNTHETIC_LOCAL_VARIABLE_2.getBaselineDistance()); 
    } 
  }
  
  public void setMeasurer(BasicMeasure.Measurer paramMeasurer) {
    this.mMeasurer = paramMeasurer;
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/widgets/analyzer/DependencyGraph.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */