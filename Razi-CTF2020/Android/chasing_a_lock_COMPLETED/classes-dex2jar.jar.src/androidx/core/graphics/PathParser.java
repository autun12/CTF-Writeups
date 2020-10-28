package androidx.core.graphics;

import android.graphics.Path;
import android.util.Log;
import java.util.ArrayList;

public class PathParser {
  private static final String LOGTAG = "PathParser";
  
  private static void addNode(ArrayList<PathDataNode> paramArrayList, char paramChar, float[] paramArrayOffloat) {
    paramArrayList.add(new PathDataNode(paramChar, paramArrayOffloat));
  }
  
  public static boolean canMorph(PathDataNode[] paramArrayOfPathDataNode1, PathDataNode[] paramArrayOfPathDataNode2) {
    if (paramArrayOfPathDataNode1 == null || paramArrayOfPathDataNode2 == null)
      return false; 
    if (paramArrayOfPathDataNode1.length != paramArrayOfPathDataNode2.length)
      return false; 
    for (byte b = 0; b < paramArrayOfPathDataNode1.length; b++) {
      if ((paramArrayOfPathDataNode1[b]).mType != (paramArrayOfPathDataNode2[b]).mType || (paramArrayOfPathDataNode1[b]).mParams.length != (paramArrayOfPathDataNode2[b]).mParams.length)
        return false; 
    } 
    return true;
  }
  
  static float[] copyOfRange(float[] paramArrayOffloat, int paramInt1, int paramInt2) {
    if (paramInt1 <= paramInt2) {
      int i = paramArrayOffloat.length;
      if (paramInt1 >= 0 && paramInt1 <= i) {
        paramInt2 -= paramInt1;
        i = Math.min(paramInt2, i - paramInt1);
        float[] arrayOfFloat = new float[paramInt2];
        System.arraycopy(paramArrayOffloat, paramInt1, arrayOfFloat, 0, i);
        return arrayOfFloat;
      } 
      throw new ArrayIndexOutOfBoundsException();
    } 
    throw new IllegalArgumentException();
  }
  
  public static PathDataNode[] createNodesFromPathData(String paramString) {
    if (paramString == null)
      return null; 
    ArrayList<PathDataNode> arrayList = new ArrayList();
    int i = 1;
    int j = 0;
    while (i < paramString.length()) {
      i = nextStart(paramString, i);
      String str = paramString.substring(j, i).trim();
      if (str.length() > 0) {
        float[] arrayOfFloat = getFloats(str);
        addNode(arrayList, str.charAt(0), arrayOfFloat);
      } 
      j = i;
      i++;
    } 
    if (i - j == 1 && j < paramString.length())
      addNode(arrayList, paramString.charAt(j), new float[0]); 
    return arrayList.<PathDataNode>toArray(new PathDataNode[arrayList.size()]);
  }
  
  public static Path createPathFromPathData(String paramString) {
    Path path = new Path();
    PathDataNode[] arrayOfPathDataNode = createNodesFromPathData(paramString);
    if (arrayOfPathDataNode != null)
      try {
        PathDataNode.nodesToPath(arrayOfPathDataNode, path);
        return path;
      } catch (RuntimeException runtimeException) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Error in parsing ");
        stringBuilder.append(paramString);
        throw new RuntimeException(stringBuilder.toString(), runtimeException);
      }  
    return null;
  }
  
  public static PathDataNode[] deepCopyNodes(PathDataNode[] paramArrayOfPathDataNode) {
    if (paramArrayOfPathDataNode == null)
      return null; 
    PathDataNode[] arrayOfPathDataNode = new PathDataNode[paramArrayOfPathDataNode.length];
    for (byte b = 0; b < paramArrayOfPathDataNode.length; b++)
      arrayOfPathDataNode[b] = new PathDataNode(paramArrayOfPathDataNode[b]); 
    return arrayOfPathDataNode;
  }
  
  private static void extract(String paramString, int paramInt, ExtractFloatResult paramExtractFloatResult) {
    paramExtractFloatResult.mEndWithNegOrDot = false;
    int i = paramInt;
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    while (i < paramString.length()) {
      char c = paramString.charAt(i);
      if (c != ' ') {
        if (c != 'E' && c != 'e') {
          switch (c) {
            default:
              bool1 = false;
              break;
            case '.':
              if (!bool2) {
                bool1 = false;
                bool2 = true;
                break;
              } 
              paramExtractFloatResult.mEndWithNegOrDot = true;
            case '-':
            
            case ',':
              bool1 = false;
              bool3 = true;
              break;
          } 
        } else {
          bool1 = true;
        } 
        if (bool3)
          break; 
        continue;
      } 
      i++;
    } 
    paramExtractFloatResult.mEndPosition = i;
  }
  
  private static float[] getFloats(String paramString) {
    if (paramString.charAt(0) == 'z' || paramString.charAt(0) == 'Z')
      return new float[0]; 
    try {
      float[] arrayOfFloat = new float[paramString.length()];
      ExtractFloatResult extractFloatResult = new ExtractFloatResult();
      this();
      int i = paramString.length();
      int j = 1;
      int k;
      for (k = 0; j < i; k = n) {
        extract(paramString, j, extractFloatResult);
        int m = extractFloatResult.mEndPosition;
        int n = k;
        if (j < m) {
          arrayOfFloat[k] = Float.parseFloat(paramString.substring(j, m));
          n = k + 1;
        } 
        if (extractFloatResult.mEndWithNegOrDot) {
          j = m;
          k = n;
          continue;
        } 
        j = m + 1;
      } 
      return copyOfRange(arrayOfFloat, 0, k);
    } catch (NumberFormatException numberFormatException) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("error in parsing \"");
      stringBuilder.append(paramString);
      stringBuilder.append("\"");
      throw new RuntimeException(stringBuilder.toString(), numberFormatException);
    } 
  }
  
  public static boolean interpolatePathDataNodes(PathDataNode[] paramArrayOfPathDataNode1, PathDataNode[] paramArrayOfPathDataNode2, PathDataNode[] paramArrayOfPathDataNode3, float paramFloat) {
    if (paramArrayOfPathDataNode1 != null && paramArrayOfPathDataNode2 != null && paramArrayOfPathDataNode3 != null) {
      if (paramArrayOfPathDataNode1.length == paramArrayOfPathDataNode2.length && paramArrayOfPathDataNode2.length == paramArrayOfPathDataNode3.length) {
        boolean bool = canMorph(paramArrayOfPathDataNode2, paramArrayOfPathDataNode3);
        byte b = 0;
        if (!bool)
          return false; 
        while (b < paramArrayOfPathDataNode1.length) {
          paramArrayOfPathDataNode1[b].interpolatePathDataNode(paramArrayOfPathDataNode2[b], paramArrayOfPathDataNode3[b], paramFloat);
          b++;
        } 
        return true;
      } 
      throw new IllegalArgumentException("The nodes to be interpolated and resulting nodes must have the same length");
    } 
    throw new IllegalArgumentException("The nodes to be interpolated and resulting nodes cannot be null");
  }
  
  private static int nextStart(String paramString, int paramInt) {
    while (paramInt < paramString.length()) {
      char c = paramString.charAt(paramInt);
      if (((c - 65) * (c - 90) <= 0 || (c - 97) * (c - 122) <= 0) && c != 'e' && c != 'E')
        return paramInt; 
      paramInt++;
    } 
    return paramInt;
  }
  
  public static void updateNodes(PathDataNode[] paramArrayOfPathDataNode1, PathDataNode[] paramArrayOfPathDataNode2) {
    for (byte b = 0; b < paramArrayOfPathDataNode2.length; b++) {
      (paramArrayOfPathDataNode1[b]).mType = (char)(paramArrayOfPathDataNode2[b]).mType;
      for (byte b1 = 0; b1 < (paramArrayOfPathDataNode2[b]).mParams.length; b1++)
        (paramArrayOfPathDataNode1[b]).mParams[b1] = (paramArrayOfPathDataNode2[b]).mParams[b1]; 
    } 
  }
  
  private static class ExtractFloatResult {
    int mEndPosition;
    
    boolean mEndWithNegOrDot;
  }
  
  public static class PathDataNode {
    public float[] mParams;
    
    public char mType;
    
    PathDataNode(char param1Char, float[] param1ArrayOffloat) {
      this.mType = (char)param1Char;
      this.mParams = param1ArrayOffloat;
    }
    
    PathDataNode(PathDataNode param1PathDataNode) {
      this.mType = (char)param1PathDataNode.mType;
      float[] arrayOfFloat = param1PathDataNode.mParams;
      this.mParams = PathParser.copyOfRange(arrayOfFloat, 0, arrayOfFloat.length);
    }
    
    private static void addCommand(Path param1Path, float[] param1ArrayOffloat1, char param1Char1, char param1Char2, float[] param1ArrayOffloat2) {
      // Byte code:
      //   0: aload_1
      //   1: iconst_0
      //   2: faload
      //   3: fstore #5
      //   5: aload_1
      //   6: iconst_1
      //   7: faload
      //   8: fstore #6
      //   10: aload_1
      //   11: iconst_2
      //   12: faload
      //   13: fstore #7
      //   15: aload_1
      //   16: iconst_3
      //   17: faload
      //   18: fstore #8
      //   20: aload_1
      //   21: iconst_4
      //   22: faload
      //   23: fstore #9
      //   25: aload_1
      //   26: iconst_5
      //   27: faload
      //   28: fstore #10
      //   30: fload #5
      //   32: fstore #11
      //   34: fload #6
      //   36: fstore #12
      //   38: fload #7
      //   40: fstore #13
      //   42: fload #8
      //   44: fstore #14
      //   46: iload_3
      //   47: lookupswitch default -> 216, 65 -> 336, 67 -> 313, 72 -> 291, 76 -> 232, 77 -> 232, 81 -> 269, 83 -> 269, 84 -> 232, 86 -> 291, 90 -> 238, 97 -> 336, 99 -> 313, 104 -> 291, 108 -> 232, 109 -> 232, 113 -> 269, 115 -> 269, 116 -> 232, 118 -> 291, 122 -> 238
      //   216: fload #8
      //   218: fstore #14
      //   220: fload #7
      //   222: fstore #13
      //   224: fload #6
      //   226: fstore #12
      //   228: fload #5
      //   230: fstore #11
      //   232: iconst_2
      //   233: istore #15
      //   235: goto -> 356
      //   238: aload_0
      //   239: invokevirtual close : ()V
      //   242: aload_0
      //   243: fload #9
      //   245: fload #10
      //   247: invokevirtual moveTo : (FF)V
      //   250: fload #9
      //   252: fstore #11
      //   254: fload #11
      //   256: fstore #13
      //   258: fload #10
      //   260: fstore #12
      //   262: fload #12
      //   264: fstore #14
      //   266: goto -> 232
      //   269: iconst_4
      //   270: istore #15
      //   272: fload #5
      //   274: fstore #11
      //   276: fload #6
      //   278: fstore #12
      //   280: fload #7
      //   282: fstore #13
      //   284: fload #8
      //   286: fstore #14
      //   288: goto -> 356
      //   291: iconst_1
      //   292: istore #15
      //   294: fload #5
      //   296: fstore #11
      //   298: fload #6
      //   300: fstore #12
      //   302: fload #7
      //   304: fstore #13
      //   306: fload #8
      //   308: fstore #14
      //   310: goto -> 356
      //   313: bipush #6
      //   315: istore #15
      //   317: fload #5
      //   319: fstore #11
      //   321: fload #6
      //   323: fstore #12
      //   325: fload #7
      //   327: fstore #13
      //   329: fload #8
      //   331: fstore #14
      //   333: goto -> 356
      //   336: bipush #7
      //   338: istore #15
      //   340: fload #8
      //   342: fstore #14
      //   344: fload #7
      //   346: fstore #13
      //   348: fload #6
      //   350: fstore #12
      //   352: fload #5
      //   354: fstore #11
      //   356: iconst_0
      //   357: istore #16
      //   359: iload_2
      //   360: istore #17
      //   362: iload #16
      //   364: istore_2
      //   365: iload_3
      //   366: istore #16
      //   368: iload_2
      //   369: aload #4
      //   371: arraylength
      //   372: if_icmpge -> 2141
      //   375: iload #16
      //   377: bipush #65
      //   379: if_icmpeq -> 1987
      //   382: iload #16
      //   384: bipush #67
      //   386: if_icmpeq -> 1874
      //   389: iload #16
      //   391: bipush #72
      //   393: if_icmpeq -> 1848
      //   396: iload #16
      //   398: bipush #81
      //   400: if_icmpeq -> 1757
      //   403: iload #16
      //   405: bipush #86
      //   407: if_icmpeq -> 1731
      //   410: iload #16
      //   412: bipush #97
      //   414: if_icmpeq -> 1591
      //   417: iload #16
      //   419: bipush #99
      //   421: if_icmpeq -> 1448
      //   424: iload #16
      //   426: bipush #104
      //   428: if_icmpeq -> 1420
      //   431: iload #16
      //   433: bipush #113
      //   435: if_icmpeq -> 1320
      //   438: iload #16
      //   440: bipush #118
      //   442: if_icmpeq -> 1295
      //   445: iload #16
      //   447: bipush #76
      //   449: if_icmpeq -> 1250
      //   452: iload #16
      //   454: bipush #77
      //   456: if_icmpeq -> 1180
      //   459: iload #16
      //   461: bipush #83
      //   463: if_icmpeq -> 1035
      //   466: iload #16
      //   468: bipush #84
      //   470: if_icmpeq -> 924
      //   473: iload #16
      //   475: bipush #108
      //   477: if_icmpeq -> 869
      //   480: iload #16
      //   482: bipush #109
      //   484: if_icmpeq -> 801
      //   487: iload #16
      //   489: bipush #115
      //   491: if_icmpeq -> 635
      //   494: iload #16
      //   496: bipush #116
      //   498: if_icmpeq -> 504
      //   501: goto -> 2130
      //   504: iload #17
      //   506: bipush #113
      //   508: if_icmpeq -> 544
      //   511: iload #17
      //   513: bipush #116
      //   515: if_icmpeq -> 544
      //   518: iload #17
      //   520: bipush #81
      //   522: if_icmpeq -> 544
      //   525: iload #17
      //   527: bipush #84
      //   529: if_icmpne -> 535
      //   532: goto -> 544
      //   535: fconst_0
      //   536: fstore #14
      //   538: fconst_0
      //   539: fstore #13
      //   541: goto -> 558
      //   544: fload #11
      //   546: fload #13
      //   548: fsub
      //   549: fstore #13
      //   551: fload #12
      //   553: fload #14
      //   555: fsub
      //   556: fstore #14
      //   558: iload_2
      //   559: iconst_0
      //   560: iadd
      //   561: istore #16
      //   563: aload #4
      //   565: iload #16
      //   567: faload
      //   568: fstore #6
      //   570: iload_2
      //   571: iconst_1
      //   572: iadd
      //   573: istore #17
      //   575: aload_0
      //   576: fload #13
      //   578: fload #14
      //   580: fload #6
      //   582: aload #4
      //   584: iload #17
      //   586: faload
      //   587: invokevirtual rQuadTo : (FFFF)V
      //   590: fload #11
      //   592: aload #4
      //   594: iload #16
      //   596: faload
      //   597: fadd
      //   598: fstore #6
      //   600: fload #12
      //   602: aload #4
      //   604: iload #17
      //   606: faload
      //   607: fadd
      //   608: fstore #5
      //   610: fload #14
      //   612: fload #12
      //   614: fadd
      //   615: fstore #14
      //   617: fload #13
      //   619: fload #11
      //   621: fadd
      //   622: fstore #13
      //   624: fload #5
      //   626: fstore #12
      //   628: fload #6
      //   630: fstore #11
      //   632: goto -> 501
      //   635: iload #17
      //   637: bipush #99
      //   639: if_icmpeq -> 675
      //   642: iload #17
      //   644: bipush #115
      //   646: if_icmpeq -> 675
      //   649: iload #17
      //   651: bipush #67
      //   653: if_icmpeq -> 675
      //   656: iload #17
      //   658: bipush #83
      //   660: if_icmpne -> 666
      //   663: goto -> 675
      //   666: fconst_0
      //   667: fstore #14
      //   669: fconst_0
      //   670: fstore #13
      //   672: goto -> 697
      //   675: fload #12
      //   677: fload #14
      //   679: fsub
      //   680: fstore #14
      //   682: fload #11
      //   684: fload #13
      //   686: fsub
      //   687: fstore #6
      //   689: fload #14
      //   691: fstore #13
      //   693: fload #6
      //   695: fstore #14
      //   697: iload_2
      //   698: iconst_0
      //   699: iadd
      //   700: istore #16
      //   702: aload #4
      //   704: iload #16
      //   706: faload
      //   707: fstore #5
      //   709: iload_2
      //   710: iconst_1
      //   711: iadd
      //   712: istore #18
      //   714: aload #4
      //   716: iload #18
      //   718: faload
      //   719: fstore #8
      //   721: iload_2
      //   722: iconst_2
      //   723: iadd
      //   724: istore #17
      //   726: aload #4
      //   728: iload #17
      //   730: faload
      //   731: fstore #6
      //   733: iload_2
      //   734: iconst_3
      //   735: iadd
      //   736: istore #19
      //   738: aload_0
      //   739: fload #14
      //   741: fload #13
      //   743: fload #5
      //   745: fload #8
      //   747: fload #6
      //   749: aload #4
      //   751: iload #19
      //   753: faload
      //   754: invokevirtual rCubicTo : (FFFFFF)V
      //   757: aload #4
      //   759: iload #16
      //   761: faload
      //   762: fload #11
      //   764: fadd
      //   765: fstore #5
      //   767: aload #4
      //   769: iload #18
      //   771: faload
      //   772: fload #12
      //   774: fadd
      //   775: fstore #13
      //   777: fload #11
      //   779: aload #4
      //   781: iload #17
      //   783: faload
      //   784: fadd
      //   785: fstore #14
      //   787: aload #4
      //   789: iload #19
      //   791: faload
      //   792: fstore #6
      //   794: fload #5
      //   796: fstore #11
      //   798: goto -> 1565
      //   801: iload_2
      //   802: iconst_0
      //   803: iadd
      //   804: istore #16
      //   806: fload #11
      //   808: aload #4
      //   810: iload #16
      //   812: faload
      //   813: fadd
      //   814: fstore #11
      //   816: iload_2
      //   817: iconst_1
      //   818: iadd
      //   819: istore #17
      //   821: fload #12
      //   823: aload #4
      //   825: iload #17
      //   827: faload
      //   828: fadd
      //   829: fstore #12
      //   831: iload_2
      //   832: ifle -> 852
      //   835: aload_0
      //   836: aload #4
      //   838: iload #16
      //   840: faload
      //   841: aload #4
      //   843: iload #17
      //   845: faload
      //   846: invokevirtual rLineTo : (FF)V
      //   849: goto -> 501
      //   852: aload_0
      //   853: aload #4
      //   855: iload #16
      //   857: faload
      //   858: aload #4
      //   860: iload #17
      //   862: faload
      //   863: invokevirtual rMoveTo : (FF)V
      //   866: goto -> 1239
      //   869: iload_2
      //   870: iconst_0
      //   871: iadd
      //   872: istore #16
      //   874: aload #4
      //   876: iload #16
      //   878: faload
      //   879: fstore #6
      //   881: iload_2
      //   882: iconst_1
      //   883: iadd
      //   884: istore #17
      //   886: aload_0
      //   887: fload #6
      //   889: aload #4
      //   891: iload #17
      //   893: faload
      //   894: invokevirtual rLineTo : (FF)V
      //   897: fload #11
      //   899: aload #4
      //   901: iload #16
      //   903: faload
      //   904: fadd
      //   905: fstore #11
      //   907: aload #4
      //   909: iload #17
      //   911: faload
      //   912: fstore #6
      //   914: fload #12
      //   916: fload #6
      //   918: fadd
      //   919: fstore #12
      //   921: goto -> 501
      //   924: iload #17
      //   926: bipush #113
      //   928: if_icmpeq -> 960
      //   931: iload #17
      //   933: bipush #116
      //   935: if_icmpeq -> 960
      //   938: iload #17
      //   940: bipush #81
      //   942: if_icmpeq -> 960
      //   945: fload #12
      //   947: fstore #5
      //   949: fload #11
      //   951: fstore #6
      //   953: iload #17
      //   955: bipush #84
      //   957: if_icmpne -> 978
      //   960: fload #11
      //   962: fconst_2
      //   963: fmul
      //   964: fload #13
      //   966: fsub
      //   967: fstore #6
      //   969: fload #12
      //   971: fconst_2
      //   972: fmul
      //   973: fload #14
      //   975: fsub
      //   976: fstore #5
      //   978: iload_2
      //   979: iconst_0
      //   980: iadd
      //   981: istore #16
      //   983: aload #4
      //   985: iload #16
      //   987: faload
      //   988: fstore #11
      //   990: iload_2
      //   991: iconst_1
      //   992: iadd
      //   993: istore #17
      //   995: aload_0
      //   996: fload #6
      //   998: fload #5
      //   1000: fload #11
      //   1002: aload #4
      //   1004: iload #17
      //   1006: faload
      //   1007: invokevirtual quadTo : (FFFF)V
      //   1010: aload #4
      //   1012: iload #16
      //   1014: faload
      //   1015: fstore #11
      //   1017: aload #4
      //   1019: iload #17
      //   1021: faload
      //   1022: fstore #12
      //   1024: fload #5
      //   1026: fstore #14
      //   1028: fload #6
      //   1030: fstore #13
      //   1032: goto -> 2130
      //   1035: iload #17
      //   1037: bipush #99
      //   1039: if_icmpeq -> 1071
      //   1042: iload #17
      //   1044: bipush #115
      //   1046: if_icmpeq -> 1071
      //   1049: iload #17
      //   1051: bipush #67
      //   1053: if_icmpeq -> 1071
      //   1056: fload #12
      //   1058: fstore #5
      //   1060: fload #11
      //   1062: fstore #6
      //   1064: iload #17
      //   1066: bipush #83
      //   1068: if_icmpne -> 1089
      //   1071: fload #11
      //   1073: fconst_2
      //   1074: fmul
      //   1075: fload #13
      //   1077: fsub
      //   1078: fstore #6
      //   1080: fload #12
      //   1082: fconst_2
      //   1083: fmul
      //   1084: fload #14
      //   1086: fsub
      //   1087: fstore #5
      //   1089: iload_2
      //   1090: iconst_0
      //   1091: iadd
      //   1092: istore #16
      //   1094: aload #4
      //   1096: iload #16
      //   1098: faload
      //   1099: fstore #11
      //   1101: iload_2
      //   1102: iconst_1
      //   1103: iadd
      //   1104: istore #19
      //   1106: aload #4
      //   1108: iload #19
      //   1110: faload
      //   1111: fstore #13
      //   1113: iload_2
      //   1114: iconst_2
      //   1115: iadd
      //   1116: istore #18
      //   1118: aload #4
      //   1120: iload #18
      //   1122: faload
      //   1123: fstore #12
      //   1125: iload_2
      //   1126: iconst_3
      //   1127: iadd
      //   1128: istore #17
      //   1130: aload_0
      //   1131: fload #6
      //   1133: fload #5
      //   1135: fload #11
      //   1137: fload #13
      //   1139: fload #12
      //   1141: aload #4
      //   1143: iload #17
      //   1145: faload
      //   1146: invokevirtual cubicTo : (FFFFFF)V
      //   1149: aload #4
      //   1151: iload #16
      //   1153: faload
      //   1154: fstore #11
      //   1156: aload #4
      //   1158: iload #19
      //   1160: faload
      //   1161: fstore #13
      //   1163: aload #4
      //   1165: iload #18
      //   1167: faload
      //   1168: fstore #6
      //   1170: aload #4
      //   1172: iload #17
      //   1174: faload
      //   1175: fstore #12
      //   1177: goto -> 1576
      //   1180: iload_2
      //   1181: iconst_0
      //   1182: iadd
      //   1183: istore #16
      //   1185: aload #4
      //   1187: iload #16
      //   1189: faload
      //   1190: fstore #11
      //   1192: iload_2
      //   1193: iconst_1
      //   1194: iadd
      //   1195: istore #17
      //   1197: aload #4
      //   1199: iload #17
      //   1201: faload
      //   1202: fstore #12
      //   1204: iload_2
      //   1205: ifle -> 1225
      //   1208: aload_0
      //   1209: aload #4
      //   1211: iload #16
      //   1213: faload
      //   1214: aload #4
      //   1216: iload #17
      //   1218: faload
      //   1219: invokevirtual lineTo : (FF)V
      //   1222: goto -> 501
      //   1225: aload_0
      //   1226: aload #4
      //   1228: iload #16
      //   1230: faload
      //   1231: aload #4
      //   1233: iload #17
      //   1235: faload
      //   1236: invokevirtual moveTo : (FF)V
      //   1239: fload #12
      //   1241: fstore #10
      //   1243: fload #11
      //   1245: fstore #9
      //   1247: goto -> 501
      //   1250: iload_2
      //   1251: iconst_0
      //   1252: iadd
      //   1253: istore #17
      //   1255: aload #4
      //   1257: iload #17
      //   1259: faload
      //   1260: fstore #11
      //   1262: iload_2
      //   1263: iconst_1
      //   1264: iadd
      //   1265: istore #16
      //   1267: aload_0
      //   1268: fload #11
      //   1270: aload #4
      //   1272: iload #16
      //   1274: faload
      //   1275: invokevirtual lineTo : (FF)V
      //   1278: aload #4
      //   1280: iload #17
      //   1282: faload
      //   1283: fstore #11
      //   1285: aload #4
      //   1287: iload #16
      //   1289: faload
      //   1290: fstore #12
      //   1292: goto -> 501
      //   1295: iload_2
      //   1296: iconst_0
      //   1297: iadd
      //   1298: istore #17
      //   1300: aload_0
      //   1301: fconst_0
      //   1302: aload #4
      //   1304: iload #17
      //   1306: faload
      //   1307: invokevirtual rLineTo : (FF)V
      //   1310: aload #4
      //   1312: iload #17
      //   1314: faload
      //   1315: fstore #6
      //   1317: goto -> 914
      //   1320: iload_2
      //   1321: iconst_0
      //   1322: iadd
      //   1323: istore #16
      //   1325: aload #4
      //   1327: iload #16
      //   1329: faload
      //   1330: fstore #13
      //   1332: iload_2
      //   1333: iconst_1
      //   1334: iadd
      //   1335: istore #19
      //   1337: aload #4
      //   1339: iload #19
      //   1341: faload
      //   1342: fstore #14
      //   1344: iload_2
      //   1345: iconst_2
      //   1346: iadd
      //   1347: istore #18
      //   1349: aload #4
      //   1351: iload #18
      //   1353: faload
      //   1354: fstore #6
      //   1356: iload_2
      //   1357: iconst_3
      //   1358: iadd
      //   1359: istore #17
      //   1361: aload_0
      //   1362: fload #13
      //   1364: fload #14
      //   1366: fload #6
      //   1368: aload #4
      //   1370: iload #17
      //   1372: faload
      //   1373: invokevirtual rQuadTo : (FFFF)V
      //   1376: aload #4
      //   1378: iload #16
      //   1380: faload
      //   1381: fload #11
      //   1383: fadd
      //   1384: fstore #5
      //   1386: aload #4
      //   1388: iload #19
      //   1390: faload
      //   1391: fload #12
      //   1393: fadd
      //   1394: fstore #13
      //   1396: fload #11
      //   1398: aload #4
      //   1400: iload #18
      //   1402: faload
      //   1403: fadd
      //   1404: fstore #14
      //   1406: aload #4
      //   1408: iload #17
      //   1410: faload
      //   1411: fstore #6
      //   1413: fload #5
      //   1415: fstore #11
      //   1417: goto -> 1565
      //   1420: iload_2
      //   1421: iconst_0
      //   1422: iadd
      //   1423: istore #17
      //   1425: aload_0
      //   1426: aload #4
      //   1428: iload #17
      //   1430: faload
      //   1431: fconst_0
      //   1432: invokevirtual rLineTo : (FF)V
      //   1435: fload #11
      //   1437: aload #4
      //   1439: iload #17
      //   1441: faload
      //   1442: fadd
      //   1443: fstore #11
      //   1445: goto -> 501
      //   1448: aload #4
      //   1450: iload_2
      //   1451: iconst_0
      //   1452: iadd
      //   1453: faload
      //   1454: fstore #13
      //   1456: aload #4
      //   1458: iload_2
      //   1459: iconst_1
      //   1460: iadd
      //   1461: faload
      //   1462: fstore #6
      //   1464: iload_2
      //   1465: iconst_2
      //   1466: iadd
      //   1467: istore #16
      //   1469: aload #4
      //   1471: iload #16
      //   1473: faload
      //   1474: fstore #5
      //   1476: iload_2
      //   1477: iconst_3
      //   1478: iadd
      //   1479: istore #19
      //   1481: aload #4
      //   1483: iload #19
      //   1485: faload
      //   1486: fstore #8
      //   1488: iload_2
      //   1489: iconst_4
      //   1490: iadd
      //   1491: istore #17
      //   1493: aload #4
      //   1495: iload #17
      //   1497: faload
      //   1498: fstore #14
      //   1500: iload_2
      //   1501: iconst_5
      //   1502: iadd
      //   1503: istore #18
      //   1505: aload_0
      //   1506: fload #13
      //   1508: fload #6
      //   1510: fload #5
      //   1512: fload #8
      //   1514: fload #14
      //   1516: aload #4
      //   1518: iload #18
      //   1520: faload
      //   1521: invokevirtual rCubicTo : (FFFFFF)V
      //   1524: aload #4
      //   1526: iload #16
      //   1528: faload
      //   1529: fload #11
      //   1531: fadd
      //   1532: fstore #5
      //   1534: aload #4
      //   1536: iload #19
      //   1538: faload
      //   1539: fload #12
      //   1541: fadd
      //   1542: fstore #13
      //   1544: fload #11
      //   1546: aload #4
      //   1548: iload #17
      //   1550: faload
      //   1551: fadd
      //   1552: fstore #14
      //   1554: aload #4
      //   1556: iload #18
      //   1558: faload
      //   1559: fstore #6
      //   1561: fload #5
      //   1563: fstore #11
      //   1565: fload #12
      //   1567: fload #6
      //   1569: fadd
      //   1570: fstore #12
      //   1572: fload #14
      //   1574: fstore #6
      //   1576: fload #13
      //   1578: fstore #14
      //   1580: fload #11
      //   1582: fstore #13
      //   1584: fload #6
      //   1586: fstore #11
      //   1588: goto -> 501
      //   1591: iload_2
      //   1592: iconst_5
      //   1593: iadd
      //   1594: istore #17
      //   1596: aload #4
      //   1598: iload #17
      //   1600: faload
      //   1601: fstore #5
      //   1603: iload_2
      //   1604: bipush #6
      //   1606: iadd
      //   1607: istore #16
      //   1609: aload #4
      //   1611: iload #16
      //   1613: faload
      //   1614: fstore #8
      //   1616: aload #4
      //   1618: iload_2
      //   1619: iconst_0
      //   1620: iadd
      //   1621: faload
      //   1622: fstore #14
      //   1624: aload #4
      //   1626: iload_2
      //   1627: iconst_1
      //   1628: iadd
      //   1629: faload
      //   1630: fstore #6
      //   1632: aload #4
      //   1634: iload_2
      //   1635: iconst_2
      //   1636: iadd
      //   1637: faload
      //   1638: fstore #13
      //   1640: aload #4
      //   1642: iload_2
      //   1643: iconst_3
      //   1644: iadd
      //   1645: faload
      //   1646: fconst_0
      //   1647: fcmpl
      //   1648: ifeq -> 1657
      //   1651: iconst_1
      //   1652: istore #20
      //   1654: goto -> 1660
      //   1657: iconst_0
      //   1658: istore #20
      //   1660: aload #4
      //   1662: iload_2
      //   1663: iconst_4
      //   1664: iadd
      //   1665: faload
      //   1666: fconst_0
      //   1667: fcmpl
      //   1668: ifeq -> 1677
      //   1671: iconst_1
      //   1672: istore #21
      //   1674: goto -> 1680
      //   1677: iconst_0
      //   1678: istore #21
      //   1680: aload_0
      //   1681: fload #11
      //   1683: fload #12
      //   1685: fload #5
      //   1687: fload #11
      //   1689: fadd
      //   1690: fload #8
      //   1692: fload #12
      //   1694: fadd
      //   1695: fload #14
      //   1697: fload #6
      //   1699: fload #13
      //   1701: iload #20
      //   1703: iload #21
      //   1705: invokestatic drawArc : (Landroid/graphics/Path;FFFFFFFZZ)V
      //   1708: fload #11
      //   1710: aload #4
      //   1712: iload #17
      //   1714: faload
      //   1715: fadd
      //   1716: fstore #11
      //   1718: fload #12
      //   1720: aload #4
      //   1722: iload #16
      //   1724: faload
      //   1725: fadd
      //   1726: fstore #12
      //   1728: goto -> 2122
      //   1731: iload_2
      //   1732: iconst_0
      //   1733: iadd
      //   1734: istore #17
      //   1736: aload_0
      //   1737: fload #11
      //   1739: aload #4
      //   1741: iload #17
      //   1743: faload
      //   1744: invokevirtual lineTo : (FF)V
      //   1747: aload #4
      //   1749: iload #17
      //   1751: faload
      //   1752: fstore #12
      //   1754: goto -> 2130
      //   1757: iload_2
      //   1758: istore #17
      //   1760: iload #17
      //   1762: iconst_0
      //   1763: iadd
      //   1764: istore #16
      //   1766: aload #4
      //   1768: iload #16
      //   1770: faload
      //   1771: fstore #13
      //   1773: iload #17
      //   1775: iconst_1
      //   1776: iadd
      //   1777: istore #19
      //   1779: aload #4
      //   1781: iload #19
      //   1783: faload
      //   1784: fstore #12
      //   1786: iload #17
      //   1788: iconst_2
      //   1789: iadd
      //   1790: istore #18
      //   1792: aload #4
      //   1794: iload #18
      //   1796: faload
      //   1797: fstore #11
      //   1799: iinc #17, 3
      //   1802: aload_0
      //   1803: fload #13
      //   1805: fload #12
      //   1807: fload #11
      //   1809: aload #4
      //   1811: iload #17
      //   1813: faload
      //   1814: invokevirtual quadTo : (FFFF)V
      //   1817: aload #4
      //   1819: iload #16
      //   1821: faload
      //   1822: fstore #13
      //   1824: aload #4
      //   1826: iload #19
      //   1828: faload
      //   1829: fstore #14
      //   1831: aload #4
      //   1833: iload #18
      //   1835: faload
      //   1836: fstore #11
      //   1838: aload #4
      //   1840: iload #17
      //   1842: faload
      //   1843: fstore #12
      //   1845: goto -> 2130
      //   1848: iload_2
      //   1849: iconst_0
      //   1850: iadd
      //   1851: istore #17
      //   1853: aload_0
      //   1854: aload #4
      //   1856: iload #17
      //   1858: faload
      //   1859: fload #12
      //   1861: invokevirtual lineTo : (FF)V
      //   1864: aload #4
      //   1866: iload #17
      //   1868: faload
      //   1869: fstore #11
      //   1871: goto -> 2130
      //   1874: iload_2
      //   1875: istore #17
      //   1877: aload #4
      //   1879: iload #17
      //   1881: iconst_0
      //   1882: iadd
      //   1883: faload
      //   1884: fstore #6
      //   1886: aload #4
      //   1888: iload #17
      //   1890: iconst_1
      //   1891: iadd
      //   1892: faload
      //   1893: fstore #14
      //   1895: iload #17
      //   1897: iconst_2
      //   1898: iadd
      //   1899: istore #18
      //   1901: aload #4
      //   1903: iload #18
      //   1905: faload
      //   1906: fstore #12
      //   1908: iload #17
      //   1910: iconst_3
      //   1911: iadd
      //   1912: istore #19
      //   1914: aload #4
      //   1916: iload #19
      //   1918: faload
      //   1919: fstore #13
      //   1921: iload #17
      //   1923: iconst_4
      //   1924: iadd
      //   1925: istore #16
      //   1927: aload #4
      //   1929: iload #16
      //   1931: faload
      //   1932: fstore #11
      //   1934: iinc #17, 5
      //   1937: aload_0
      //   1938: fload #6
      //   1940: fload #14
      //   1942: fload #12
      //   1944: fload #13
      //   1946: fload #11
      //   1948: aload #4
      //   1950: iload #17
      //   1952: faload
      //   1953: invokevirtual cubicTo : (FFFFFF)V
      //   1956: aload #4
      //   1958: iload #16
      //   1960: faload
      //   1961: fstore #11
      //   1963: aload #4
      //   1965: iload #17
      //   1967: faload
      //   1968: fstore #12
      //   1970: aload #4
      //   1972: iload #18
      //   1974: faload
      //   1975: fstore #13
      //   1977: aload #4
      //   1979: iload #19
      //   1981: faload
      //   1982: fstore #14
      //   1984: goto -> 2130
      //   1987: iload_2
      //   1988: istore #17
      //   1990: iload #17
      //   1992: iconst_5
      //   1993: iadd
      //   1994: istore #16
      //   1996: aload #4
      //   1998: iload #16
      //   2000: faload
      //   2001: fstore #5
      //   2003: iload #17
      //   2005: bipush #6
      //   2007: iadd
      //   2008: istore #19
      //   2010: aload #4
      //   2012: iload #19
      //   2014: faload
      //   2015: fstore #14
      //   2017: aload #4
      //   2019: iload #17
      //   2021: iconst_0
      //   2022: iadd
      //   2023: faload
      //   2024: fstore #13
      //   2026: aload #4
      //   2028: iload #17
      //   2030: iconst_1
      //   2031: iadd
      //   2032: faload
      //   2033: fstore #6
      //   2035: aload #4
      //   2037: iload #17
      //   2039: iconst_2
      //   2040: iadd
      //   2041: faload
      //   2042: fstore #8
      //   2044: aload #4
      //   2046: iload #17
      //   2048: iconst_3
      //   2049: iadd
      //   2050: faload
      //   2051: fconst_0
      //   2052: fcmpl
      //   2053: ifeq -> 2062
      //   2056: iconst_1
      //   2057: istore #20
      //   2059: goto -> 2065
      //   2062: iconst_0
      //   2063: istore #20
      //   2065: aload #4
      //   2067: iload #17
      //   2069: iconst_4
      //   2070: iadd
      //   2071: faload
      //   2072: fconst_0
      //   2073: fcmpl
      //   2074: ifeq -> 2083
      //   2077: iconst_1
      //   2078: istore #21
      //   2080: goto -> 2086
      //   2083: iconst_0
      //   2084: istore #21
      //   2086: aload_0
      //   2087: fload #11
      //   2089: fload #12
      //   2091: fload #5
      //   2093: fload #14
      //   2095: fload #13
      //   2097: fload #6
      //   2099: fload #8
      //   2101: iload #20
      //   2103: iload #21
      //   2105: invokestatic drawArc : (Landroid/graphics/Path;FFFFFFFZZ)V
      //   2108: aload #4
      //   2110: iload #16
      //   2112: faload
      //   2113: fstore #11
      //   2115: aload #4
      //   2117: iload #19
      //   2119: faload
      //   2120: fstore #12
      //   2122: fload #12
      //   2124: fstore #14
      //   2126: fload #11
      //   2128: fstore #13
      //   2130: iload_2
      //   2131: iload #15
      //   2133: iadd
      //   2134: istore_2
      //   2135: iload_3
      //   2136: istore #17
      //   2138: goto -> 365
      //   2141: aload_1
      //   2142: iconst_0
      //   2143: fload #11
      //   2145: fastore
      //   2146: aload_1
      //   2147: iconst_1
      //   2148: fload #12
      //   2150: fastore
      //   2151: aload_1
      //   2152: iconst_2
      //   2153: fload #13
      //   2155: fastore
      //   2156: aload_1
      //   2157: iconst_3
      //   2158: fload #14
      //   2160: fastore
      //   2161: aload_1
      //   2162: iconst_4
      //   2163: fload #9
      //   2165: fastore
      //   2166: aload_1
      //   2167: iconst_5
      //   2168: fload #10
      //   2170: fastore
      //   2171: return
    }
    
    private static void arcToBezier(Path param1Path, double param1Double1, double param1Double2, double param1Double3, double param1Double4, double param1Double5, double param1Double6, double param1Double7, double param1Double8, double param1Double9) {
      int i = (int)Math.ceil(Math.abs(param1Double9 * 4.0D / Math.PI));
      double d1 = Math.cos(param1Double7);
      double d2 = Math.sin(param1Double7);
      param1Double7 = Math.cos(param1Double8);
      double d3 = Math.sin(param1Double8);
      double d4 = -param1Double3;
      double d5 = d4 * d1;
      double d6 = param1Double4 * d2;
      double d7 = d4 * d2;
      double d8 = param1Double4 * d1;
      param1Double9 /= i;
      d4 = param1Double5;
      double d9 = d3 * d7 + param1Double7 * d8;
      param1Double5 = d5 * d3 - d6 * param1Double7;
      byte b = 0;
      param1Double7 = param1Double6;
      d3 = param1Double8;
      param1Double4 = d7;
      param1Double8 = d2;
      param1Double6 = d1;
      while (true) {
        d2 = param1Double3;
        if (b < i) {
          d7 = d3 + param1Double9;
          double d10 = Math.sin(d7);
          double d11 = Math.cos(d7);
          d1 = param1Double1 + d2 * param1Double6 * d11 - d6 * d10;
          double d12 = param1Double2 + d2 * param1Double8 * d11 + d8 * d10;
          d2 = d5 * d10 - d6 * d11;
          d11 = d10 * param1Double4 + d11 * d8;
          d3 = d7 - d3;
          d10 = Math.tan(d3 / 2.0D);
          d3 = Math.sin(d3) * (Math.sqrt(d10 * 3.0D * d10 + 4.0D) - 1.0D) / 3.0D;
          param1Path.rLineTo(0.0F, 0.0F);
          param1Path.cubicTo((float)(d4 + param1Double5 * d3), (float)(param1Double7 + d9 * d3), (float)(d1 - d3 * d2), (float)(d12 - d3 * d11), (float)d1, (float)d12);
          b++;
          param1Double7 = d12;
          d3 = d7;
          d9 = d11;
          param1Double5 = d2;
          d4 = d1;
          continue;
        } 
        break;
      } 
    }
    
    private static void drawArc(Path param1Path, float param1Float1, float param1Float2, float param1Float3, float param1Float4, float param1Float5, float param1Float6, float param1Float7, boolean param1Boolean1, boolean param1Boolean2) {
      double d1 = Math.toRadians(param1Float7);
      double d2 = Math.cos(d1);
      double d3 = Math.sin(d1);
      double d4 = param1Float1;
      double d5 = param1Float2;
      double d6 = param1Float5;
      double d7 = (d4 * d2 + d5 * d3) / d6;
      double d8 = -param1Float1;
      double d9 = param1Float6;
      double d10 = (d8 * d3 + d5 * d2) / d9;
      double d11 = param1Float3;
      d8 = param1Float4;
      double d12 = (d11 * d2 + d8 * d3) / d6;
      double d13 = (-param1Float3 * d3 + d8 * d2) / d9;
      double d14 = d7 - d12;
      double d15 = d10 - d13;
      d11 = (d7 + d12) / 2.0D;
      d8 = (d10 + d13) / 2.0D;
      double d16 = d14 * d14 + d15 * d15;
      if (d16 == 0.0D) {
        Log.w("PathParser", " Points are coincident");
        return;
      } 
      double d17 = 1.0D / d16 - 0.25D;
      if (d17 < 0.0D) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Points are too far apart ");
        stringBuilder.append(d16);
        Log.w("PathParser", stringBuilder.toString());
        float f = (float)(Math.sqrt(d16) / 1.99999D);
        drawArc(param1Path, param1Float1, param1Float2, param1Float3, param1Float4, param1Float5 * f, param1Float6 * f, param1Float7, param1Boolean1, param1Boolean2);
        return;
      } 
      d16 = Math.sqrt(d17);
      d14 *= d16;
      d15 = d16 * d15;
      if (param1Boolean1 == param1Boolean2) {
        d11 -= d15;
        d8 += d14;
      } else {
        d11 += d15;
        d8 -= d14;
      } 
      d15 = Math.atan2(d10 - d8, d7 - d11);
      d10 = Math.atan2(d13 - d8, d12 - d11) - d15;
      int i = d10 cmp 0.0D;
      if (i >= 0) {
        param1Boolean1 = true;
      } else {
        param1Boolean1 = false;
      } 
      d7 = d10;
      if (param1Boolean2 != param1Boolean1)
        if (i > 0) {
          d7 = d10 - 6.283185307179586D;
        } else {
          d7 = d10 + 6.283185307179586D;
        }  
      d11 *= d6;
      d8 *= d9;
      arcToBezier(param1Path, d11 * d2 - d8 * d3, d11 * d3 + d8 * d2, d6, d9, d4, d5, d1, d15, d7);
    }
    
    public static void nodesToPath(PathDataNode[] param1ArrayOfPathDataNode, Path param1Path) {
      float[] arrayOfFloat = new float[6];
      char c1 = 'm';
      byte b = 0;
      char c2;
      for (c2 = c1; b < param1ArrayOfPathDataNode.length; c2 = c1) {
        addCommand(param1Path, arrayOfFloat, c2, (param1ArrayOfPathDataNode[b]).mType, (param1ArrayOfPathDataNode[b]).mParams);
        c1 = (param1ArrayOfPathDataNode[b]).mType;
        b++;
      } 
    }
    
    public void interpolatePathDataNode(PathDataNode param1PathDataNode1, PathDataNode param1PathDataNode2, float param1Float) {
      this.mType = (char)param1PathDataNode1.mType;
      byte b = 0;
      while (true) {
        float[] arrayOfFloat = param1PathDataNode1.mParams;
        if (b < arrayOfFloat.length) {
          this.mParams[b] = arrayOfFloat[b] * (1.0F - param1Float) + param1PathDataNode2.mParams[b] * param1Float;
          b++;
          continue;
        } 
        break;
      } 
    }
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/core/graphics/PathParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */