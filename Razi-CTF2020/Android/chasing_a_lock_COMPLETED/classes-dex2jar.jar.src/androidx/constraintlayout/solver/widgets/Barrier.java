package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import java.util.HashMap;

public class Barrier extends HelperWidget {
  public static final int BOTTOM = 3;
  
  public static final int LEFT = 0;
  
  public static final int RIGHT = 1;
  
  public static final int TOP = 2;
  
  private boolean mAllowsGoneWidget = true;
  
  private int mBarrierType = 0;
  
  private int mMargin = 0;
  
  public void addToSolver(LinearSystem paramLinearSystem) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   4: iconst_0
    //   5: aload_0
    //   6: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   9: aastore
    //   10: aload_0
    //   11: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   14: iconst_2
    //   15: aload_0
    //   16: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   19: aastore
    //   20: aload_0
    //   21: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   24: iconst_1
    //   25: aload_0
    //   26: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   29: aastore
    //   30: aload_0
    //   31: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   34: iconst_3
    //   35: aload_0
    //   36: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   39: aastore
    //   40: iconst_0
    //   41: istore_2
    //   42: iload_2
    //   43: aload_0
    //   44: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   47: arraylength
    //   48: if_icmpge -> 76
    //   51: aload_0
    //   52: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   55: iload_2
    //   56: aaload
    //   57: aload_1
    //   58: aload_0
    //   59: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   62: iload_2
    //   63: aaload
    //   64: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   67: putfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   70: iinc #2, 1
    //   73: goto -> 42
    //   76: aload_0
    //   77: getfield mBarrierType : I
    //   80: istore_2
    //   81: iload_2
    //   82: iflt -> 917
    //   85: iload_2
    //   86: iconst_4
    //   87: if_icmpge -> 917
    //   90: aload_0
    //   91: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   94: aload_0
    //   95: getfield mBarrierType : I
    //   98: aaload
    //   99: astore_3
    //   100: iconst_0
    //   101: istore_2
    //   102: iload_2
    //   103: aload_0
    //   104: getfield mWidgetsCount : I
    //   107: if_icmpge -> 252
    //   110: aload_0
    //   111: getfield mWidgets : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   114: iload_2
    //   115: aaload
    //   116: astore #4
    //   118: aload_0
    //   119: getfield mAllowsGoneWidget : Z
    //   122: ifne -> 136
    //   125: aload #4
    //   127: invokevirtual allowedInBarrier : ()Z
    //   130: ifne -> 136
    //   133: goto -> 246
    //   136: aload_0
    //   137: getfield mBarrierType : I
    //   140: istore #5
    //   142: iload #5
    //   144: ifeq -> 153
    //   147: iload #5
    //   149: iconst_1
    //   150: if_icmpne -> 192
    //   153: aload #4
    //   155: invokevirtual getHorizontalDimensionBehaviour : ()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   158: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   161: if_acmpne -> 192
    //   164: aload #4
    //   166: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   169: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   172: ifnull -> 192
    //   175: aload #4
    //   177: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   180: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   183: ifnull -> 192
    //   186: iconst_1
    //   187: istore #6
    //   189: goto -> 255
    //   192: aload_0
    //   193: getfield mBarrierType : I
    //   196: istore #5
    //   198: iload #5
    //   200: iconst_2
    //   201: if_icmpeq -> 210
    //   204: iload #5
    //   206: iconst_3
    //   207: if_icmpne -> 246
    //   210: aload #4
    //   212: invokevirtual getVerticalDimensionBehaviour : ()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   215: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   218: if_acmpne -> 246
    //   221: aload #4
    //   223: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   226: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   229: ifnull -> 246
    //   232: aload #4
    //   234: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   237: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   240: ifnull -> 246
    //   243: goto -> 186
    //   246: iinc #2, 1
    //   249: goto -> 102
    //   252: iconst_0
    //   253: istore #6
    //   255: aload_0
    //   256: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   259: invokevirtual hasCenteredDependents : ()Z
    //   262: ifne -> 283
    //   265: aload_0
    //   266: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   269: invokevirtual hasCenteredDependents : ()Z
    //   272: ifeq -> 278
    //   275: goto -> 283
    //   278: iconst_0
    //   279: istore_2
    //   280: goto -> 285
    //   283: iconst_1
    //   284: istore_2
    //   285: aload_0
    //   286: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   289: invokevirtual hasCenteredDependents : ()Z
    //   292: ifne -> 314
    //   295: aload_0
    //   296: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   299: invokevirtual hasCenteredDependents : ()Z
    //   302: ifeq -> 308
    //   305: goto -> 314
    //   308: iconst_0
    //   309: istore #5
    //   311: goto -> 317
    //   314: iconst_1
    //   315: istore #5
    //   317: iload #6
    //   319: ifne -> 377
    //   322: aload_0
    //   323: getfield mBarrierType : I
    //   326: ifne -> 333
    //   329: iload_2
    //   330: ifne -> 371
    //   333: aload_0
    //   334: getfield mBarrierType : I
    //   337: iconst_2
    //   338: if_icmpne -> 346
    //   341: iload #5
    //   343: ifne -> 371
    //   346: aload_0
    //   347: getfield mBarrierType : I
    //   350: iconst_1
    //   351: if_icmpne -> 358
    //   354: iload_2
    //   355: ifne -> 371
    //   358: aload_0
    //   359: getfield mBarrierType : I
    //   362: iconst_3
    //   363: if_icmpne -> 377
    //   366: iload #5
    //   368: ifeq -> 377
    //   371: iconst_1
    //   372: istore #5
    //   374: goto -> 380
    //   377: iconst_0
    //   378: istore #5
    //   380: iconst_5
    //   381: istore_2
    //   382: iload #5
    //   384: ifne -> 389
    //   387: iconst_4
    //   388: istore_2
    //   389: iconst_0
    //   390: istore #5
    //   392: iload #5
    //   394: aload_0
    //   395: getfield mWidgetsCount : I
    //   398: if_icmpge -> 604
    //   401: aload_0
    //   402: getfield mWidgets : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   405: iload #5
    //   407: aaload
    //   408: astore #4
    //   410: aload_0
    //   411: getfield mAllowsGoneWidget : Z
    //   414: ifne -> 428
    //   417: aload #4
    //   419: invokevirtual allowedInBarrier : ()Z
    //   422: ifne -> 428
    //   425: goto -> 598
    //   428: aload_1
    //   429: aload #4
    //   431: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   434: aload_0
    //   435: getfield mBarrierType : I
    //   438: aaload
    //   439: invokevirtual createObjectVariable : (Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    //   442: astore #7
    //   444: aload #4
    //   446: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   449: aload_0
    //   450: getfield mBarrierType : I
    //   453: aaload
    //   454: aload #7
    //   456: putfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   459: aload #4
    //   461: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   464: aload_0
    //   465: getfield mBarrierType : I
    //   468: aaload
    //   469: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   472: ifnull -> 515
    //   475: aload #4
    //   477: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   480: aload_0
    //   481: getfield mBarrierType : I
    //   484: aaload
    //   485: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   488: getfield mOwner : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   491: aload_0
    //   492: if_acmpne -> 515
    //   495: aload #4
    //   497: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   500: aload_0
    //   501: getfield mBarrierType : I
    //   504: aaload
    //   505: getfield mMargin : I
    //   508: iconst_0
    //   509: iadd
    //   510: istore #8
    //   512: goto -> 518
    //   515: iconst_0
    //   516: istore #8
    //   518: aload_0
    //   519: getfield mBarrierType : I
    //   522: istore #9
    //   524: iload #9
    //   526: ifeq -> 560
    //   529: iload #9
    //   531: iconst_2
    //   532: if_icmpne -> 538
    //   535: goto -> 560
    //   538: aload_1
    //   539: aload_3
    //   540: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   543: aload #7
    //   545: aload_0
    //   546: getfield mMargin : I
    //   549: iload #8
    //   551: iadd
    //   552: iload #6
    //   554: invokevirtual addGreaterBarrier : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)V
    //   557: goto -> 579
    //   560: aload_1
    //   561: aload_3
    //   562: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   565: aload #7
    //   567: aload_0
    //   568: getfield mMargin : I
    //   571: iload #8
    //   573: isub
    //   574: iload #6
    //   576: invokevirtual addLowerBarrier : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)V
    //   579: aload_1
    //   580: aload_3
    //   581: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   584: aload #7
    //   586: aload_0
    //   587: getfield mMargin : I
    //   590: iload #8
    //   592: iadd
    //   593: iload_2
    //   594: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   597: pop
    //   598: iinc #5, 1
    //   601: goto -> 392
    //   604: aload_0
    //   605: getfield mBarrierType : I
    //   608: istore_2
    //   609: iload_2
    //   610: ifne -> 686
    //   613: aload_1
    //   614: aload_0
    //   615: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   618: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   621: aload_0
    //   622: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   625: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   628: iconst_0
    //   629: bipush #8
    //   631: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   634: pop
    //   635: aload_1
    //   636: aload_0
    //   637: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   640: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   643: aload_0
    //   644: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   647: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   650: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   653: iconst_0
    //   654: iconst_4
    //   655: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   658: pop
    //   659: aload_1
    //   660: aload_0
    //   661: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   664: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   667: aload_0
    //   668: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   671: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   674: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   677: iconst_0
    //   678: iconst_0
    //   679: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   682: pop
    //   683: goto -> 917
    //   686: iload_2
    //   687: iconst_1
    //   688: if_icmpne -> 764
    //   691: aload_1
    //   692: aload_0
    //   693: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   696: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   699: aload_0
    //   700: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   703: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   706: iconst_0
    //   707: bipush #8
    //   709: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   712: pop
    //   713: aload_1
    //   714: aload_0
    //   715: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   718: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   721: aload_0
    //   722: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   725: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   728: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   731: iconst_0
    //   732: iconst_4
    //   733: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   736: pop
    //   737: aload_1
    //   738: aload_0
    //   739: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   742: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   745: aload_0
    //   746: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   749: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   752: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   755: iconst_0
    //   756: iconst_0
    //   757: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   760: pop
    //   761: goto -> 917
    //   764: iload_2
    //   765: iconst_2
    //   766: if_icmpne -> 842
    //   769: aload_1
    //   770: aload_0
    //   771: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   774: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   777: aload_0
    //   778: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   781: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   784: iconst_0
    //   785: bipush #8
    //   787: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   790: pop
    //   791: aload_1
    //   792: aload_0
    //   793: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   796: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   799: aload_0
    //   800: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   803: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   806: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   809: iconst_0
    //   810: iconst_4
    //   811: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   814: pop
    //   815: aload_1
    //   816: aload_0
    //   817: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   820: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   823: aload_0
    //   824: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   827: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   830: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   833: iconst_0
    //   834: iconst_0
    //   835: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   838: pop
    //   839: goto -> 917
    //   842: iload_2
    //   843: iconst_3
    //   844: if_icmpne -> 917
    //   847: aload_1
    //   848: aload_0
    //   849: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   852: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   855: aload_0
    //   856: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   859: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   862: iconst_0
    //   863: bipush #8
    //   865: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   868: pop
    //   869: aload_1
    //   870: aload_0
    //   871: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   874: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   877: aload_0
    //   878: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   881: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   884: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   887: iconst_0
    //   888: iconst_4
    //   889: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   892: pop
    //   893: aload_1
    //   894: aload_0
    //   895: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   898: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   901: aload_0
    //   902: getfield mParent : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   905: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   908: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   911: iconst_0
    //   912: iconst_0
    //   913: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   916: pop
    //   917: return
  }
  
  public boolean allowedInBarrier() {
    return true;
  }
  
  public boolean allowsGoneWidget() {
    return this.mAllowsGoneWidget;
  }
  
  public void copy(ConstraintWidget paramConstraintWidget, HashMap<ConstraintWidget, ConstraintWidget> paramHashMap) {
    super.copy(paramConstraintWidget, paramHashMap);
    paramConstraintWidget = paramConstraintWidget;
    this.mBarrierType = ((Barrier)paramConstraintWidget).mBarrierType;
    this.mAllowsGoneWidget = ((Barrier)paramConstraintWidget).mAllowsGoneWidget;
    this.mMargin = ((Barrier)paramConstraintWidget).mMargin;
  }
  
  public int getBarrierType() {
    return this.mBarrierType;
  }
  
  public int getMargin() {
    return this.mMargin;
  }
  
  protected void markWidgets() {
    for (byte b = 0; b < this.mWidgetsCount; b++) {
      ConstraintWidget constraintWidget = this.mWidgets[b];
      int i = this.mBarrierType;
      if (i == 0 || i == 1) {
        constraintWidget.setInBarrier(0, true);
      } else if (i == 2 || i == 3) {
        constraintWidget.setInBarrier(1, true);
      } 
    } 
  }
  
  public void setAllowsGoneWidget(boolean paramBoolean) {
    this.mAllowsGoneWidget = paramBoolean;
  }
  
  public void setBarrierType(int paramInt) {
    this.mBarrierType = paramInt;
  }
  
  public void setMargin(int paramInt) {
    this.mMargin = paramInt;
  }
  
  public String toString() {
    StringBuilder stringBuilder1 = new StringBuilder();
    stringBuilder1.append("[Barrier] ");
    stringBuilder1.append(getDebugName());
    stringBuilder1.append(" {");
    String str = stringBuilder1.toString();
    for (byte b = 0; b < this.mWidgetsCount; b++) {
      ConstraintWidget constraintWidget = this.mWidgets[b];
      String str1 = str;
      if (b > 0) {
        StringBuilder stringBuilder3 = new StringBuilder();
        stringBuilder3.append(str);
        stringBuilder3.append(", ");
        str1 = stringBuilder3.toString();
      } 
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(str1);
      stringBuilder.append(constraintWidget.getDebugName());
      str = stringBuilder.toString();
    } 
    StringBuilder stringBuilder2 = new StringBuilder();
    stringBuilder2.append(str);
    stringBuilder2.append("}");
    return stringBuilder2.toString();
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/widgets/Barrier.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */