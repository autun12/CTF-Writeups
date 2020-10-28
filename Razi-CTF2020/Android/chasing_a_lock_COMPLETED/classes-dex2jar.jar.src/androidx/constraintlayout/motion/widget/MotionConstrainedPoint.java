package androidx.constraintlayout.motion.widget;

import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;

class MotionConstrainedPoint implements Comparable<MotionConstrainedPoint> {
  static final int CARTESIAN = 2;
  
  public static final boolean DEBUG = false;
  
  static final int PERPENDICULAR = 1;
  
  public static final String TAG = "MotionPaths";
  
  static String[] names = new String[] { "position", "x", "y", "width", "height", "pathRotate" };
  
  private float alpha = 1.0F;
  
  private boolean applyElevation = false;
  
  LinkedHashMap<String, ConstraintAttribute> attributes = new LinkedHashMap<String, ConstraintAttribute>();
  
  private float elevation = 0.0F;
  
  private float height;
  
  private int mDrawPath = 0;
  
  private Easing mKeyFrameEasing;
  
  int mMode = 0;
  
  private float mPathRotate = Float.NaN;
  
  private float mPivotX = Float.NaN;
  
  private float mPivotY = Float.NaN;
  
  private float mProgress = Float.NaN;
  
  double[] mTempDelta = new double[18];
  
  double[] mTempValue = new double[18];
  
  int mVisibilityMode = 0;
  
  private float position;
  
  private float rotation = 0.0F;
  
  private float rotationX = 0.0F;
  
  public float rotationY = 0.0F;
  
  private float scaleX = 1.0F;
  
  private float scaleY = 1.0F;
  
  private float translationX = 0.0F;
  
  private float translationY = 0.0F;
  
  private float translationZ = 0.0F;
  
  int visibility;
  
  private float width;
  
  private float x;
  
  private float y;
  
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
  
  public void addValues(HashMap<String, SplineSet> paramHashMap, int paramInt) {
    for (String str : paramHashMap.keySet()) {
      StringBuilder stringBuilder1;
      SplineSet splineSet = paramHashMap.get(str);
      byte b = -1;
      switch (str.hashCode()) {
        case 92909918:
          if (str.equals("alpha"))
            b = 0; 
          break;
        case 37232917:
          if (str.equals("transitionPathRotate"))
            b = 7; 
          break;
        case -4379043:
          if (str.equals("elevation"))
            b = 1; 
          break;
        case -40300674:
          if (str.equals("rotation"))
            b = 2; 
          break;
        case -760884509:
          if (str.equals("transformPivotY"))
            b = 6; 
          break;
        case -760884510:
          if (str.equals("transformPivotX"))
            b = 5; 
          break;
        case -908189617:
          if (str.equals("scaleY"))
            b = 10; 
          break;
        case -908189618:
          if (str.equals("scaleX"))
            b = 9; 
          break;
        case -1001078227:
          if (str.equals("progress"))
            b = 8; 
          break;
        case -1225497655:
          if (str.equals("translationZ"))
            b = 13; 
          break;
        case -1225497656:
          if (str.equals("translationY"))
            b = 12; 
          break;
        case -1225497657:
          if (str.equals("translationX"))
            b = 11; 
          break;
        case -1249320805:
          if (str.equals("rotationY"))
            b = 4; 
          break;
        case -1249320806:
          if (str.equals("rotationX"))
            b = 3; 
          break;
      } 
      float f1 = 1.0F;
      float f2 = 0.0F;
      float f3 = 0.0F;
      float f4 = 0.0F;
      float f5 = 0.0F;
      float f6 = 0.0F;
      float f7 = 0.0F;
      float f8 = 0.0F;
      float f9 = 0.0F;
      float f10 = 0.0F;
      float f11 = 0.0F;
      float f12 = 0.0F;
      switch (b) {
        default:
          if (str.startsWith("CUSTOM")) {
            StringBuilder stringBuilder;
            String str1 = str.split(",")[1];
            if (this.attributes.containsKey(str1)) {
              ConstraintAttribute constraintAttribute = this.attributes.get(str1);
              if (splineSet instanceof SplineSet.CustomSet) {
                ((SplineSet.CustomSet)splineSet).setPoint(paramInt, constraintAttribute);
                continue;
              } 
              stringBuilder = new StringBuilder();
              stringBuilder.append(str);
              stringBuilder.append(" splineSet not a CustomSet frame = ");
              stringBuilder.append(paramInt);
              stringBuilder.append(", value");
              stringBuilder.append(constraintAttribute.getValueToInterpolate());
              stringBuilder.append(splineSet);
              Log.e("MotionPaths", stringBuilder.toString());
              continue;
            } 
            stringBuilder1 = new StringBuilder();
            stringBuilder1.append("UNKNOWN customName ");
            stringBuilder1.append((String)stringBuilder);
            Log.e("MotionPaths", stringBuilder1.toString());
            continue;
          } 
          break;
        case 13:
          if (Float.isNaN(this.translationZ)) {
            f1 = f12;
          } else {
            f1 = this.translationZ;
          } 
          splineSet.setPoint(paramInt, f1);
          continue;
        case 12:
          if (Float.isNaN(this.translationY)) {
            f1 = f2;
          } else {
            f1 = this.translationY;
          } 
          splineSet.setPoint(paramInt, f1);
          continue;
        case 11:
          if (Float.isNaN(this.translationX)) {
            f1 = f3;
          } else {
            f1 = this.translationX;
          } 
          splineSet.setPoint(paramInt, f1);
          continue;
        case 10:
          if (!Float.isNaN(this.scaleY))
            f1 = this.scaleY; 
          splineSet.setPoint(paramInt, f1);
          continue;
        case 9:
          if (!Float.isNaN(this.scaleX))
            f1 = this.scaleX; 
          splineSet.setPoint(paramInt, f1);
          continue;
        case 8:
          if (Float.isNaN(this.mProgress)) {
            f1 = f4;
          } else {
            f1 = this.mProgress;
          } 
          splineSet.setPoint(paramInt, f1);
          continue;
        case 7:
          if (Float.isNaN(this.mPathRotate)) {
            f1 = f5;
          } else {
            f1 = this.mPathRotate;
          } 
          splineSet.setPoint(paramInt, f1);
          continue;
        case 6:
          if (Float.isNaN(this.mPivotY)) {
            f1 = f6;
          } else {
            f1 = this.mPivotY;
          } 
          splineSet.setPoint(paramInt, f1);
          continue;
        case 5:
          if (Float.isNaN(this.mPivotX)) {
            f1 = f7;
          } else {
            f1 = this.mPivotX;
          } 
          splineSet.setPoint(paramInt, f1);
          continue;
        case 4:
          if (Float.isNaN(this.rotationY)) {
            f1 = f8;
          } else {
            f1 = this.rotationY;
          } 
          splineSet.setPoint(paramInt, f1);
          continue;
        case 3:
          if (Float.isNaN(this.rotationX)) {
            f1 = f9;
          } else {
            f1 = this.rotationX;
          } 
          splineSet.setPoint(paramInt, f1);
          continue;
        case 2:
          if (Float.isNaN(this.rotation)) {
            f1 = f10;
          } else {
            f1 = this.rotation;
          } 
          splineSet.setPoint(paramInt, f1);
          continue;
        case 1:
          if (Float.isNaN(this.elevation)) {
            f1 = f11;
          } else {
            f1 = this.elevation;
          } 
          splineSet.setPoint(paramInt, f1);
          continue;
        case 0:
          if (!Float.isNaN(this.alpha))
            f1 = this.alpha; 
          splineSet.setPoint(paramInt, f1);
          continue;
      } 
      StringBuilder stringBuilder2 = new StringBuilder();
      stringBuilder2.append("UNKNOWN spline ");
      stringBuilder2.append((String)stringBuilder1);
      Log.e("MotionPaths", stringBuilder2.toString());
    } 
  }
  
  public void applyParameters(View paramView) {
    float f;
    this.visibility = paramView.getVisibility();
    if (paramView.getVisibility() != 0) {
      f = 0.0F;
    } else {
      f = paramView.getAlpha();
    } 
    this.alpha = f;
    this.applyElevation = false;
    if (Build.VERSION.SDK_INT >= 21)
      this.elevation = paramView.getElevation(); 
    this.rotation = paramView.getRotation();
    this.rotationX = paramView.getRotationX();
    this.rotationY = paramView.getRotationY();
    this.scaleX = paramView.getScaleX();
    this.scaleY = paramView.getScaleY();
    this.mPivotX = paramView.getPivotX();
    this.mPivotY = paramView.getPivotY();
    this.translationX = paramView.getTranslationX();
    this.translationY = paramView.getTranslationY();
    if (Build.VERSION.SDK_INT >= 21)
      this.translationZ = paramView.getTranslationZ(); 
  }
  
  public void applyParameters(ConstraintSet.Constraint paramConstraint) {
    float f;
    this.mVisibilityMode = paramConstraint.propertySet.mVisibilityMode;
    this.visibility = paramConstraint.propertySet.visibility;
    if (paramConstraint.propertySet.visibility != 0 && this.mVisibilityMode == 0) {
      f = 0.0F;
    } else {
      f = paramConstraint.propertySet.alpha;
    } 
    this.alpha = f;
    this.applyElevation = paramConstraint.transform.applyElevation;
    this.elevation = paramConstraint.transform.elevation;
    this.rotation = paramConstraint.transform.rotation;
    this.rotationX = paramConstraint.transform.rotationX;
    this.rotationY = paramConstraint.transform.rotationY;
    this.scaleX = paramConstraint.transform.scaleX;
    this.scaleY = paramConstraint.transform.scaleY;
    this.mPivotX = paramConstraint.transform.transformPivotX;
    this.mPivotY = paramConstraint.transform.transformPivotY;
    this.translationX = paramConstraint.transform.translationX;
    this.translationY = paramConstraint.transform.translationY;
    this.translationZ = paramConstraint.transform.translationZ;
    this.mKeyFrameEasing = Easing.getInterpolator(paramConstraint.motion.mTransitionEasing);
    this.mPathRotate = paramConstraint.motion.mPathRotate;
    this.mDrawPath = paramConstraint.motion.mDrawPath;
    this.mProgress = paramConstraint.propertySet.mProgress;
    for (String str : paramConstraint.mCustomConstraints.keySet()) {
      ConstraintAttribute constraintAttribute = (ConstraintAttribute)paramConstraint.mCustomConstraints.get(str);
      if (constraintAttribute.getType() != ConstraintAttribute.AttributeType.STRING_TYPE)
        this.attributes.put(str, constraintAttribute); 
    } 
  }
  
  public int compareTo(MotionConstrainedPoint paramMotionConstrainedPoint) {
    return Float.compare(this.position, paramMotionConstrainedPoint.position);
  }
  
  void different(MotionConstrainedPoint paramMotionConstrainedPoint, HashSet<String> paramHashSet) {
    if (diff(this.alpha, paramMotionConstrainedPoint.alpha))
      paramHashSet.add("alpha"); 
    if (diff(this.elevation, paramMotionConstrainedPoint.elevation))
      paramHashSet.add("elevation"); 
    int i = this.visibility;
    int j = paramMotionConstrainedPoint.visibility;
    if (i != j && this.mVisibilityMode == 0 && (i == 0 || j == 0))
      paramHashSet.add("alpha"); 
    if (diff(this.rotation, paramMotionConstrainedPoint.rotation))
      paramHashSet.add("rotation"); 
    if (!Float.isNaN(this.mPathRotate) || !Float.isNaN(paramMotionConstrainedPoint.mPathRotate))
      paramHashSet.add("transitionPathRotate"); 
    if (!Float.isNaN(this.mProgress) || !Float.isNaN(paramMotionConstrainedPoint.mProgress))
      paramHashSet.add("progress"); 
    if (diff(this.rotationX, paramMotionConstrainedPoint.rotationX))
      paramHashSet.add("rotationX"); 
    if (diff(this.rotationY, paramMotionConstrainedPoint.rotationY))
      paramHashSet.add("rotationY"); 
    if (diff(this.mPivotX, paramMotionConstrainedPoint.mPivotX))
      paramHashSet.add("transformPivotX"); 
    if (diff(this.mPivotY, paramMotionConstrainedPoint.mPivotY))
      paramHashSet.add("transformPivotY"); 
    if (diff(this.scaleX, paramMotionConstrainedPoint.scaleX))
      paramHashSet.add("scaleX"); 
    if (diff(this.scaleY, paramMotionConstrainedPoint.scaleY))
      paramHashSet.add("scaleY"); 
    if (diff(this.translationX, paramMotionConstrainedPoint.translationX))
      paramHashSet.add("translationX"); 
    if (diff(this.translationY, paramMotionConstrainedPoint.translationY))
      paramHashSet.add("translationY"); 
    if (diff(this.translationZ, paramMotionConstrainedPoint.translationZ))
      paramHashSet.add("translationZ"); 
  }
  
  void different(MotionConstrainedPoint paramMotionConstrainedPoint, boolean[] paramArrayOfboolean, String[] paramArrayOfString) {
    paramArrayOfboolean[0] = paramArrayOfboolean[0] | diff(this.position, paramMotionConstrainedPoint.position);
    paramArrayOfboolean[1] = paramArrayOfboolean[1] | diff(this.x, paramMotionConstrainedPoint.x);
    paramArrayOfboolean[2] = paramArrayOfboolean[2] | diff(this.y, paramMotionConstrainedPoint.y);
    paramArrayOfboolean[3] = paramArrayOfboolean[3] | diff(this.width, paramMotionConstrainedPoint.width);
    boolean bool = paramArrayOfboolean[4];
    paramArrayOfboolean[4] = diff(this.height, paramMotionConstrainedPoint.height) | bool;
  }
  
  void fillStandard(double[] paramArrayOfdouble, int[] paramArrayOfint) {
    float[] arrayOfFloat = new float[18];
    float f = this.position;
    byte b = 0;
    arrayOfFloat[0] = f;
    arrayOfFloat[1] = this.x;
    arrayOfFloat[2] = this.y;
    arrayOfFloat[3] = this.width;
    arrayOfFloat[4] = this.height;
    arrayOfFloat[5] = this.alpha;
    arrayOfFloat[6] = this.elevation;
    arrayOfFloat[7] = this.rotation;
    arrayOfFloat[8] = this.rotationX;
    arrayOfFloat[9] = this.rotationY;
    arrayOfFloat[10] = this.scaleX;
    arrayOfFloat[11] = this.scaleY;
    arrayOfFloat[12] = this.mPivotX;
    arrayOfFloat[13] = this.mPivotY;
    arrayOfFloat[14] = this.translationX;
    arrayOfFloat[15] = this.translationY;
    arrayOfFloat[16] = this.translationZ;
    arrayOfFloat[17] = this.mPathRotate;
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
  
  boolean hasCustomData(String paramString) {
    return this.attributes.containsKey(paramString);
  }
  
  void setBounds(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    this.x = paramFloat1;
    this.y = paramFloat2;
    this.width = paramFloat3;
    this.height = paramFloat4;
  }
  
  public void setState(View paramView) {
    setBounds(paramView.getX(), paramView.getY(), paramView.getWidth(), paramView.getHeight());
    applyParameters(paramView);
  }
  
  public void setState(ConstraintWidget paramConstraintWidget, ConstraintSet paramConstraintSet, int paramInt) {
    setBounds(paramConstraintWidget.getX(), paramConstraintWidget.getY(), paramConstraintWidget.getWidth(), paramConstraintWidget.getHeight());
    applyParameters(paramConstraintSet.getParameters(paramInt));
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/motion/widget/MotionConstrainedPoint.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */