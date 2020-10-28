package androidx.constraintlayout.motion.widget;

import android.view.View;
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.LinkedHashMap;

class MotionPaths implements Comparable<MotionPaths> {
  static final int CARTESIAN = 2;
  
  public static final boolean DEBUG = false;
  
  static final int OFF_HEIGHT = 4;
  
  static final int OFF_PATH_ROTATE = 5;
  
  static final int OFF_POSITION = 0;
  
  static final int OFF_WIDTH = 3;
  
  static final int OFF_X = 1;
  
  static final int OFF_Y = 2;
  
  public static final boolean OLD_WAY = false;
  
  static final int PERPENDICULAR = 1;
  
  static final int SCREEN = 3;
  
  public static final String TAG = "MotionPaths";
  
  static String[] names = new String[] { "position", "x", "y", "width", "height", "pathRotate" };
  
  LinkedHashMap<String, ConstraintAttribute> attributes = new LinkedHashMap<String, ConstraintAttribute>();
  
  float height;
  
  int mDrawPath = 0;
  
  Easing mKeyFrameEasing;
  
  int mMode = 0;
  
  int mPathMotionArc = Key.UNSET;
  
  float mPathRotate = Float.NaN;
  
  float mProgress = Float.NaN;
  
  double[] mTempDelta = new double[18];
  
  double[] mTempValue = new double[18];
  
  float position;
  
  float time;
  
  float width;
  
  float x;
  
  float y;
  
  public MotionPaths() {}
  
  public MotionPaths(int paramInt1, int paramInt2, KeyPosition paramKeyPosition, MotionPaths paramMotionPaths1, MotionPaths paramMotionPaths2) {
    int i = paramKeyPosition.mPositionType;
    if (i != 1) {
      if (i != 2) {
        initCartesian(paramKeyPosition, paramMotionPaths1, paramMotionPaths2);
        return;
      } 
      initScreen(paramInt1, paramInt2, paramKeyPosition, paramMotionPaths1, paramMotionPaths2);
      return;
    } 
    initPath(paramKeyPosition, paramMotionPaths1, paramMotionPaths2);
  }
  
  private boolean diff(float paramFloat1, float paramFloat2) {
    boolean bool = Float.isNaN(paramFloat1);
    boolean bool1 = true;
    boolean bool2 = true;
    if (bool || Float.isNaN(paramFloat2)) {
      if (Float.isNaN(paramFloat1) != Float.isNaN(paramFloat2)) {
        bool2 = bool1;
      } else {
        bool2 = false;
      } 
      return bool2;
    } 
    if (Math.abs(paramFloat1 - paramFloat2) <= 1.0E-6F)
      bool2 = false; 
    return bool2;
  }
  
  private static final float xRotate(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6) {
    return (paramFloat5 - paramFloat3) * paramFloat2 - (paramFloat6 - paramFloat4) * paramFloat1 + paramFloat3;
  }
  
  private static final float yRotate(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6) {
    return (paramFloat5 - paramFloat3) * paramFloat1 + (paramFloat6 - paramFloat4) * paramFloat2 + paramFloat4;
  }
  
  public void applyParameters(ConstraintSet.Constraint paramConstraint) {
    this.mKeyFrameEasing = Easing.getInterpolator(paramConstraint.motion.mTransitionEasing);
    this.mPathMotionArc = paramConstraint.motion.mPathMotionArc;
    this.mPathRotate = paramConstraint.motion.mPathRotate;
    this.mDrawPath = paramConstraint.motion.mDrawPath;
    this.mProgress = paramConstraint.propertySet.mProgress;
    for (String str : paramConstraint.mCustomConstraints.keySet()) {
      ConstraintAttribute constraintAttribute = (ConstraintAttribute)paramConstraint.mCustomConstraints.get(str);
      if (constraintAttribute.getType() != ConstraintAttribute.AttributeType.STRING_TYPE)
        this.attributes.put(str, constraintAttribute); 
    } 
  }
  
  public int compareTo(MotionPaths paramMotionPaths) {
    return Float.compare(this.position, paramMotionPaths.position);
  }
  
  void different(MotionPaths paramMotionPaths, boolean[] paramArrayOfboolean, String[] paramArrayOfString, boolean paramBoolean) {
    paramArrayOfboolean[0] = paramArrayOfboolean[0] | diff(this.position, paramMotionPaths.position);
    paramArrayOfboolean[1] = paramArrayOfboolean[1] | diff(this.x, paramMotionPaths.x) | paramBoolean;
    boolean bool = paramArrayOfboolean[2];
    paramArrayOfboolean[2] = paramBoolean | diff(this.y, paramMotionPaths.y) | bool;
    paramArrayOfboolean[3] = paramArrayOfboolean[3] | diff(this.width, paramMotionPaths.width);
    paramBoolean = paramArrayOfboolean[4];
    paramArrayOfboolean[4] = diff(this.height, paramMotionPaths.height) | paramBoolean;
  }
  
  void fillStandard(double[] paramArrayOfdouble, int[] paramArrayOfint) {
    float[] arrayOfFloat = new float[6];
    float f = this.position;
    byte b = 0;
    arrayOfFloat[0] = f;
    arrayOfFloat[1] = this.x;
    arrayOfFloat[2] = this.y;
    arrayOfFloat[3] = this.width;
    arrayOfFloat[4] = this.height;
    arrayOfFloat[5] = this.mPathRotate;
    int i;
    for (i = 0; b < paramArrayOfint.length; i = j) {
      int j = i;
      if (paramArrayOfint[b] < arrayOfFloat.length) {
        paramArrayOfdouble[i] = arrayOfFloat[paramArrayOfint[b]];
        j = i + 1;
      } 
      b++;
    } 
  }
  
  void getBounds(int[] paramArrayOfint, double[] paramArrayOfdouble, float[] paramArrayOffloat, int paramInt) {
    float f1 = this.x;
    f1 = this.y;
    float f2 = this.width;
    f1 = this.height;
    byte b = 0;
    while (b < paramArrayOfint.length) {
      float f3 = (float)paramArrayOfdouble[b];
      int i = paramArrayOfint[b];
      float f4 = f2;
      float f5 = f1;
      if (i != 1) {
        f4 = f2;
        f5 = f1;
        if (i != 2)
          if (i != 3) {
            if (i != 4) {
              f4 = f2;
              f5 = f1;
            } else {
              f5 = f3;
              f4 = f2;
            } 
          } else {
            f4 = f3;
            f5 = f1;
          }  
      } 
      b++;
      f2 = f4;
      f1 = f5;
    } 
    paramArrayOffloat[paramInt] = f2;
    paramArrayOffloat[paramInt + 1] = f1;
  }
  
  void getCenter(int[] paramArrayOfint, double[] paramArrayOfdouble, float[] paramArrayOffloat, int paramInt) {
    float f1 = this.x;
    float f2 = this.y;
    float f3 = this.width;
    float f4 = this.height;
    for (byte b = 0; b < paramArrayOfint.length; b++) {
      float f = (float)paramArrayOfdouble[b];
      int i = paramArrayOfint[b];
      if (i != 1) {
        if (i != 2) {
          if (i != 3) {
            if (i == 4)
              f4 = f; 
          } else {
            f3 = f;
          } 
        } else {
          f2 = f;
        } 
      } else {
        f1 = f;
      } 
    } 
    paramArrayOffloat[paramInt] = f1 + f3 / 2.0F + 0.0F;
    paramArrayOffloat[paramInt + 1] = f2 + f4 / 2.0F + 0.0F;
  }
  
  int getCustomData(String paramString, double[] paramArrayOfdouble, int paramInt) {
    ConstraintAttribute constraintAttribute = this.attributes.get(paramString);
    if (constraintAttribute.noOfInterpValues() == 1) {
      paramArrayOfdouble[paramInt] = constraintAttribute.getValueToInterpolate();
      return 1;
    } 
    int i = constraintAttribute.noOfInterpValues();
    float[] arrayOfFloat = new float[i];
    constraintAttribute.getValuesToInterpolate(arrayOfFloat);
    byte b = 0;
    while (b < i) {
      paramArrayOfdouble[paramInt] = arrayOfFloat[b];
      b++;
      paramInt++;
    } 
    return i;
  }
  
  int getCustomDataCount(String paramString) {
    return ((ConstraintAttribute)this.attributes.get(paramString)).noOfInterpValues();
  }
  
  void getRect(int[] paramArrayOfint, double[] paramArrayOfdouble, float[] paramArrayOffloat, int paramInt) {
    float f1 = this.x;
    float f2 = this.y;
    float f3 = this.width;
    float f4 = this.height;
    int i = 0;
    while (i < paramArrayOfint.length) {
      float f6 = (float)paramArrayOfdouble[i];
      int k = paramArrayOfint[i];
      float f7 = f1;
      float f8 = f2;
      float f9 = f3;
      float f10 = f4;
      if (k != 0)
        if (k != 1) {
          if (k != 2) {
            if (k != 3) {
              if (k != 4) {
                f7 = f1;
                f8 = f2;
                f9 = f3;
                f10 = f4;
              } else {
                f7 = f1;
                f8 = f2;
                f9 = f3;
                f10 = f6;
              } 
            } else {
              f7 = f1;
              f8 = f2;
              f9 = f6;
              f10 = f4;
            } 
          } else {
            f7 = f1;
            f8 = f6;
            f9 = f3;
            f10 = f4;
          } 
        } else {
          f10 = f4;
          f9 = f3;
          f8 = f2;
          f7 = f6;
        }  
      i++;
      f1 = f7;
      f2 = f8;
      f3 = f9;
      f4 = f10;
    } 
    float f5 = f3 + f1;
    f4 += f2;
    Float.isNaN(Float.NaN);
    Float.isNaN(Float.NaN);
    i = paramInt + 1;
    paramArrayOffloat[paramInt] = f1 + 0.0F;
    paramInt = i + 1;
    paramArrayOffloat[i] = f2 + 0.0F;
    i = paramInt + 1;
    paramArrayOffloat[paramInt] = f5 + 0.0F;
    int j = i + 1;
    paramArrayOffloat[i] = f2 + 0.0F;
    paramInt = j + 1;
    paramArrayOffloat[j] = f5 + 0.0F;
    i = paramInt + 1;
    paramArrayOffloat[paramInt] = f4 + 0.0F;
    paramArrayOffloat[i] = f1 + 0.0F;
    paramArrayOffloat[i + 1] = f4 + 0.0F;
  }
  
  boolean hasCustomData(String paramString) {
    return this.attributes.containsKey(paramString);
  }
  
  void initCartesian(KeyPosition paramKeyPosition, MotionPaths paramMotionPaths1, MotionPaths paramMotionPaths2) {
    float f1 = paramKeyPosition.mFramePosition / 100.0F;
    this.time = f1;
    this.mDrawPath = paramKeyPosition.mDrawPath;
    if (Float.isNaN(paramKeyPosition.mPercentWidth)) {
      f2 = f1;
    } else {
      f2 = paramKeyPosition.mPercentWidth;
    } 
    if (Float.isNaN(paramKeyPosition.mPercentHeight)) {
      f3 = f1;
    } else {
      f3 = paramKeyPosition.mPercentHeight;
    } 
    float f4 = paramMotionPaths2.width;
    float f5 = paramMotionPaths1.width;
    float f6 = paramMotionPaths2.height;
    float f7 = paramMotionPaths1.height;
    this.position = this.time;
    float f8 = paramMotionPaths1.x;
    float f9 = f5 / 2.0F;
    float f10 = paramMotionPaths1.y;
    float f11 = f7 / 2.0F;
    float f12 = paramMotionPaths2.x;
    float f13 = f4 / 2.0F;
    float f14 = paramMotionPaths2.y;
    float f15 = f6 / 2.0F;
    f12 = f12 + f13 - f9 + f8;
    f14 = f14 + f15 - f10 + f11;
    float f2 = (f4 - f5) * f2;
    f4 = f2 / 2.0F;
    this.x = (int)(f8 + f12 * f1 - f4);
    float f3 = (f6 - f7) * f3;
    f6 = f3 / 2.0F;
    this.y = (int)(f10 + f14 * f1 - f6);
    this.width = (int)(f5 + f2);
    this.height = (int)(f7 + f3);
    if (Float.isNaN(paramKeyPosition.mPercentX)) {
      f3 = f1;
    } else {
      f3 = paramKeyPosition.mPercentX;
    } 
    boolean bool = Float.isNaN(paramKeyPosition.mAltPercentY);
    f10 = 0.0F;
    if (bool) {
      f2 = 0.0F;
    } else {
      f2 = paramKeyPosition.mAltPercentY;
    } 
    if (!Float.isNaN(paramKeyPosition.mPercentY))
      f1 = paramKeyPosition.mPercentY; 
    if (!Float.isNaN(paramKeyPosition.mAltPercentX))
      f10 = paramKeyPosition.mAltPercentX; 
    this.mMode = 2;
    this.x = (int)(paramMotionPaths1.x + f3 * f12 + f10 * f14 - f4);
    this.y = (int)(paramMotionPaths1.y + f12 * f2 + f14 * f1 - f6);
    this.mKeyFrameEasing = Easing.getInterpolator(paramKeyPosition.mTransitionEasing);
    this.mPathMotionArc = paramKeyPosition.mPathMotionArc;
  }
  
  void initPath(KeyPosition paramKeyPosition, MotionPaths paramMotionPaths1, MotionPaths paramMotionPaths2) {
    float f1 = paramKeyPosition.mFramePosition / 100.0F;
    this.time = f1;
    this.mDrawPath = paramKeyPosition.mDrawPath;
    if (Float.isNaN(paramKeyPosition.mPercentWidth)) {
      f2 = f1;
    } else {
      f2 = paramKeyPosition.mPercentWidth;
    } 
    if (Float.isNaN(paramKeyPosition.mPercentHeight)) {
      f3 = f1;
    } else {
      f3 = paramKeyPosition.mPercentHeight;
    } 
    float f4 = paramMotionPaths2.width;
    float f5 = paramMotionPaths1.width;
    float f6 = paramMotionPaths2.height;
    float f7 = paramMotionPaths1.height;
    this.position = this.time;
    if (!Float.isNaN(paramKeyPosition.mPercentX))
      f1 = paramKeyPosition.mPercentX; 
    float f8 = paramMotionPaths1.x;
    float f9 = paramMotionPaths1.width;
    float f10 = f9 / 2.0F;
    float f11 = paramMotionPaths1.y;
    float f12 = paramMotionPaths1.height;
    float f13 = f12 / 2.0F;
    float f14 = paramMotionPaths2.x;
    float f15 = paramMotionPaths2.width / 2.0F;
    float f16 = paramMotionPaths2.y;
    float f17 = paramMotionPaths2.height / 2.0F;
    f14 = f14 + f15 - f10 + f8;
    f13 = f16 + f17 - f13 + f11;
    f16 = f14 * f1;
    f4 = (f4 - f5) * f2;
    float f2 = f4 / 2.0F;
    this.x = (int)(f8 + f16 - f2);
    f8 = f1 * f13;
    f1 = (f6 - f7) * f3;
    float f3 = f1 / 2.0F;
    this.y = (int)(f11 + f8 - f3);
    this.width = (int)(f9 + f4);
    this.height = (int)(f12 + f1);
    if (Float.isNaN(paramKeyPosition.mPercentY)) {
      f1 = 0.0F;
    } else {
      f1 = paramKeyPosition.mPercentY;
    } 
    f12 = -f13;
    this.mMode = 1;
    this.x = (int)(paramMotionPaths1.x + f16 - f2);
    this.y = (int)(paramMotionPaths1.y + f8 - f3);
    this.x += f12 * f1;
    this.y += f14 * f1;
    this.mKeyFrameEasing = Easing.getInterpolator(paramKeyPosition.mTransitionEasing);
    this.mPathMotionArc = paramKeyPosition.mPathMotionArc;
  }
  
  void initScreen(int paramInt1, int paramInt2, KeyPosition paramKeyPosition, MotionPaths paramMotionPaths1, MotionPaths paramMotionPaths2) {
    float f1 = paramKeyPosition.mFramePosition / 100.0F;
    this.time = f1;
    this.mDrawPath = paramKeyPosition.mDrawPath;
    if (Float.isNaN(paramKeyPosition.mPercentWidth)) {
      f2 = f1;
    } else {
      f2 = paramKeyPosition.mPercentWidth;
    } 
    if (Float.isNaN(paramKeyPosition.mPercentHeight)) {
      f3 = f1;
    } else {
      f3 = paramKeyPosition.mPercentHeight;
    } 
    float f4 = paramMotionPaths2.width;
    float f5 = paramMotionPaths1.width;
    float f6 = paramMotionPaths2.height;
    float f7 = paramMotionPaths1.height;
    this.position = this.time;
    float f8 = paramMotionPaths1.x;
    float f9 = f5 / 2.0F;
    float f10 = paramMotionPaths1.y;
    float f11 = f7 / 2.0F;
    float f12 = paramMotionPaths2.x;
    float f13 = f4 / 2.0F;
    float f14 = paramMotionPaths2.y;
    float f15 = f6 / 2.0F;
    float f2 = (f4 - f5) * f2;
    this.x = (int)(f8 + (f12 + f13 - f9 + f8) * f1 - f2 / 2.0F);
    float f3 = (f6 - f7) * f3;
    this.y = (int)(f10 + (f14 + f15 - f10 + f11) * f1 - f3 / 2.0F);
    this.width = (int)(f5 + f2);
    this.height = (int)(f7 + f3);
    this.mMode = 3;
    if (!Float.isNaN(paramKeyPosition.mPercentX)) {
      paramInt1 = (int)(paramInt1 - this.width);
      this.x = (int)(paramKeyPosition.mPercentX * paramInt1);
    } 
    if (!Float.isNaN(paramKeyPosition.mPercentY)) {
      paramInt1 = (int)(paramInt2 - this.height);
      this.y = (int)(paramKeyPosition.mPercentY * paramInt1);
    } 
    this.mKeyFrameEasing = Easing.getInterpolator(paramKeyPosition.mTransitionEasing);
    this.mPathMotionArc = paramKeyPosition.mPathMotionArc;
  }
  
  void setBounds(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    this.x = paramFloat1;
    this.y = paramFloat2;
    this.width = paramFloat3;
    this.height = paramFloat4;
  }
  
  void setDpDt(float paramFloat1, float paramFloat2, float[] paramArrayOffloat, int[] paramArrayOfint, double[] paramArrayOfdouble1, double[] paramArrayOfdouble2) {
    byte b = 0;
    float f1 = 0.0F;
    float f2 = 0.0F;
    float f3 = 0.0F;
    float f4;
    for (f4 = 0.0F; b < paramArrayOfint.length; f4 = f10) {
      float f6 = (float)paramArrayOfdouble1[b];
      double d = paramArrayOfdouble2[b];
      int i = paramArrayOfint[b];
      float f7 = f1;
      float f8 = f2;
      float f9 = f3;
      float f10 = f4;
      if (i != 0)
        if (i != 1) {
          if (i != 2) {
            if (i != 3) {
              if (i != 4) {
                f7 = f1;
                f8 = f2;
                f9 = f3;
                f10 = f4;
              } else {
                f7 = f1;
                f8 = f2;
                f9 = f3;
                f10 = f6;
              } 
            } else {
              f7 = f1;
              f8 = f6;
              f9 = f3;
              f10 = f4;
            } 
          } else {
            f7 = f1;
            f8 = f2;
            f9 = f6;
            f10 = f4;
          } 
        } else {
          f10 = f4;
          f9 = f3;
          f8 = f2;
          f7 = f6;
        }  
      b++;
      f1 = f7;
      f2 = f8;
      f3 = f9;
    } 
    float f5 = f1 - 0.0F * f2 / 2.0F;
    f3 -= 0.0F * f4 / 2.0F;
    paramArrayOffloat[0] = f5 * (1.0F - paramFloat1) + (f2 * 1.0F + f5) * paramFloat1 + 0.0F;
    paramArrayOffloat[1] = f3 * (1.0F - paramFloat2) + (f4 * 1.0F + f3) * paramFloat2 + 0.0F;
  }
  
  void setView(View paramView, int[] paramArrayOfint, double[] paramArrayOfdouble1, double[] paramArrayOfdouble2, double[] paramArrayOfdouble3) {
    // Byte code:
    //   0: aload_0
    //   1: getfield x : F
    //   4: fstore #6
    //   6: aload_0
    //   7: getfield y : F
    //   10: fstore #7
    //   12: aload_0
    //   13: getfield width : F
    //   16: fstore #8
    //   18: aload_0
    //   19: getfield height : F
    //   22: fstore #9
    //   24: aload_2
    //   25: arraylength
    //   26: ifeq -> 69
    //   29: aload_0
    //   30: getfield mTempValue : [D
    //   33: arraylength
    //   34: aload_2
    //   35: aload_2
    //   36: arraylength
    //   37: iconst_1
    //   38: isub
    //   39: iaload
    //   40: if_icmpgt -> 69
    //   43: aload_2
    //   44: aload_2
    //   45: arraylength
    //   46: iconst_1
    //   47: isub
    //   48: iaload
    //   49: iconst_1
    //   50: iadd
    //   51: istore #10
    //   53: aload_0
    //   54: iload #10
    //   56: newarray double
    //   58: putfield mTempValue : [D
    //   61: aload_0
    //   62: iload #10
    //   64: newarray double
    //   66: putfield mTempDelta : [D
    //   69: aload_0
    //   70: getfield mTempValue : [D
    //   73: ldc2_w NaN
    //   76: invokestatic fill : ([DD)V
    //   79: iconst_0
    //   80: istore #10
    //   82: iload #10
    //   84: aload_2
    //   85: arraylength
    //   86: if_icmpge -> 122
    //   89: aload_0
    //   90: getfield mTempValue : [D
    //   93: aload_2
    //   94: iload #10
    //   96: iaload
    //   97: aload_3
    //   98: iload #10
    //   100: daload
    //   101: dastore
    //   102: aload_0
    //   103: getfield mTempDelta : [D
    //   106: aload_2
    //   107: iload #10
    //   109: iaload
    //   110: aload #4
    //   112: iload #10
    //   114: daload
    //   115: dastore
    //   116: iinc #10, 1
    //   119: goto -> 82
    //   122: ldc NaN
    //   124: fstore #11
    //   126: iconst_0
    //   127: istore #10
    //   129: ldc NaN
    //   131: fstore #12
    //   133: fconst_0
    //   134: fstore #13
    //   136: fconst_0
    //   137: fstore #14
    //   139: fconst_0
    //   140: fstore #15
    //   142: fconst_0
    //   143: fstore #16
    //   145: aload_0
    //   146: getfield mTempValue : [D
    //   149: astore_2
    //   150: iload #10
    //   152: aload_2
    //   153: arraylength
    //   154: if_icmpge -> 658
    //   157: aload_2
    //   158: iload #10
    //   160: daload
    //   161: invokestatic isNaN : (D)Z
    //   164: istore #17
    //   166: dconst_0
    //   167: dstore #18
    //   169: iload #17
    //   171: ifeq -> 264
    //   174: fload #12
    //   176: fstore #20
    //   178: fload #13
    //   180: fstore #21
    //   182: fload #14
    //   184: fstore #22
    //   186: fload #15
    //   188: fstore #23
    //   190: fload #16
    //   192: fstore #24
    //   194: fload #6
    //   196: fstore #25
    //   198: fload #7
    //   200: fstore #26
    //   202: fload #8
    //   204: fstore #27
    //   206: fload #9
    //   208: fstore #28
    //   210: aload #5
    //   212: ifnull -> 616
    //   215: aload #5
    //   217: iload #10
    //   219: daload
    //   220: dconst_0
    //   221: dcmpl
    //   222: ifne -> 264
    //   225: fload #12
    //   227: fstore #20
    //   229: fload #13
    //   231: fstore #21
    //   233: fload #14
    //   235: fstore #22
    //   237: fload #15
    //   239: fstore #23
    //   241: fload #16
    //   243: fstore #24
    //   245: fload #6
    //   247: fstore #25
    //   249: fload #7
    //   251: fstore #26
    //   253: fload #8
    //   255: fstore #27
    //   257: fload #9
    //   259: fstore #28
    //   261: goto -> 616
    //   264: aload #5
    //   266: ifnull -> 276
    //   269: aload #5
    //   271: iload #10
    //   273: daload
    //   274: dstore #18
    //   276: aload_0
    //   277: getfield mTempValue : [D
    //   280: iload #10
    //   282: daload
    //   283: invokestatic isNaN : (D)Z
    //   286: ifeq -> 292
    //   289: goto -> 304
    //   292: aload_0
    //   293: getfield mTempValue : [D
    //   296: iload #10
    //   298: daload
    //   299: dload #18
    //   301: dadd
    //   302: dstore #18
    //   304: dload #18
    //   306: d2f
    //   307: fstore #20
    //   309: aload_0
    //   310: getfield mTempDelta : [D
    //   313: iload #10
    //   315: daload
    //   316: d2f
    //   317: fstore #21
    //   319: iload #10
    //   321: ifeq -> 580
    //   324: iload #10
    //   326: iconst_1
    //   327: if_icmpeq -> 545
    //   330: iload #10
    //   332: iconst_2
    //   333: if_icmpeq -> 506
    //   336: iload #10
    //   338: iconst_3
    //   339: if_icmpeq -> 467
    //   342: iload #10
    //   344: iconst_4
    //   345: if_icmpeq -> 428
    //   348: iload #10
    //   350: iconst_5
    //   351: if_icmpeq -> 393
    //   354: fload #12
    //   356: fstore #20
    //   358: fload #13
    //   360: fstore #21
    //   362: fload #14
    //   364: fstore #22
    //   366: fload #15
    //   368: fstore #23
    //   370: fload #16
    //   372: fstore #24
    //   374: fload #6
    //   376: fstore #25
    //   378: fload #7
    //   380: fstore #26
    //   382: fload #8
    //   384: fstore #27
    //   386: fload #9
    //   388: fstore #28
    //   390: goto -> 616
    //   393: fload #13
    //   395: fstore #21
    //   397: fload #14
    //   399: fstore #22
    //   401: fload #15
    //   403: fstore #23
    //   405: fload #16
    //   407: fstore #24
    //   409: fload #6
    //   411: fstore #25
    //   413: fload #7
    //   415: fstore #26
    //   417: fload #8
    //   419: fstore #27
    //   421: fload #9
    //   423: fstore #28
    //   425: goto -> 616
    //   428: fload #21
    //   430: fstore #24
    //   432: fload #20
    //   434: fstore #28
    //   436: fload #12
    //   438: fstore #20
    //   440: fload #13
    //   442: fstore #21
    //   444: fload #14
    //   446: fstore #22
    //   448: fload #15
    //   450: fstore #23
    //   452: fload #6
    //   454: fstore #25
    //   456: fload #7
    //   458: fstore #26
    //   460: fload #8
    //   462: fstore #27
    //   464: goto -> 616
    //   467: fload #21
    //   469: fstore #22
    //   471: fload #20
    //   473: fstore #27
    //   475: fload #12
    //   477: fstore #20
    //   479: fload #13
    //   481: fstore #21
    //   483: fload #15
    //   485: fstore #23
    //   487: fload #16
    //   489: fstore #24
    //   491: fload #6
    //   493: fstore #25
    //   495: fload #7
    //   497: fstore #26
    //   499: fload #9
    //   501: fstore #28
    //   503: goto -> 616
    //   506: fload #21
    //   508: fstore #23
    //   510: fload #20
    //   512: fstore #26
    //   514: fload #12
    //   516: fstore #20
    //   518: fload #13
    //   520: fstore #21
    //   522: fload #14
    //   524: fstore #22
    //   526: fload #16
    //   528: fstore #24
    //   530: fload #6
    //   532: fstore #25
    //   534: fload #8
    //   536: fstore #27
    //   538: fload #9
    //   540: fstore #28
    //   542: goto -> 616
    //   545: fload #20
    //   547: fstore #25
    //   549: fload #12
    //   551: fstore #20
    //   553: fload #14
    //   555: fstore #22
    //   557: fload #15
    //   559: fstore #23
    //   561: fload #16
    //   563: fstore #24
    //   565: fload #7
    //   567: fstore #26
    //   569: fload #8
    //   571: fstore #27
    //   573: fload #9
    //   575: fstore #28
    //   577: goto -> 616
    //   580: fload #9
    //   582: fstore #28
    //   584: fload #8
    //   586: fstore #27
    //   588: fload #7
    //   590: fstore #26
    //   592: fload #6
    //   594: fstore #25
    //   596: fload #16
    //   598: fstore #24
    //   600: fload #15
    //   602: fstore #23
    //   604: fload #14
    //   606: fstore #22
    //   608: fload #13
    //   610: fstore #21
    //   612: fload #12
    //   614: fstore #20
    //   616: iinc #10, 1
    //   619: fload #20
    //   621: fstore #12
    //   623: fload #21
    //   625: fstore #13
    //   627: fload #22
    //   629: fstore #14
    //   631: fload #23
    //   633: fstore #15
    //   635: fload #24
    //   637: fstore #16
    //   639: fload #25
    //   641: fstore #6
    //   643: fload #26
    //   645: fstore #7
    //   647: fload #27
    //   649: fstore #8
    //   651: fload #28
    //   653: fstore #9
    //   655: goto -> 145
    //   658: fload #12
    //   660: invokestatic isNaN : (F)Z
    //   663: ifeq -> 683
    //   666: ldc NaN
    //   668: invokestatic isNaN : (F)Z
    //   671: ifne -> 741
    //   674: aload_1
    //   675: ldc NaN
    //   677: invokevirtual setRotation : (F)V
    //   680: goto -> 741
    //   683: fload #11
    //   685: fstore #20
    //   687: ldc NaN
    //   689: invokestatic isNaN : (F)Z
    //   692: ifeq -> 698
    //   695: fconst_0
    //   696: fstore #20
    //   698: fload #14
    //   700: fconst_2
    //   701: fdiv
    //   702: fstore #21
    //   704: fload #16
    //   706: fconst_2
    //   707: fdiv
    //   708: fstore #16
    //   710: aload_1
    //   711: fload #20
    //   713: f2d
    //   714: fload #12
    //   716: f2d
    //   717: fload #15
    //   719: fload #16
    //   721: fadd
    //   722: f2d
    //   723: fload #13
    //   725: fload #21
    //   727: fadd
    //   728: f2d
    //   729: invokestatic atan2 : (DD)D
    //   732: invokestatic toDegrees : (D)D
    //   735: dadd
    //   736: dadd
    //   737: d2f
    //   738: invokevirtual setRotation : (F)V
    //   741: fload #6
    //   743: ldc_w 0.5
    //   746: fadd
    //   747: fstore #20
    //   749: fload #20
    //   751: f2i
    //   752: istore #29
    //   754: fload #7
    //   756: ldc_w 0.5
    //   759: fadd
    //   760: fstore #21
    //   762: fload #21
    //   764: f2i
    //   765: istore #30
    //   767: fload #20
    //   769: fload #8
    //   771: fadd
    //   772: f2i
    //   773: istore #31
    //   775: fload #21
    //   777: fload #9
    //   779: fadd
    //   780: f2i
    //   781: istore #32
    //   783: iload #31
    //   785: iload #29
    //   787: isub
    //   788: istore #33
    //   790: iload #32
    //   792: iload #30
    //   794: isub
    //   795: istore #34
    //   797: iload #33
    //   799: aload_1
    //   800: invokevirtual getMeasuredWidth : ()I
    //   803: if_icmpne -> 824
    //   806: iload #34
    //   808: aload_1
    //   809: invokevirtual getMeasuredHeight : ()I
    //   812: if_icmpeq -> 818
    //   815: goto -> 824
    //   818: iconst_0
    //   819: istore #10
    //   821: goto -> 827
    //   824: iconst_1
    //   825: istore #10
    //   827: iload #10
    //   829: ifeq -> 852
    //   832: aload_1
    //   833: iload #33
    //   835: ldc_w 1073741824
    //   838: invokestatic makeMeasureSpec : (II)I
    //   841: iload #34
    //   843: ldc_w 1073741824
    //   846: invokestatic makeMeasureSpec : (II)I
    //   849: invokevirtual measure : (II)V
    //   852: aload_1
    //   853: iload #29
    //   855: iload #30
    //   857: iload #31
    //   859: iload #32
    //   861: invokevirtual layout : (IIII)V
    //   864: return
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/motion/widget/MotionPaths.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */