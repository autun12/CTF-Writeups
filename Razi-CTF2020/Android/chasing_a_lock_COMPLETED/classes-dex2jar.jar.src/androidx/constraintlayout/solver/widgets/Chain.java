package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;

class Chain {
  private static final boolean DEBUG = false;
  
  static void applyChainConstraints(ConstraintWidgetContainer paramConstraintWidgetContainer, LinearSystem paramLinearSystem, int paramInt) {
    int i;
    ChainHead[] arrayOfChainHead;
    byte b2;
    byte b1 = 0;
    if (paramInt == 0) {
      i = paramConstraintWidgetContainer.mHorizontalChainsSize;
      arrayOfChainHead = paramConstraintWidgetContainer.mHorizontalChainsArray;
      b2 = 0;
    } else {
      b2 = 2;
      i = paramConstraintWidgetContainer.mVerticalChainsSize;
      arrayOfChainHead = paramConstraintWidgetContainer.mVerticalChainsArray;
    } 
    while (b1 < i) {
      ChainHead chainHead = arrayOfChainHead[b1];
      chainHead.define();
      applyChainConstraints(paramConstraintWidgetContainer, paramLinearSystem, paramInt, b2, chainHead);
      b1++;
    } 
  }
  
  static void applyChainConstraints(ConstraintWidgetContainer paramConstraintWidgetContainer, LinearSystem paramLinearSystem, int paramInt1, int paramInt2, ChainHead paramChainHead) {
    // Byte code:
    //   0: aload #4
    //   2: getfield mFirst : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   5: astore #5
    //   7: aload #4
    //   9: getfield mLast : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   12: astore #6
    //   14: aload #4
    //   16: getfield mFirstVisibleWidget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   19: astore #7
    //   21: aload #4
    //   23: getfield mLastVisibleWidget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   26: astore #8
    //   28: aload #4
    //   30: getfield mHead : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   33: astore #9
    //   35: aload #4
    //   37: getfield mTotalWeight : F
    //   40: fstore #10
    //   42: aload #4
    //   44: getfield mFirstMatchConstraintWidget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   47: astore #11
    //   49: aload #4
    //   51: getfield mLastMatchConstraintWidget : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   54: astore #11
    //   56: aload_0
    //   57: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   60: iload_2
    //   61: aaload
    //   62: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.WRAP_CONTENT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   65: if_acmpne -> 74
    //   68: iconst_1
    //   69: istore #12
    //   71: goto -> 77
    //   74: iconst_0
    //   75: istore #12
    //   77: iload_2
    //   78: ifne -> 136
    //   81: aload #9
    //   83: getfield mHorizontalChainStyle : I
    //   86: ifne -> 95
    //   89: iconst_1
    //   90: istore #13
    //   92: goto -> 98
    //   95: iconst_0
    //   96: istore #13
    //   98: aload #9
    //   100: getfield mHorizontalChainStyle : I
    //   103: iconst_1
    //   104: if_icmpne -> 113
    //   107: iconst_1
    //   108: istore #14
    //   110: goto -> 116
    //   113: iconst_0
    //   114: istore #14
    //   116: iload #13
    //   118: istore #15
    //   120: iload #14
    //   122: istore #16
    //   124: aload #9
    //   126: getfield mHorizontalChainStyle : I
    //   129: iconst_2
    //   130: if_icmpne -> 198
    //   133: goto -> 188
    //   136: aload #9
    //   138: getfield mVerticalChainStyle : I
    //   141: ifne -> 150
    //   144: iconst_1
    //   145: istore #13
    //   147: goto -> 153
    //   150: iconst_0
    //   151: istore #13
    //   153: aload #9
    //   155: getfield mVerticalChainStyle : I
    //   158: iconst_1
    //   159: if_icmpne -> 168
    //   162: iconst_1
    //   163: istore #14
    //   165: goto -> 171
    //   168: iconst_0
    //   169: istore #14
    //   171: iload #13
    //   173: istore #15
    //   175: iload #14
    //   177: istore #16
    //   179: aload #9
    //   181: getfield mVerticalChainStyle : I
    //   184: iconst_2
    //   185: if_icmpne -> 198
    //   188: iconst_1
    //   189: istore #17
    //   191: iload #14
    //   193: istore #16
    //   195: goto -> 205
    //   198: iconst_0
    //   199: istore #17
    //   201: iload #15
    //   203: istore #13
    //   205: aload #5
    //   207: astore #18
    //   209: iconst_0
    //   210: istore #14
    //   212: iload #13
    //   214: istore #15
    //   216: iload #14
    //   218: istore #13
    //   220: aconst_null
    //   221: astore #19
    //   223: iload #13
    //   225: ifne -> 631
    //   228: aload #18
    //   230: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   233: iload_3
    //   234: aaload
    //   235: astore #11
    //   237: iload #17
    //   239: ifeq -> 248
    //   242: iconst_1
    //   243: istore #14
    //   245: goto -> 251
    //   248: iconst_4
    //   249: istore #14
    //   251: aload #11
    //   253: invokevirtual getMargin : ()I
    //   256: istore #20
    //   258: aload #18
    //   260: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   263: iload_2
    //   264: aaload
    //   265: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   268: if_acmpne -> 287
    //   271: aload #18
    //   273: getfield mResolvedMatchConstraintDefault : [I
    //   276: iload_2
    //   277: iaload
    //   278: ifne -> 287
    //   281: iconst_1
    //   282: istore #21
    //   284: goto -> 290
    //   287: iconst_0
    //   288: istore #21
    //   290: iload #20
    //   292: istore #22
    //   294: aload #11
    //   296: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   299: ifnull -> 326
    //   302: iload #20
    //   304: istore #22
    //   306: aload #18
    //   308: aload #5
    //   310: if_acmpeq -> 326
    //   313: iload #20
    //   315: aload #11
    //   317: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   320: invokevirtual getMargin : ()I
    //   323: iadd
    //   324: istore #22
    //   326: iload #17
    //   328: ifeq -> 351
    //   331: aload #18
    //   333: aload #5
    //   335: if_acmpeq -> 351
    //   338: aload #18
    //   340: aload #7
    //   342: if_acmpeq -> 351
    //   345: iconst_5
    //   346: istore #14
    //   348: goto -> 351
    //   351: aload #11
    //   353: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   356: ifnull -> 452
    //   359: aload #18
    //   361: aload #7
    //   363: if_acmpne -> 390
    //   366: aload_1
    //   367: aload #11
    //   369: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   372: aload #11
    //   374: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   377: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   380: iload #22
    //   382: bipush #6
    //   384: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   387: goto -> 411
    //   390: aload_1
    //   391: aload #11
    //   393: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   396: aload #11
    //   398: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   401: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   404: iload #22
    //   406: bipush #8
    //   408: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   411: iload #21
    //   413: ifeq -> 427
    //   416: iload #17
    //   418: ifne -> 427
    //   421: iconst_5
    //   422: istore #14
    //   424: goto -> 427
    //   427: aload_1
    //   428: aload #11
    //   430: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   433: aload #11
    //   435: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   438: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   441: iload #22
    //   443: iload #14
    //   445: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   448: pop
    //   449: goto -> 452
    //   452: iload #12
    //   454: ifeq -> 537
    //   457: aload #18
    //   459: invokevirtual getVisibility : ()I
    //   462: bipush #8
    //   464: if_icmpeq -> 511
    //   467: aload #18
    //   469: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   472: iload_2
    //   473: aaload
    //   474: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   477: if_acmpne -> 511
    //   480: aload_1
    //   481: aload #18
    //   483: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   486: iload_3
    //   487: iconst_1
    //   488: iadd
    //   489: aaload
    //   490: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   493: aload #18
    //   495: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   498: iload_3
    //   499: aaload
    //   500: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   503: iconst_0
    //   504: iconst_5
    //   505: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   508: goto -> 511
    //   511: aload_1
    //   512: aload #18
    //   514: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   517: iload_3
    //   518: aaload
    //   519: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   522: aload_0
    //   523: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   526: iload_3
    //   527: aaload
    //   528: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   531: iconst_0
    //   532: bipush #8
    //   534: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   537: aload #18
    //   539: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   542: iload_3
    //   543: iconst_1
    //   544: iadd
    //   545: aaload
    //   546: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   549: astore #23
    //   551: aload #19
    //   553: astore #11
    //   555: aload #23
    //   557: ifnull -> 613
    //   560: aload #23
    //   562: getfield mOwner : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   565: astore #23
    //   567: aload #19
    //   569: astore #11
    //   571: aload #23
    //   573: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   576: iload_3
    //   577: aaload
    //   578: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   581: ifnull -> 613
    //   584: aload #23
    //   586: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   589: iload_3
    //   590: aaload
    //   591: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   594: getfield mOwner : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   597: aload #18
    //   599: if_acmpeq -> 609
    //   602: aload #19
    //   604: astore #11
    //   606: goto -> 613
    //   609: aload #23
    //   611: astore #11
    //   613: aload #11
    //   615: ifnull -> 625
    //   618: aload #11
    //   620: astore #18
    //   622: goto -> 628
    //   625: iconst_1
    //   626: istore #13
    //   628: goto -> 220
    //   631: aload #8
    //   633: ifnull -> 827
    //   636: aload #6
    //   638: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   641: astore #11
    //   643: iload_3
    //   644: iconst_1
    //   645: iadd
    //   646: istore #14
    //   648: aload #11
    //   650: iload #14
    //   652: aaload
    //   653: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   656: ifnull -> 827
    //   659: aload #8
    //   661: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   664: iload #14
    //   666: aaload
    //   667: astore #11
    //   669: aload #8
    //   671: getfield mListDimensionBehaviors : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   674: iload_2
    //   675: aaload
    //   676: getstatic androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT : Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    //   679: if_acmpne -> 698
    //   682: aload #8
    //   684: getfield mResolvedMatchConstraintDefault : [I
    //   687: iload_2
    //   688: iaload
    //   689: ifne -> 698
    //   692: iconst_1
    //   693: istore #13
    //   695: goto -> 701
    //   698: iconst_0
    //   699: istore #13
    //   701: iload #13
    //   703: ifeq -> 751
    //   706: iload #17
    //   708: ifne -> 751
    //   711: aload #11
    //   713: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   716: getfield mOwner : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   719: aload_0
    //   720: if_acmpne -> 751
    //   723: aload_1
    //   724: aload #11
    //   726: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   729: aload #11
    //   731: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   734: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   737: aload #11
    //   739: invokevirtual getMargin : ()I
    //   742: ineg
    //   743: iconst_5
    //   744: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   747: pop
    //   748: goto -> 793
    //   751: iload #17
    //   753: ifeq -> 793
    //   756: aload #11
    //   758: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   761: getfield mOwner : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   764: aload_0
    //   765: if_acmpne -> 793
    //   768: aload_1
    //   769: aload #11
    //   771: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   774: aload #11
    //   776: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   779: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   782: aload #11
    //   784: invokevirtual getMargin : ()I
    //   787: ineg
    //   788: iconst_4
    //   789: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   792: pop
    //   793: aload_1
    //   794: aload #11
    //   796: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   799: aload #6
    //   801: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   804: iload #14
    //   806: aaload
    //   807: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   810: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   813: aload #11
    //   815: invokevirtual getMargin : ()I
    //   818: ineg
    //   819: bipush #6
    //   821: invokevirtual addLowerThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   824: goto -> 827
    //   827: iload #12
    //   829: ifeq -> 877
    //   832: aload_0
    //   833: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   836: astore_0
    //   837: iload_3
    //   838: iconst_1
    //   839: iadd
    //   840: istore #13
    //   842: aload_1
    //   843: aload_0
    //   844: iload #13
    //   846: aaload
    //   847: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   850: aload #6
    //   852: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   855: iload #13
    //   857: aaload
    //   858: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   861: aload #6
    //   863: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   866: iload #13
    //   868: aaload
    //   869: invokevirtual getMargin : ()I
    //   872: bipush #8
    //   874: invokevirtual addGreaterThan : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   877: aload #4
    //   879: getfield mWeightedMatchConstraintsWidgets : Ljava/util/ArrayList;
    //   882: astore_0
    //   883: aload_0
    //   884: ifnull -> 1176
    //   887: aload_0
    //   888: invokevirtual size : ()I
    //   891: istore #14
    //   893: iload #14
    //   895: iconst_1
    //   896: if_icmple -> 1176
    //   899: aload #4
    //   901: getfield mHasUndefinedWeights : Z
    //   904: ifeq -> 926
    //   907: aload #4
    //   909: getfield mHasComplexMatchWeights : Z
    //   912: ifne -> 926
    //   915: aload #4
    //   917: getfield mWidgetsMatchCount : I
    //   920: i2f
    //   921: fstore #24
    //   923: goto -> 930
    //   926: fload #10
    //   928: fstore #24
    //   930: aconst_null
    //   931: astore #11
    //   933: iconst_0
    //   934: istore #13
    //   936: fconst_0
    //   937: fstore #25
    //   939: iload #13
    //   941: iload #14
    //   943: if_icmpge -> 1176
    //   946: aload_0
    //   947: iload #13
    //   949: invokevirtual get : (I)Ljava/lang/Object;
    //   952: checkcast androidx/constraintlayout/solver/widgets/ConstraintWidget
    //   955: astore #18
    //   957: aload #18
    //   959: getfield mWeight : [F
    //   962: iload_2
    //   963: faload
    //   964: fstore #10
    //   966: fload #10
    //   968: fconst_0
    //   969: fcmpg
    //   970: ifge -> 1019
    //   973: aload #4
    //   975: getfield mHasComplexMatchWeights : Z
    //   978: ifeq -> 1013
    //   981: aload_1
    //   982: aload #18
    //   984: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   987: iload_3
    //   988: iconst_1
    //   989: iadd
    //   990: aaload
    //   991: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   994: aload #18
    //   996: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   999: iload_3
    //   1000: aaload
    //   1001: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1004: iconst_0
    //   1005: iconst_4
    //   1006: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   1009: pop
    //   1010: goto -> 1056
    //   1013: fconst_1
    //   1014: fstore #10
    //   1016: goto -> 1019
    //   1019: fload #10
    //   1021: fconst_0
    //   1022: fcmpl
    //   1023: ifne -> 1063
    //   1026: aload_1
    //   1027: aload #18
    //   1029: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1032: iload_3
    //   1033: iconst_1
    //   1034: iadd
    //   1035: aaload
    //   1036: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1039: aload #18
    //   1041: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1044: iload_3
    //   1045: aaload
    //   1046: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1049: iconst_0
    //   1050: bipush #8
    //   1052: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   1055: pop
    //   1056: fload #25
    //   1058: fstore #10
    //   1060: goto -> 1166
    //   1063: aload #11
    //   1065: ifnull -> 1162
    //   1068: aload #11
    //   1070: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1073: iload_3
    //   1074: aaload
    //   1075: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1078: astore #19
    //   1080: aload #11
    //   1082: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1085: astore #11
    //   1087: iload_3
    //   1088: iconst_1
    //   1089: iadd
    //   1090: istore #12
    //   1092: aload #11
    //   1094: iload #12
    //   1096: aaload
    //   1097: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1100: astore #23
    //   1102: aload #18
    //   1104: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1107: iload_3
    //   1108: aaload
    //   1109: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1112: astore #11
    //   1114: aload #18
    //   1116: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1119: iload #12
    //   1121: aaload
    //   1122: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1125: astore #26
    //   1127: aload_1
    //   1128: invokevirtual createRow : ()Landroidx/constraintlayout/solver/ArrayRow;
    //   1131: astore #27
    //   1133: aload #27
    //   1135: fload #25
    //   1137: fload #24
    //   1139: fload #10
    //   1141: aload #19
    //   1143: aload #23
    //   1145: aload #11
    //   1147: aload #26
    //   1149: invokevirtual createRowEqualMatchDimensions : (FFFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/ArrayRow;
    //   1152: pop
    //   1153: aload_1
    //   1154: aload #27
    //   1156: invokevirtual addConstraint : (Landroidx/constraintlayout/solver/ArrayRow;)V
    //   1159: goto -> 1162
    //   1162: aload #18
    //   1164: astore #11
    //   1166: iinc #13, 1
    //   1169: fload #10
    //   1171: fstore #25
    //   1173: goto -> 939
    //   1176: aload #7
    //   1178: ifnull -> 1353
    //   1181: aload #7
    //   1183: aload #8
    //   1185: if_acmpeq -> 1193
    //   1188: iload #17
    //   1190: ifeq -> 1353
    //   1193: aload #5
    //   1195: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1198: iload_3
    //   1199: aaload
    //   1200: astore_0
    //   1201: aload #6
    //   1203: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1206: astore #4
    //   1208: iload_3
    //   1209: iconst_1
    //   1210: iadd
    //   1211: istore #13
    //   1213: aload #4
    //   1215: iload #13
    //   1217: aaload
    //   1218: astore #4
    //   1220: aload_0
    //   1221: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1224: ifnull -> 1238
    //   1227: aload_0
    //   1228: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1231: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1234: astore_0
    //   1235: goto -> 1240
    //   1238: aconst_null
    //   1239: astore_0
    //   1240: aload #4
    //   1242: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1245: ifnull -> 1261
    //   1248: aload #4
    //   1250: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1253: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1256: astore #4
    //   1258: goto -> 1264
    //   1261: aconst_null
    //   1262: astore #4
    //   1264: aload #7
    //   1266: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1269: iload_3
    //   1270: aaload
    //   1271: astore #11
    //   1273: aload #8
    //   1275: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1278: iload #13
    //   1280: aaload
    //   1281: astore #18
    //   1283: aload_0
    //   1284: ifnull -> 2412
    //   1287: aload #4
    //   1289: ifnull -> 2412
    //   1292: iload_2
    //   1293: ifne -> 1306
    //   1296: aload #9
    //   1298: getfield mHorizontalBiasPercent : F
    //   1301: fstore #10
    //   1303: goto -> 1313
    //   1306: aload #9
    //   1308: getfield mVerticalBiasPercent : F
    //   1311: fstore #10
    //   1313: aload #11
    //   1315: invokevirtual getMargin : ()I
    //   1318: istore_2
    //   1319: aload #18
    //   1321: invokevirtual getMargin : ()I
    //   1324: istore #13
    //   1326: aload_1
    //   1327: aload #11
    //   1329: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1332: aload_0
    //   1333: iload_2
    //   1334: fload #10
    //   1336: aload #4
    //   1338: aload #18
    //   1340: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1343: iload #13
    //   1345: bipush #7
    //   1347: invokevirtual addCentering : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   1350: goto -> 2412
    //   1353: iload #15
    //   1355: ifeq -> 1845
    //   1358: aload #7
    //   1360: ifnull -> 1845
    //   1363: aload #4
    //   1365: getfield mWidgetsMatchCount : I
    //   1368: ifle -> 1390
    //   1371: aload #4
    //   1373: getfield mWidgetsCount : I
    //   1376: aload #4
    //   1378: getfield mWidgetsMatchCount : I
    //   1381: if_icmpne -> 1390
    //   1384: iconst_1
    //   1385: istore #12
    //   1387: goto -> 1393
    //   1390: iconst_0
    //   1391: istore #12
    //   1393: aload #7
    //   1395: astore #4
    //   1397: aload #4
    //   1399: astore #18
    //   1401: aload #4
    //   1403: ifnull -> 2412
    //   1406: aload #4
    //   1408: getfield mNextChainWidget : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1411: iload_2
    //   1412: aaload
    //   1413: astore #11
    //   1415: aload #11
    //   1417: ifnull -> 1442
    //   1420: aload #11
    //   1422: invokevirtual getVisibility : ()I
    //   1425: bipush #8
    //   1427: if_icmpne -> 1442
    //   1430: aload #11
    //   1432: getfield mNextChainWidget : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1435: iload_2
    //   1436: aaload
    //   1437: astore #11
    //   1439: goto -> 1415
    //   1442: aload #11
    //   1444: ifnonnull -> 1460
    //   1447: aload #4
    //   1449: aload #8
    //   1451: if_acmpne -> 1457
    //   1454: goto -> 1460
    //   1457: goto -> 1824
    //   1460: aload #4
    //   1462: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1465: iload_3
    //   1466: aaload
    //   1467: astore #19
    //   1469: aload #19
    //   1471: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1474: astore #26
    //   1476: aload #19
    //   1478: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1481: ifnull -> 1497
    //   1484: aload #19
    //   1486: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1489: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1492: astore #9
    //   1494: goto -> 1500
    //   1497: aconst_null
    //   1498: astore #9
    //   1500: aload #18
    //   1502: aload #4
    //   1504: if_acmpeq -> 1523
    //   1507: aload #18
    //   1509: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1512: iload_3
    //   1513: iconst_1
    //   1514: iadd
    //   1515: aaload
    //   1516: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1519: astore_0
    //   1520: goto -> 1575
    //   1523: aload #9
    //   1525: astore_0
    //   1526: aload #4
    //   1528: aload #7
    //   1530: if_acmpne -> 1575
    //   1533: aload #9
    //   1535: astore_0
    //   1536: aload #18
    //   1538: aload #4
    //   1540: if_acmpne -> 1575
    //   1543: aload #5
    //   1545: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1548: iload_3
    //   1549: aaload
    //   1550: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1553: ifnull -> 1573
    //   1556: aload #5
    //   1558: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1561: iload_3
    //   1562: aaload
    //   1563: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1566: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1569: astore_0
    //   1570: goto -> 1575
    //   1573: aconst_null
    //   1574: astore_0
    //   1575: aload #19
    //   1577: invokevirtual getMargin : ()I
    //   1580: istore #17
    //   1582: aload #4
    //   1584: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1587: astore #9
    //   1589: iload_3
    //   1590: iconst_1
    //   1591: iadd
    //   1592: istore #22
    //   1594: aload #9
    //   1596: iload #22
    //   1598: aaload
    //   1599: invokevirtual getMargin : ()I
    //   1602: istore #14
    //   1604: aload #11
    //   1606: ifnull -> 1641
    //   1609: aload #11
    //   1611: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1614: iload_3
    //   1615: aaload
    //   1616: astore #23
    //   1618: aload #23
    //   1620: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1623: astore #9
    //   1625: aload #4
    //   1627: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1630: iload #22
    //   1632: aaload
    //   1633: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1636: astore #19
    //   1638: goto -> 1685
    //   1641: aload #6
    //   1643: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1646: iload #22
    //   1648: aaload
    //   1649: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1652: astore #23
    //   1654: aload #23
    //   1656: ifnull -> 1669
    //   1659: aload #23
    //   1661: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1664: astore #9
    //   1666: goto -> 1672
    //   1669: aconst_null
    //   1670: astore #9
    //   1672: aload #4
    //   1674: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1677: iload #22
    //   1679: aaload
    //   1680: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1683: astore #19
    //   1685: iload #14
    //   1687: istore #13
    //   1689: aload #23
    //   1691: ifnull -> 1704
    //   1694: iload #14
    //   1696: aload #23
    //   1698: invokevirtual getMargin : ()I
    //   1701: iadd
    //   1702: istore #13
    //   1704: iload #17
    //   1706: istore #14
    //   1708: aload #18
    //   1710: ifnull -> 1729
    //   1713: iload #17
    //   1715: aload #18
    //   1717: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1720: iload #22
    //   1722: aaload
    //   1723: invokevirtual getMargin : ()I
    //   1726: iadd
    //   1727: istore #14
    //   1729: aload #26
    //   1731: ifnull -> 1457
    //   1734: aload_0
    //   1735: ifnull -> 1457
    //   1738: aload #9
    //   1740: ifnull -> 1457
    //   1743: aload #19
    //   1745: ifnull -> 1457
    //   1748: aload #4
    //   1750: aload #7
    //   1752: if_acmpne -> 1767
    //   1755: aload #7
    //   1757: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1760: iload_3
    //   1761: aaload
    //   1762: invokevirtual getMargin : ()I
    //   1765: istore #14
    //   1767: aload #4
    //   1769: aload #8
    //   1771: if_acmpne -> 1790
    //   1774: aload #8
    //   1776: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1779: iload #22
    //   1781: aaload
    //   1782: invokevirtual getMargin : ()I
    //   1785: istore #13
    //   1787: goto -> 1790
    //   1790: iload #12
    //   1792: ifeq -> 1802
    //   1795: bipush #8
    //   1797: istore #17
    //   1799: goto -> 1805
    //   1802: iconst_5
    //   1803: istore #17
    //   1805: aload_1
    //   1806: aload #26
    //   1808: aload_0
    //   1809: iload #14
    //   1811: ldc 0.5
    //   1813: aload #9
    //   1815: aload #19
    //   1817: iload #13
    //   1819: iload #17
    //   1821: invokevirtual addCentering : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   1824: aload #4
    //   1826: invokevirtual getVisibility : ()I
    //   1829: bipush #8
    //   1831: if_icmpeq -> 1838
    //   1834: aload #4
    //   1836: astore #18
    //   1838: aload #11
    //   1840: astore #4
    //   1842: goto -> 1401
    //   1845: iload #16
    //   1847: ifeq -> 2412
    //   1850: aload #7
    //   1852: ifnull -> 2412
    //   1855: aload #4
    //   1857: getfield mWidgetsMatchCount : I
    //   1860: ifle -> 1882
    //   1863: aload #4
    //   1865: getfield mWidgetsCount : I
    //   1868: aload #4
    //   1870: getfield mWidgetsMatchCount : I
    //   1873: if_icmpne -> 1882
    //   1876: iconst_1
    //   1877: istore #13
    //   1879: goto -> 1885
    //   1882: iconst_0
    //   1883: istore #13
    //   1885: aload #7
    //   1887: astore #4
    //   1889: aload #4
    //   1891: astore #11
    //   1893: aload #4
    //   1895: ifnull -> 2252
    //   1898: aload #4
    //   1900: getfield mNextChainWidget : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1903: iload_2
    //   1904: aaload
    //   1905: astore_0
    //   1906: aload_0
    //   1907: ifnull -> 1929
    //   1910: aload_0
    //   1911: invokevirtual getVisibility : ()I
    //   1914: bipush #8
    //   1916: if_icmpne -> 1929
    //   1919: aload_0
    //   1920: getfield mNextChainWidget : [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    //   1923: iload_2
    //   1924: aaload
    //   1925: astore_0
    //   1926: goto -> 1906
    //   1929: aload #4
    //   1931: aload #7
    //   1933: if_acmpeq -> 2225
    //   1936: aload #4
    //   1938: aload #8
    //   1940: if_acmpeq -> 2225
    //   1943: aload_0
    //   1944: ifnull -> 2225
    //   1947: aload_0
    //   1948: aload #8
    //   1950: if_acmpne -> 1958
    //   1953: aconst_null
    //   1954: astore_0
    //   1955: goto -> 1958
    //   1958: aload #4
    //   1960: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1963: iload_3
    //   1964: aaload
    //   1965: astore #9
    //   1967: aload #9
    //   1969: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1972: astore #23
    //   1974: aload #9
    //   1976: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1979: ifnull -> 1992
    //   1982: aload #9
    //   1984: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1987: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   1990: astore #18
    //   1992: aload #11
    //   1994: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   1997: astore #18
    //   1999: iload_3
    //   2000: iconst_1
    //   2001: iadd
    //   2002: istore #22
    //   2004: aload #18
    //   2006: iload #22
    //   2008: aaload
    //   2009: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   2012: astore #26
    //   2014: aload #9
    //   2016: invokevirtual getMargin : ()I
    //   2019: istore #17
    //   2021: aload #4
    //   2023: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2026: iload #22
    //   2028: aaload
    //   2029: invokevirtual getMargin : ()I
    //   2032: istore #12
    //   2034: aload_0
    //   2035: ifnull -> 2080
    //   2038: aload_0
    //   2039: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2042: iload_3
    //   2043: aaload
    //   2044: astore #19
    //   2046: aload #19
    //   2048: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   2051: astore #18
    //   2053: aload #19
    //   2055: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2058: ifnull -> 2074
    //   2061: aload #19
    //   2063: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2066: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   2069: astore #9
    //   2071: goto -> 2120
    //   2074: aconst_null
    //   2075: astore #9
    //   2077: goto -> 2120
    //   2080: aload #8
    //   2082: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2085: iload_3
    //   2086: aaload
    //   2087: astore #19
    //   2089: aload #19
    //   2091: ifnull -> 2104
    //   2094: aload #19
    //   2096: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   2099: astore #18
    //   2101: goto -> 2107
    //   2104: aconst_null
    //   2105: astore #18
    //   2107: aload #4
    //   2109: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2112: iload #22
    //   2114: aaload
    //   2115: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   2118: astore #9
    //   2120: iload #12
    //   2122: istore #14
    //   2124: aload #19
    //   2126: ifnull -> 2139
    //   2129: iload #12
    //   2131: aload #19
    //   2133: invokevirtual getMargin : ()I
    //   2136: iadd
    //   2137: istore #14
    //   2139: iload #17
    //   2141: istore #12
    //   2143: aload #11
    //   2145: ifnull -> 2164
    //   2148: iload #17
    //   2150: aload #11
    //   2152: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2155: iload #22
    //   2157: aaload
    //   2158: invokevirtual getMargin : ()I
    //   2161: iadd
    //   2162: istore #12
    //   2164: iload #13
    //   2166: ifeq -> 2176
    //   2169: bipush #8
    //   2171: istore #17
    //   2173: goto -> 2179
    //   2176: iconst_4
    //   2177: istore #17
    //   2179: aload #23
    //   2181: ifnull -> 2222
    //   2184: aload #26
    //   2186: ifnull -> 2222
    //   2189: aload #18
    //   2191: ifnull -> 2222
    //   2194: aload #9
    //   2196: ifnull -> 2222
    //   2199: aload_1
    //   2200: aload #23
    //   2202: aload #26
    //   2204: iload #12
    //   2206: ldc 0.5
    //   2208: aload #18
    //   2210: aload #9
    //   2212: iload #14
    //   2214: iload #17
    //   2216: invokevirtual addCentering : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   2219: goto -> 2222
    //   2222: goto -> 2225
    //   2225: aload #4
    //   2227: invokevirtual getVisibility : ()I
    //   2230: bipush #8
    //   2232: if_icmpeq -> 2238
    //   2235: goto -> 2242
    //   2238: aload #11
    //   2240: astore #4
    //   2242: aload #4
    //   2244: astore #11
    //   2246: aload_0
    //   2247: astore #4
    //   2249: goto -> 1893
    //   2252: aload #7
    //   2254: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2257: iload_3
    //   2258: aaload
    //   2259: astore_0
    //   2260: aload #5
    //   2262: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2265: iload_3
    //   2266: aaload
    //   2267: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2270: astore #4
    //   2272: aload #8
    //   2274: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2277: astore #11
    //   2279: iload_3
    //   2280: iconst_1
    //   2281: iadd
    //   2282: istore_2
    //   2283: aload #11
    //   2285: iload_2
    //   2286: aaload
    //   2287: astore #11
    //   2289: aload #6
    //   2291: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2294: iload_2
    //   2295: aaload
    //   2296: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2299: astore #9
    //   2301: aload #4
    //   2303: ifnull -> 2378
    //   2306: aload #7
    //   2308: aload #8
    //   2310: if_acmpeq -> 2335
    //   2313: aload_1
    //   2314: aload_0
    //   2315: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   2318: aload #4
    //   2320: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   2323: aload_0
    //   2324: invokevirtual getMargin : ()I
    //   2327: iconst_5
    //   2328: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   2331: pop
    //   2332: goto -> 2378
    //   2335: aload #9
    //   2337: ifnull -> 2378
    //   2340: aload_1
    //   2341: aload_0
    //   2342: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   2345: aload #4
    //   2347: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   2350: aload_0
    //   2351: invokevirtual getMargin : ()I
    //   2354: ldc 0.5
    //   2356: aload #11
    //   2358: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   2361: aload #9
    //   2363: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   2366: aload #11
    //   2368: invokevirtual getMargin : ()I
    //   2371: iconst_5
    //   2372: invokevirtual addCentering : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   2375: goto -> 2378
    //   2378: aload #9
    //   2380: ifnull -> 2412
    //   2383: aload #7
    //   2385: aload #8
    //   2387: if_acmpeq -> 2412
    //   2390: aload_1
    //   2391: aload #11
    //   2393: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   2396: aload #9
    //   2398: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   2401: aload #11
    //   2403: invokevirtual getMargin : ()I
    //   2406: ineg
    //   2407: iconst_5
    //   2408: invokevirtual addEquality : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    //   2411: pop
    //   2412: iload #15
    //   2414: ifne -> 2422
    //   2417: iload #16
    //   2419: ifeq -> 2628
    //   2422: aload #7
    //   2424: ifnull -> 2628
    //   2427: aload #7
    //   2429: aload #8
    //   2431: if_acmpeq -> 2628
    //   2434: aload #7
    //   2436: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2439: iload_3
    //   2440: aaload
    //   2441: astore #9
    //   2443: aload #8
    //   2445: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2448: astore_0
    //   2449: iload_3
    //   2450: iconst_1
    //   2451: iadd
    //   2452: istore_2
    //   2453: aload_0
    //   2454: iload_2
    //   2455: aaload
    //   2456: astore #11
    //   2458: aload #9
    //   2460: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2463: ifnull -> 2479
    //   2466: aload #9
    //   2468: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2471: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   2474: astore #4
    //   2476: goto -> 2482
    //   2479: aconst_null
    //   2480: astore #4
    //   2482: aload #11
    //   2484: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2487: ifnull -> 2502
    //   2490: aload #11
    //   2492: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2495: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   2498: astore_0
    //   2499: goto -> 2504
    //   2502: aconst_null
    //   2503: astore_0
    //   2504: aload #6
    //   2506: aload #8
    //   2508: if_acmpeq -> 2539
    //   2511: aload #6
    //   2513: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2516: iload_2
    //   2517: aaload
    //   2518: astore_0
    //   2519: aload_0
    //   2520: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2523: ifnull -> 2537
    //   2526: aload_0
    //   2527: getfield mTarget : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2530: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   2533: astore_0
    //   2534: goto -> 2539
    //   2537: aconst_null
    //   2538: astore_0
    //   2539: aload #7
    //   2541: aload #8
    //   2543: if_acmpne -> 2564
    //   2546: aload #7
    //   2548: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2551: iload_3
    //   2552: aaload
    //   2553: astore #9
    //   2555: aload #7
    //   2557: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2560: iload_2
    //   2561: aaload
    //   2562: astore #11
    //   2564: aload #4
    //   2566: ifnull -> 2628
    //   2569: aload_0
    //   2570: ifnull -> 2628
    //   2573: aload #9
    //   2575: invokevirtual getMargin : ()I
    //   2578: istore_3
    //   2579: aload #8
    //   2581: ifnonnull -> 2591
    //   2584: aload #6
    //   2586: astore #18
    //   2588: goto -> 2595
    //   2591: aload #8
    //   2593: astore #18
    //   2595: aload #18
    //   2597: getfield mListAnchors : [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    //   2600: iload_2
    //   2601: aaload
    //   2602: invokevirtual getMargin : ()I
    //   2605: istore_2
    //   2606: aload_1
    //   2607: aload #9
    //   2609: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   2612: aload #4
    //   2614: iload_3
    //   2615: ldc 0.5
    //   2617: aload_0
    //   2618: aload #11
    //   2620: getfield mSolverVariable : Landroidx/constraintlayout/solver/SolverVariable;
    //   2623: iload_2
    //   2624: iconst_5
    //   2625: invokevirtual addCentering : (Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    //   2628: return
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/widgets/Chain.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */