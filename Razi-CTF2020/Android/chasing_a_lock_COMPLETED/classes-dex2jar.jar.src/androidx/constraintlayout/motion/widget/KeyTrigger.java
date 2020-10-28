package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.widget.R;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;

public class KeyTrigger extends Key {
  public static final int KEY_TYPE = 5;
  
  static final String NAME = "KeyTrigger";
  
  private static final String TAG = "KeyTrigger";
  
  RectF mCollisionRect = new RectF();
  
  private String mCross = null;
  
  private int mCurveFit = -1;
  
  private Method mFireCross;
  
  private boolean mFireCrossReset = true;
  
  private float mFireLastPos;
  
  private Method mFireNegativeCross;
  
  private boolean mFireNegativeReset = true;
  
  private Method mFirePositiveCross;
  
  private boolean mFirePositiveReset = true;
  
  private float mFireThreshold = Float.NaN;
  
  private String mNegativeCross = null;
  
  private String mPositiveCross = null;
  
  private boolean mPostLayout = false;
  
  RectF mTargetRect = new RectF();
  
  private int mTriggerCollisionId = UNSET;
  
  private View mTriggerCollisionView = null;
  
  private int mTriggerID = UNSET;
  
  private int mTriggerReceiver = UNSET;
  
  float mTriggerSlack = 0.1F;
  
  private void setUpRect(RectF paramRectF, View paramView, boolean paramBoolean) {
    paramRectF.top = paramView.getTop();
    paramRectF.bottom = paramView.getBottom();
    paramRectF.left = paramView.getLeft();
    paramRectF.right = paramView.getRight();
    if (paramBoolean)
      paramView.getMatrix().mapRect(paramRectF); 
  }
  
  public void addValues(HashMap<String, SplineSet> paramHashMap) {}
  
  public void conditionallyFire(float paramFloat, View paramView) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mTriggerCollisionId : I
    //   4: istore_3
    //   5: getstatic androidx/constraintlayout/motion/widget/KeyTrigger.UNSET : I
    //   8: istore #4
    //   10: iconst_1
    //   11: istore #5
    //   13: iload_3
    //   14: iload #4
    //   16: if_icmpeq -> 189
    //   19: aload_0
    //   20: getfield mTriggerCollisionView : Landroid/view/View;
    //   23: ifnonnull -> 44
    //   26: aload_0
    //   27: aload_2
    //   28: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   31: checkcast android/view/ViewGroup
    //   34: aload_0
    //   35: getfield mTriggerCollisionId : I
    //   38: invokevirtual findViewById : (I)Landroid/view/View;
    //   41: putfield mTriggerCollisionView : Landroid/view/View;
    //   44: aload_0
    //   45: aload_0
    //   46: getfield mCollisionRect : Landroid/graphics/RectF;
    //   49: aload_0
    //   50: getfield mTriggerCollisionView : Landroid/view/View;
    //   53: aload_0
    //   54: getfield mPostLayout : Z
    //   57: invokespecial setUpRect : (Landroid/graphics/RectF;Landroid/view/View;Z)V
    //   60: aload_0
    //   61: aload_0
    //   62: getfield mTargetRect : Landroid/graphics/RectF;
    //   65: aload_2
    //   66: aload_0
    //   67: getfield mPostLayout : Z
    //   70: invokespecial setUpRect : (Landroid/graphics/RectF;Landroid/view/View;Z)V
    //   73: aload_0
    //   74: getfield mCollisionRect : Landroid/graphics/RectF;
    //   77: aload_0
    //   78: getfield mTargetRect : Landroid/graphics/RectF;
    //   81: invokevirtual intersect : (Landroid/graphics/RectF;)Z
    //   84: ifeq -> 138
    //   87: aload_0
    //   88: getfield mFireCrossReset : Z
    //   91: ifeq -> 104
    //   94: aload_0
    //   95: iconst_0
    //   96: putfield mFireCrossReset : Z
    //   99: iconst_1
    //   100: istore_3
    //   101: goto -> 106
    //   104: iconst_0
    //   105: istore_3
    //   106: aload_0
    //   107: getfield mFirePositiveReset : Z
    //   110: ifeq -> 124
    //   113: aload_0
    //   114: iconst_0
    //   115: putfield mFirePositiveReset : Z
    //   118: iconst_1
    //   119: istore #5
    //   121: goto -> 127
    //   124: iconst_0
    //   125: istore #5
    //   127: aload_0
    //   128: iconst_1
    //   129: putfield mFireNegativeReset : Z
    //   132: iconst_0
    //   133: istore #4
    //   135: goto -> 186
    //   138: aload_0
    //   139: getfield mFireCrossReset : Z
    //   142: ifne -> 155
    //   145: aload_0
    //   146: iconst_1
    //   147: putfield mFireCrossReset : Z
    //   150: iconst_1
    //   151: istore_3
    //   152: goto -> 157
    //   155: iconst_0
    //   156: istore_3
    //   157: aload_0
    //   158: getfield mFireNegativeReset : Z
    //   161: ifeq -> 175
    //   164: aload_0
    //   165: iconst_0
    //   166: putfield mFireNegativeReset : Z
    //   169: iconst_1
    //   170: istore #4
    //   172: goto -> 178
    //   175: iconst_0
    //   176: istore #4
    //   178: aload_0
    //   179: iconst_1
    //   180: putfield mFirePositiveReset : Z
    //   183: iconst_0
    //   184: istore #5
    //   186: goto -> 404
    //   189: aload_0
    //   190: getfield mFireCrossReset : Z
    //   193: ifeq -> 229
    //   196: aload_0
    //   197: getfield mFireThreshold : F
    //   200: fstore #6
    //   202: fload_1
    //   203: fload #6
    //   205: fsub
    //   206: aload_0
    //   207: getfield mFireLastPos : F
    //   210: fload #6
    //   212: fsub
    //   213: fmul
    //   214: fconst_0
    //   215: fcmpg
    //   216: ifge -> 251
    //   219: aload_0
    //   220: iconst_0
    //   221: putfield mFireCrossReset : Z
    //   224: iconst_1
    //   225: istore_3
    //   226: goto -> 253
    //   229: fload_1
    //   230: aload_0
    //   231: getfield mFireThreshold : F
    //   234: fsub
    //   235: invokestatic abs : (F)F
    //   238: aload_0
    //   239: getfield mTriggerSlack : F
    //   242: fcmpl
    //   243: ifle -> 251
    //   246: aload_0
    //   247: iconst_1
    //   248: putfield mFireCrossReset : Z
    //   251: iconst_0
    //   252: istore_3
    //   253: aload_0
    //   254: getfield mFireNegativeReset : Z
    //   257: ifeq -> 305
    //   260: aload_0
    //   261: getfield mFireThreshold : F
    //   264: fstore #6
    //   266: fload_1
    //   267: fload #6
    //   269: fsub
    //   270: fstore #7
    //   272: aload_0
    //   273: getfield mFireLastPos : F
    //   276: fload #6
    //   278: fsub
    //   279: fload #7
    //   281: fmul
    //   282: fconst_0
    //   283: fcmpg
    //   284: ifge -> 327
    //   287: fload #7
    //   289: fconst_0
    //   290: fcmpg
    //   291: ifge -> 327
    //   294: aload_0
    //   295: iconst_0
    //   296: putfield mFireNegativeReset : Z
    //   299: iconst_1
    //   300: istore #4
    //   302: goto -> 330
    //   305: fload_1
    //   306: aload_0
    //   307: getfield mFireThreshold : F
    //   310: fsub
    //   311: invokestatic abs : (F)F
    //   314: aload_0
    //   315: getfield mTriggerSlack : F
    //   318: fcmpl
    //   319: ifle -> 327
    //   322: aload_0
    //   323: iconst_1
    //   324: putfield mFireNegativeReset : Z
    //   327: iconst_0
    //   328: istore #4
    //   330: aload_0
    //   331: getfield mFirePositiveReset : Z
    //   334: ifeq -> 379
    //   337: aload_0
    //   338: getfield mFireThreshold : F
    //   341: fstore #7
    //   343: fload_1
    //   344: fload #7
    //   346: fsub
    //   347: fstore #6
    //   349: aload_0
    //   350: getfield mFireLastPos : F
    //   353: fload #7
    //   355: fsub
    //   356: fload #6
    //   358: fmul
    //   359: fconst_0
    //   360: fcmpg
    //   361: ifge -> 401
    //   364: fload #6
    //   366: fconst_0
    //   367: fcmpl
    //   368: ifle -> 401
    //   371: aload_0
    //   372: iconst_0
    //   373: putfield mFirePositiveReset : Z
    //   376: goto -> 404
    //   379: fload_1
    //   380: aload_0
    //   381: getfield mFireThreshold : F
    //   384: fsub
    //   385: invokestatic abs : (F)F
    //   388: aload_0
    //   389: getfield mTriggerSlack : F
    //   392: fcmpl
    //   393: ifle -> 401
    //   396: aload_0
    //   397: iconst_1
    //   398: putfield mFirePositiveReset : Z
    //   401: iconst_0
    //   402: istore #5
    //   404: aload_0
    //   405: fload_1
    //   406: putfield mFireLastPos : F
    //   409: iload #4
    //   411: ifne -> 423
    //   414: iload_3
    //   415: ifne -> 423
    //   418: iload #5
    //   420: ifeq -> 440
    //   423: aload_2
    //   424: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   427: checkcast androidx/constraintlayout/motion/widget/MotionLayout
    //   430: aload_0
    //   431: getfield mTriggerID : I
    //   434: iload #5
    //   436: fload_1
    //   437: invokevirtual fireTrigger : (IZF)V
    //   440: aload_0
    //   441: getfield mTriggerReceiver : I
    //   444: getstatic androidx/constraintlayout/motion/widget/KeyTrigger.UNSET : I
    //   447: if_icmpne -> 453
    //   450: goto -> 468
    //   453: aload_2
    //   454: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   457: checkcast androidx/constraintlayout/motion/widget/MotionLayout
    //   460: aload_0
    //   461: getfield mTriggerReceiver : I
    //   464: invokevirtual findViewById : (I)Landroid/view/View;
    //   467: astore_2
    //   468: iload #4
    //   470: ifeq -> 683
    //   473: aload_0
    //   474: getfield mNegativeCross : Ljava/lang/String;
    //   477: ifnull -> 683
    //   480: aload_0
    //   481: getfield mFireNegativeCross : Ljava/lang/reflect/Method;
    //   484: ifnonnull -> 588
    //   487: aload_0
    //   488: aload_2
    //   489: invokevirtual getClass : ()Ljava/lang/Class;
    //   492: aload_0
    //   493: getfield mNegativeCross : Ljava/lang/String;
    //   496: iconst_0
    //   497: anewarray java/lang/Class
    //   500: invokevirtual getMethod : (Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   503: putfield mFireNegativeCross : Ljava/lang/reflect/Method;
    //   506: goto -> 588
    //   509: astore #8
    //   511: new java/lang/StringBuilder
    //   514: dup
    //   515: invokespecial <init> : ()V
    //   518: astore #8
    //   520: aload #8
    //   522: ldc 'Could not find method "'
    //   524: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   527: pop
    //   528: aload #8
    //   530: aload_0
    //   531: getfield mNegativeCross : Ljava/lang/String;
    //   534: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   537: pop
    //   538: aload #8
    //   540: ldc '"on class '
    //   542: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   545: pop
    //   546: aload #8
    //   548: aload_2
    //   549: invokevirtual getClass : ()Ljava/lang/Class;
    //   552: invokevirtual getSimpleName : ()Ljava/lang/String;
    //   555: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   558: pop
    //   559: aload #8
    //   561: ldc ' '
    //   563: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   566: pop
    //   567: aload #8
    //   569: aload_2
    //   570: invokestatic getName : (Landroid/view/View;)Ljava/lang/String;
    //   573: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   576: pop
    //   577: ldc 'KeyTrigger'
    //   579: aload #8
    //   581: invokevirtual toString : ()Ljava/lang/String;
    //   584: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   587: pop
    //   588: aload_0
    //   589: getfield mFireNegativeCross : Ljava/lang/reflect/Method;
    //   592: aload_2
    //   593: iconst_0
    //   594: anewarray java/lang/Object
    //   597: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   600: pop
    //   601: goto -> 683
    //   604: astore #8
    //   606: new java/lang/StringBuilder
    //   609: dup
    //   610: invokespecial <init> : ()V
    //   613: astore #8
    //   615: aload #8
    //   617: ldc 'Exception in call "'
    //   619: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   622: pop
    //   623: aload #8
    //   625: aload_0
    //   626: getfield mNegativeCross : Ljava/lang/String;
    //   629: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   632: pop
    //   633: aload #8
    //   635: ldc '"on class '
    //   637: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   640: pop
    //   641: aload #8
    //   643: aload_2
    //   644: invokevirtual getClass : ()Ljava/lang/Class;
    //   647: invokevirtual getSimpleName : ()Ljava/lang/String;
    //   650: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   653: pop
    //   654: aload #8
    //   656: ldc ' '
    //   658: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   661: pop
    //   662: aload #8
    //   664: aload_2
    //   665: invokestatic getName : (Landroid/view/View;)Ljava/lang/String;
    //   668: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   671: pop
    //   672: ldc 'KeyTrigger'
    //   674: aload #8
    //   676: invokevirtual toString : ()Ljava/lang/String;
    //   679: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   682: pop
    //   683: iload #5
    //   685: ifeq -> 898
    //   688: aload_0
    //   689: getfield mPositiveCross : Ljava/lang/String;
    //   692: ifnull -> 898
    //   695: aload_0
    //   696: getfield mFirePositiveCross : Ljava/lang/reflect/Method;
    //   699: ifnonnull -> 803
    //   702: aload_0
    //   703: aload_2
    //   704: invokevirtual getClass : ()Ljava/lang/Class;
    //   707: aload_0
    //   708: getfield mPositiveCross : Ljava/lang/String;
    //   711: iconst_0
    //   712: anewarray java/lang/Class
    //   715: invokevirtual getMethod : (Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   718: putfield mFirePositiveCross : Ljava/lang/reflect/Method;
    //   721: goto -> 803
    //   724: astore #8
    //   726: new java/lang/StringBuilder
    //   729: dup
    //   730: invokespecial <init> : ()V
    //   733: astore #8
    //   735: aload #8
    //   737: ldc 'Could not find method "'
    //   739: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   742: pop
    //   743: aload #8
    //   745: aload_0
    //   746: getfield mPositiveCross : Ljava/lang/String;
    //   749: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   752: pop
    //   753: aload #8
    //   755: ldc '"on class '
    //   757: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   760: pop
    //   761: aload #8
    //   763: aload_2
    //   764: invokevirtual getClass : ()Ljava/lang/Class;
    //   767: invokevirtual getSimpleName : ()Ljava/lang/String;
    //   770: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   773: pop
    //   774: aload #8
    //   776: ldc ' '
    //   778: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   781: pop
    //   782: aload #8
    //   784: aload_2
    //   785: invokestatic getName : (Landroid/view/View;)Ljava/lang/String;
    //   788: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   791: pop
    //   792: ldc 'KeyTrigger'
    //   794: aload #8
    //   796: invokevirtual toString : ()Ljava/lang/String;
    //   799: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   802: pop
    //   803: aload_0
    //   804: getfield mFirePositiveCross : Ljava/lang/reflect/Method;
    //   807: aload_2
    //   808: iconst_0
    //   809: anewarray java/lang/Object
    //   812: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   815: pop
    //   816: goto -> 898
    //   819: astore #8
    //   821: new java/lang/StringBuilder
    //   824: dup
    //   825: invokespecial <init> : ()V
    //   828: astore #8
    //   830: aload #8
    //   832: ldc 'Exception in call "'
    //   834: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   837: pop
    //   838: aload #8
    //   840: aload_0
    //   841: getfield mPositiveCross : Ljava/lang/String;
    //   844: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   847: pop
    //   848: aload #8
    //   850: ldc '"on class '
    //   852: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   855: pop
    //   856: aload #8
    //   858: aload_2
    //   859: invokevirtual getClass : ()Ljava/lang/Class;
    //   862: invokevirtual getSimpleName : ()Ljava/lang/String;
    //   865: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   868: pop
    //   869: aload #8
    //   871: ldc ' '
    //   873: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   876: pop
    //   877: aload #8
    //   879: aload_2
    //   880: invokestatic getName : (Landroid/view/View;)Ljava/lang/String;
    //   883: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   886: pop
    //   887: ldc 'KeyTrigger'
    //   889: aload #8
    //   891: invokevirtual toString : ()Ljava/lang/String;
    //   894: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   897: pop
    //   898: iload_3
    //   899: ifeq -> 1112
    //   902: aload_0
    //   903: getfield mCross : Ljava/lang/String;
    //   906: ifnull -> 1112
    //   909: aload_0
    //   910: getfield mFireCross : Ljava/lang/reflect/Method;
    //   913: ifnonnull -> 1017
    //   916: aload_0
    //   917: aload_2
    //   918: invokevirtual getClass : ()Ljava/lang/Class;
    //   921: aload_0
    //   922: getfield mCross : Ljava/lang/String;
    //   925: iconst_0
    //   926: anewarray java/lang/Class
    //   929: invokevirtual getMethod : (Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   932: putfield mFireCross : Ljava/lang/reflect/Method;
    //   935: goto -> 1017
    //   938: astore #8
    //   940: new java/lang/StringBuilder
    //   943: dup
    //   944: invokespecial <init> : ()V
    //   947: astore #8
    //   949: aload #8
    //   951: ldc 'Could not find method "'
    //   953: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   956: pop
    //   957: aload #8
    //   959: aload_0
    //   960: getfield mCross : Ljava/lang/String;
    //   963: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   966: pop
    //   967: aload #8
    //   969: ldc '"on class '
    //   971: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   974: pop
    //   975: aload #8
    //   977: aload_2
    //   978: invokevirtual getClass : ()Ljava/lang/Class;
    //   981: invokevirtual getSimpleName : ()Ljava/lang/String;
    //   984: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   987: pop
    //   988: aload #8
    //   990: ldc ' '
    //   992: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   995: pop
    //   996: aload #8
    //   998: aload_2
    //   999: invokestatic getName : (Landroid/view/View;)Ljava/lang/String;
    //   1002: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1005: pop
    //   1006: ldc 'KeyTrigger'
    //   1008: aload #8
    //   1010: invokevirtual toString : ()Ljava/lang/String;
    //   1013: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   1016: pop
    //   1017: aload_0
    //   1018: getfield mFireCross : Ljava/lang/reflect/Method;
    //   1021: aload_2
    //   1022: iconst_0
    //   1023: anewarray java/lang/Object
    //   1026: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   1029: pop
    //   1030: goto -> 1112
    //   1033: astore #8
    //   1035: new java/lang/StringBuilder
    //   1038: dup
    //   1039: invokespecial <init> : ()V
    //   1042: astore #8
    //   1044: aload #8
    //   1046: ldc 'Exception in call "'
    //   1048: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1051: pop
    //   1052: aload #8
    //   1054: aload_0
    //   1055: getfield mCross : Ljava/lang/String;
    //   1058: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1061: pop
    //   1062: aload #8
    //   1064: ldc '"on class '
    //   1066: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1069: pop
    //   1070: aload #8
    //   1072: aload_2
    //   1073: invokevirtual getClass : ()Ljava/lang/Class;
    //   1076: invokevirtual getSimpleName : ()Ljava/lang/String;
    //   1079: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1082: pop
    //   1083: aload #8
    //   1085: ldc ' '
    //   1087: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1090: pop
    //   1091: aload #8
    //   1093: aload_2
    //   1094: invokestatic getName : (Landroid/view/View;)Ljava/lang/String;
    //   1097: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1100: pop
    //   1101: ldc 'KeyTrigger'
    //   1103: aload #8
    //   1105: invokevirtual toString : ()Ljava/lang/String;
    //   1108: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   1111: pop
    //   1112: return
    // Exception table:
    //   from	to	target	type
    //   487	506	509	java/lang/NoSuchMethodException
    //   588	601	604	java/lang/Exception
    //   702	721	724	java/lang/NoSuchMethodException
    //   803	816	819	java/lang/Exception
    //   916	935	938	java/lang/NoSuchMethodException
    //   1017	1030	1033	java/lang/Exception
  }
  
  public void getAttributeNames(HashSet<String> paramHashSet) {}
  
  int getCurveFit() {
    return this.mCurveFit;
  }
  
  public void load(Context paramContext, AttributeSet paramAttributeSet) {
    Loader.read(this, paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.KeyTrigger), paramContext);
  }
  
  public void setValue(String paramString, Object paramObject) {}
  
  private static class Loader {
    private static final int COLLISION = 9;
    
    private static final int CROSS = 4;
    
    private static final int FRAME_POS = 8;
    
    private static final int NEGATIVE_CROSS = 1;
    
    private static final int POSITIVE_CROSS = 2;
    
    private static final int POST_LAYOUT = 10;
    
    private static final int TARGET_ID = 7;
    
    private static final int TRIGGER_ID = 6;
    
    private static final int TRIGGER_RECEIVER = 11;
    
    private static final int TRIGGER_SLACK = 5;
    
    private static SparseIntArray mAttrMap = new SparseIntArray();
    
    static {
      mAttrMap.append(R.styleable.KeyTrigger_framePosition, 8);
      mAttrMap.append(R.styleable.KeyTrigger_onCross, 4);
      mAttrMap.append(R.styleable.KeyTrigger_onNegativeCross, 1);
      mAttrMap.append(R.styleable.KeyTrigger_onPositiveCross, 2);
      mAttrMap.append(R.styleable.KeyTrigger_motionTarget, 7);
      mAttrMap.append(R.styleable.KeyTrigger_triggerId, 6);
      mAttrMap.append(R.styleable.KeyTrigger_triggerSlack, 5);
      mAttrMap.append(R.styleable.KeyTrigger_motion_triggerOnCollision, 9);
      mAttrMap.append(R.styleable.KeyTrigger_motion_postLayoutCollision, 10);
      mAttrMap.append(R.styleable.KeyTrigger_triggerReceiver, 11);
    }
    
    public static void read(KeyTrigger param1KeyTrigger, TypedArray param1TypedArray, Context param1Context) {
      int i = param1TypedArray.getIndexCount();
      for (byte b = 0;; b++) {
        if (b < i) {
          StringBuilder stringBuilder;
          int j = param1TypedArray.getIndex(b);
          switch (mAttrMap.get(j)) {
            default:
              stringBuilder = new StringBuilder();
              stringBuilder.append("unused attribute 0x");
              stringBuilder.append(Integer.toHexString(j));
              stringBuilder.append("   ");
              stringBuilder.append(mAttrMap.get(j));
              Log.e("KeyTrigger", stringBuilder.toString());
              b++;
              continue;
            case 11:
              KeyTrigger.access$702(param1KeyTrigger, param1TypedArray.getResourceId(j, param1KeyTrigger.mTriggerReceiver));
            case 10:
              KeyTrigger.access$602(param1KeyTrigger, param1TypedArray.getBoolean(j, param1KeyTrigger.mPostLayout));
              break;
            case 9:
              KeyTrigger.access$502(param1KeyTrigger, param1TypedArray.getResourceId(j, param1KeyTrigger.mTriggerCollisionId));
              break;
            case 8:
              param1KeyTrigger.mFramePosition = param1TypedArray.getInteger(j, param1KeyTrigger.mFramePosition);
              KeyTrigger.access$002(param1KeyTrigger, (param1KeyTrigger.mFramePosition + 0.5F) / 100.0F);
              break;
            case 7:
              if (MotionLayout.IS_IN_EDIT_MODE) {
                param1KeyTrigger.mTargetId = param1TypedArray.getResourceId(j, param1KeyTrigger.mTargetId);
                if (param1KeyTrigger.mTargetId == -1)
                  param1KeyTrigger.mTargetString = param1TypedArray.getString(j); 
                break;
              } 
              if ((param1TypedArray.peekValue(j)).type == 3) {
                param1KeyTrigger.mTargetString = param1TypedArray.getString(j);
                break;
              } 
              param1KeyTrigger.mTargetId = param1TypedArray.getResourceId(j, param1KeyTrigger.mTargetId);
              break;
            case 6:
              KeyTrigger.access$402(param1KeyTrigger, param1TypedArray.getResourceId(j, param1KeyTrigger.mTriggerID));
              break;
            case 5:
              param1KeyTrigger.mTriggerSlack = param1TypedArray.getFloat(j, param1KeyTrigger.mTriggerSlack);
              break;
            case 4:
              KeyTrigger.access$302(param1KeyTrigger, param1TypedArray.getString(j));
              break;
            case 2:
              KeyTrigger.access$202(param1KeyTrigger, param1TypedArray.getString(j));
              break;
            case 1:
              KeyTrigger.access$102(param1KeyTrigger, param1TypedArray.getString(j));
              break;
          } 
        } else {
          break;
        } 
      } 
    }
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/motion/widget/KeyTrigger.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */