package androidx.constraintlayout.motion.widget;

import android.graphics.RectF;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.utils.CurveFit;
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.motion.utils.VelocityMatrix;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class MotionController {
  private static final boolean DEBUG = false;
  
  public static final int DRAW_PATH_AS_CONFIGURED = 4;
  
  public static final int DRAW_PATH_BASIC = 1;
  
  public static final int DRAW_PATH_CARTESIAN = 3;
  
  public static final int DRAW_PATH_NONE = 0;
  
  public static final int DRAW_PATH_RECTANGLE = 5;
  
  public static final int DRAW_PATH_RELATIVE = 2;
  
  public static final int DRAW_PATH_SCREEN = 6;
  
  private static final boolean FAVOR_FIXED_SIZE_VIEWS = false;
  
  public static final int HORIZONTAL_PATH_X = 2;
  
  public static final int HORIZONTAL_PATH_Y = 3;
  
  public static final int PATH_PERCENT = 0;
  
  public static final int PATH_PERPENDICULAR = 1;
  
  private static final String TAG = "MotionController";
  
  public static final int VERTICAL_PATH_X = 4;
  
  public static final int VERTICAL_PATH_Y = 5;
  
  private int MAX_DIMENSION = 4;
  
  String[] attributeTable;
  
  private CurveFit mArcSpline;
  
  private int[] mAttributeInterpCount;
  
  private String[] mAttributeNames;
  
  private HashMap<String, SplineSet> mAttributesMap;
  
  String mConstraintTag;
  
  private int mCurveFitType = -1;
  
  private HashMap<String, KeyCycleOscillator> mCycleMap;
  
  private MotionPaths mEndMotionPath = new MotionPaths();
  
  private MotionConstrainedPoint mEndPoint = new MotionConstrainedPoint();
  
  int mId;
  
  private double[] mInterpolateData;
  
  private int[] mInterpolateVariables;
  
  private double[] mInterpolateVelocity;
  
  private ArrayList<Key> mKeyList = new ArrayList<Key>();
  
  private KeyTrigger[] mKeyTriggers;
  
  private ArrayList<MotionPaths> mMotionPaths = new ArrayList<MotionPaths>();
  
  float mMotionStagger = Float.NaN;
  
  private int mPathMotionArc = Key.UNSET;
  
  private CurveFit[] mSpline;
  
  float mStaggerOffset = 0.0F;
  
  float mStaggerScale = 1.0F;
  
  private MotionPaths mStartMotionPath = new MotionPaths();
  
  private MotionConstrainedPoint mStartPoint = new MotionConstrainedPoint();
  
  private HashMap<String, TimeCycleSplineSet> mTimeCycleAttributesMap;
  
  private float[] mValuesBuff = new float[this.MAX_DIMENSION];
  
  private float[] mVelocity = new float[1];
  
  View mView;
  
  MotionController(View paramView) {
    setView(paramView);
  }
  
  private float getAdjustedPosition(float paramFloat, float[] paramArrayOffloat) {
    float f3;
    float f1 = 0.0F;
    float f2 = 1.0F;
    if (paramArrayOffloat != null) {
      paramArrayOffloat[0] = 1.0F;
      f3 = paramFloat;
    } else {
      f3 = paramFloat;
      if (this.mStaggerScale != 1.0D) {
        float f = paramFloat;
        if (paramFloat < this.mStaggerOffset)
          f = 0.0F; 
        paramFloat = this.mStaggerOffset;
        f3 = f;
        if (f > paramFloat) {
          f3 = f;
          if (f < 1.0D)
            f3 = (f - paramFloat) * this.mStaggerScale; 
        } 
      } 
    } 
    Easing easing = this.mStartMotionPath.mKeyFrameEasing;
    paramFloat = Float.NaN;
    Iterator<MotionPaths> iterator = this.mMotionPaths.iterator();
    float f4 = f1;
    while (iterator.hasNext()) {
      MotionPaths motionPaths = iterator.next();
      if (motionPaths.mKeyFrameEasing != null) {
        if (motionPaths.time < f3) {
          easing = motionPaths.mKeyFrameEasing;
          f4 = motionPaths.time;
          continue;
        } 
        if (Float.isNaN(paramFloat))
          paramFloat = motionPaths.time; 
      } 
    } 
    f1 = f3;
    if (easing != null) {
      if (Float.isNaN(paramFloat))
        paramFloat = f2; 
      paramFloat -= f4;
      double d = ((f3 - f4) / paramFloat);
      paramFloat = (float)easing.get(d) * paramFloat + f4;
      f1 = paramFloat;
      if (paramArrayOffloat != null) {
        paramArrayOffloat[0] = (float)easing.getDiff(d);
        f1 = paramFloat;
      } 
    } 
    return f1;
  }
  
  private float getPreCycleDistance() {
    float[] arrayOfFloat = new float[2];
    float f1 = 1.0F / 99;
    double d1 = 0.0D;
    double d2 = d1;
    byte b = 0;
    float f2;
    for (f2 = 0.0F; b < 100; f2 = f4) {
      float f3 = b * f1;
      double d = f3;
      Easing easing = this.mStartMotionPath.mKeyFrameEasing;
      float f4 = Float.NaN;
      Iterator<MotionPaths> iterator = this.mMotionPaths.iterator();
      float f5 = 0.0F;
      while (iterator.hasNext()) {
        MotionPaths motionPaths = iterator.next();
        if (motionPaths.mKeyFrameEasing != null) {
          if (motionPaths.time < f3) {
            easing = motionPaths.mKeyFrameEasing;
            f5 = motionPaths.time;
            continue;
          } 
          if (Float.isNaN(f4))
            f4 = motionPaths.time; 
        } 
      } 
      if (easing != null) {
        float f = f4;
        if (Float.isNaN(f4))
          f = 1.0F; 
        f4 = f - f5;
        d = ((float)easing.get(((f3 - f5) / f4)) * f4 + f5);
      } 
      this.mSpline[0].getPos(d, this.mInterpolateData);
      this.mStartMotionPath.getCenter(this.mInterpolateVariables, this.mInterpolateData, arrayOfFloat, 0);
      f4 = f2;
      if (b > 0)
        f4 = (float)(f2 + Math.hypot(d2 - arrayOfFloat[1], d1 - arrayOfFloat[0])); 
      d1 = arrayOfFloat[0];
      d2 = arrayOfFloat[1];
      b++;
    } 
    return f2;
  }
  
  private void insertKey(MotionPaths paramMotionPaths) {
    int i = Collections.binarySearch((List)this.mMotionPaths, paramMotionPaths);
    if (i == 0) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(" KeyPath positon \"");
      stringBuilder.append(paramMotionPaths.position);
      stringBuilder.append("\" outside of range");
      Log.e("MotionController", stringBuilder.toString());
    } 
    this.mMotionPaths.add(-i - 1, paramMotionPaths);
  }
  
  private void readView(MotionPaths paramMotionPaths) {
    paramMotionPaths.setBounds((int)this.mView.getX(), (int)this.mView.getY(), this.mView.getWidth(), this.mView.getHeight());
  }
  
  void addKey(Key paramKey) {
    this.mKeyList.add(paramKey);
  }
  
  void addKeys(ArrayList<Key> paramArrayList) {
    this.mKeyList.addAll(paramArrayList);
  }
  
  void buildBounds(float[] paramArrayOffloat, int paramInt) {
    float f = 1.0F / (paramInt - 1);
    HashMap<String, SplineSet> hashMap1 = this.mAttributesMap;
    if (hashMap1 != null)
      SplineSet splineSet = hashMap1.get("translationX"); 
    hashMap1 = this.mAttributesMap;
    if (hashMap1 != null)
      SplineSet splineSet = hashMap1.get("translationY"); 
    HashMap<String, KeyCycleOscillator> hashMap = this.mCycleMap;
    if (hashMap != null)
      KeyCycleOscillator keyCycleOscillator = hashMap.get("translationX"); 
    hashMap = this.mCycleMap;
    if (hashMap != null)
      KeyCycleOscillator keyCycleOscillator = hashMap.get("translationY"); 
    for (byte b = 0; b < paramInt; b++) {
      float f1 = b * f;
      float f2 = this.mStaggerScale;
      float f3 = 0.0F;
      float f4 = f1;
      if (f2 != 1.0F) {
        f2 = f1;
        if (f1 < this.mStaggerOffset)
          f2 = 0.0F; 
        f1 = this.mStaggerOffset;
        f4 = f2;
        if (f2 > f1) {
          f4 = f2;
          if (f2 < 1.0D)
            f4 = (f2 - f1) * this.mStaggerScale; 
        } 
      } 
      double d = f4;
      Easing easing = this.mStartMotionPath.mKeyFrameEasing;
      f2 = Float.NaN;
      Iterator<MotionPaths> iterator = this.mMotionPaths.iterator();
      f1 = f3;
      while (iterator.hasNext()) {
        MotionPaths motionPaths = iterator.next();
        if (motionPaths.mKeyFrameEasing != null) {
          if (motionPaths.time < f4) {
            easing = motionPaths.mKeyFrameEasing;
            f1 = motionPaths.time;
            continue;
          } 
          if (Float.isNaN(f2))
            f2 = motionPaths.time; 
        } 
      } 
      if (easing != null) {
        f3 = f2;
        if (Float.isNaN(f2))
          f3 = 1.0F; 
        f2 = f3 - f1;
        d = ((float)easing.get(((f4 - f1) / f2)) * f2 + f1);
      } 
      this.mSpline[0].getPos(d, this.mInterpolateData);
      CurveFit curveFit = this.mArcSpline;
      if (curveFit != null) {
        double[] arrayOfDouble = this.mInterpolateData;
        if (arrayOfDouble.length > 0)
          curveFit.getPos(d, arrayOfDouble); 
      } 
      this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, paramArrayOffloat, b * 2);
    } 
  }
  
  int buildKeyBounds(float[] paramArrayOffloat, int[] paramArrayOfint) {
    if (paramArrayOffloat != null) {
      double[] arrayOfDouble = this.mSpline[0].getTimePoints();
      if (paramArrayOfint != null) {
        Iterator<MotionPaths> iterator = this.mMotionPaths.iterator();
        for (byte b = 0; iterator.hasNext(); b++)
          paramArrayOfint[b] = ((MotionPaths)iterator.next()).mMode; 
      } 
      byte b1 = 0;
      byte b2 = 0;
      while (b1 < arrayOfDouble.length) {
        this.mSpline[0].getPos(arrayOfDouble[b1], this.mInterpolateData);
        this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, paramArrayOffloat, b2);
        b2 += true;
        b1++;
      } 
      return b2 / 2;
    } 
    return 0;
  }
  
  int buildKeyFrames(float[] paramArrayOffloat, int[] paramArrayOfint) {
    if (paramArrayOffloat != null) {
      double[] arrayOfDouble = this.mSpline[0].getTimePoints();
      if (paramArrayOfint != null) {
        Iterator<MotionPaths> iterator = this.mMotionPaths.iterator();
        for (byte b = 0; iterator.hasNext(); b++)
          paramArrayOfint[b] = ((MotionPaths)iterator.next()).mMode; 
      } 
      byte b1 = 0;
      byte b2 = 0;
      while (b1 < arrayOfDouble.length) {
        this.mSpline[0].getPos(arrayOfDouble[b1], this.mInterpolateData);
        this.mStartMotionPath.getCenter(this.mInterpolateVariables, this.mInterpolateData, paramArrayOffloat, b2);
        b2 += true;
        b1++;
      } 
      return b2 / 2;
    } 
    return 0;
  }
  
  void buildPath(float[] paramArrayOffloat, int paramInt) {
    SplineSet splineSet1;
    SplineSet splineSet2;
    KeyCycleOscillator keyCycleOscillator2;
    float f = 1.0F / (paramInt - 1);
    HashMap<String, SplineSet> hashMap1 = this.mAttributesMap;
    KeyCycleOscillator keyCycleOscillator1 = null;
    if (hashMap1 == null) {
      hashMap1 = null;
    } else {
      splineSet1 = hashMap1.get("translationX");
    } 
    HashMap<String, SplineSet> hashMap2 = this.mAttributesMap;
    if (hashMap2 == null) {
      hashMap2 = null;
    } else {
      splineSet2 = hashMap2.get("translationY");
    } 
    HashMap<String, KeyCycleOscillator> hashMap3 = this.mCycleMap;
    if (hashMap3 == null) {
      hashMap3 = null;
    } else {
      keyCycleOscillator2 = hashMap3.get("translationX");
    } 
    HashMap<String, KeyCycleOscillator> hashMap4 = this.mCycleMap;
    if (hashMap4 != null)
      keyCycleOscillator1 = hashMap4.get("translationY"); 
    for (byte b = 0; b < paramInt; b++) {
      float f1 = b * f;
      float f2 = this.mStaggerScale;
      float f3 = 0.0F;
      float f4 = f1;
      if (f2 != 1.0F) {
        f2 = f1;
        if (f1 < this.mStaggerOffset)
          f2 = 0.0F; 
        f1 = this.mStaggerOffset;
        f4 = f2;
        if (f2 > f1) {
          f4 = f2;
          if (f2 < 1.0D)
            f4 = (f2 - f1) * this.mStaggerScale; 
        } 
      } 
      double d = f4;
      Easing easing = this.mStartMotionPath.mKeyFrameEasing;
      f2 = Float.NaN;
      Iterator<MotionPaths> iterator = this.mMotionPaths.iterator();
      f1 = f3;
      while (iterator.hasNext()) {
        MotionPaths motionPaths1 = iterator.next();
        Easing easing1 = easing;
        float f5 = f1;
        f3 = f2;
        if (motionPaths1.mKeyFrameEasing != null)
          if (motionPaths1.time < f4) {
            easing1 = motionPaths1.mKeyFrameEasing;
            f5 = motionPaths1.time;
            f3 = f2;
          } else {
            easing1 = easing;
            f5 = f1;
            f3 = f2;
            if (Float.isNaN(f2)) {
              f3 = motionPaths1.time;
              f5 = f1;
              easing1 = easing;
            } 
          }  
        easing = easing1;
        f1 = f5;
        f2 = f3;
      } 
      if (easing != null) {
        f3 = f2;
        if (Float.isNaN(f2))
          f3 = 1.0F; 
        f2 = f3 - f1;
        d = ((float)easing.get(((f4 - f1) / f2)) * f2 + f1);
      } 
      this.mSpline[0].getPos(d, this.mInterpolateData);
      CurveFit curveFit = this.mArcSpline;
      if (curveFit != null) {
        double[] arrayOfDouble1 = this.mInterpolateData;
        if (arrayOfDouble1.length > 0)
          curveFit.getPos(d, arrayOfDouble1); 
      } 
      MotionPaths motionPaths = this.mStartMotionPath;
      int[] arrayOfInt = this.mInterpolateVariables;
      double[] arrayOfDouble = this.mInterpolateData;
      int i = b * 2;
      motionPaths.getCenter(arrayOfInt, arrayOfDouble, paramArrayOffloat, i);
      if (keyCycleOscillator2 != null) {
        paramArrayOffloat[i] = paramArrayOffloat[i] + keyCycleOscillator2.get(f4);
      } else if (splineSet1 != null) {
        paramArrayOffloat[i] = paramArrayOffloat[i] + splineSet1.get(f4);
      } 
      if (keyCycleOscillator1 != null) {
        paramArrayOffloat[++i] = paramArrayOffloat[i] + keyCycleOscillator1.get(f4);
      } else if (splineSet2 != null) {
        paramArrayOffloat[++i] = paramArrayOffloat[i] + splineSet2.get(f4);
      } 
    } 
  }
  
  void buildRect(float paramFloat, float[] paramArrayOffloat, int paramInt) {
    paramFloat = getAdjustedPosition(paramFloat, null);
    this.mSpline[0].getPos(paramFloat, this.mInterpolateData);
    this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, paramArrayOffloat, paramInt);
  }
  
  void buildRectangles(float[] paramArrayOffloat, int paramInt) {
    float f = 1.0F / (paramInt - 1);
    for (byte b = 0; b < paramInt; b++) {
      float f1 = getAdjustedPosition(b * f, null);
      this.mSpline[0].getPos(f1, this.mInterpolateData);
      this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, paramArrayOffloat, b * 8);
    } 
  }
  
  int getAttributeValues(String paramString, float[] paramArrayOffloat, int paramInt) {
    SplineSet splineSet = this.mAttributesMap.get(paramString);
    if (splineSet == null)
      return -1; 
    for (paramInt = 0; paramInt < paramArrayOffloat.length; paramInt++)
      paramArrayOffloat[paramInt] = splineSet.get((paramInt / (paramArrayOffloat.length - 1))); 
    return paramArrayOffloat.length;
  }
  
  void getDpDt(float paramFloat1, float paramFloat2, float paramFloat3, float[] paramArrayOffloat) {
    paramFloat1 = getAdjustedPosition(paramFloat1, this.mVelocity);
    CurveFit[] arrayOfCurveFit = this.mSpline;
    byte b = 0;
    if (arrayOfCurveFit != null) {
      CurveFit curveFit = arrayOfCurveFit[0];
      double d = paramFloat1;
      curveFit.getSlope(d, this.mInterpolateVelocity);
      this.mSpline[0].getPos(d, this.mInterpolateData);
      paramFloat1 = this.mVelocity[0];
      while (true) {
        double[] arrayOfDouble = this.mInterpolateVelocity;
        if (b < arrayOfDouble.length) {
          arrayOfDouble[b] = arrayOfDouble[b] * paramFloat1;
          b++;
          continue;
        } 
        curveFit = this.mArcSpline;
        if (curveFit != null) {
          arrayOfDouble = this.mInterpolateData;
          if (arrayOfDouble.length > 0) {
            curveFit.getPos(d, arrayOfDouble);
            this.mArcSpline.getSlope(d, this.mInterpolateVelocity);
            this.mStartMotionPath.setDpDt(paramFloat2, paramFloat3, paramArrayOffloat, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
          } 
          return;
        } 
        this.mStartMotionPath.setDpDt(paramFloat2, paramFloat3, paramArrayOffloat, this.mInterpolateVariables, arrayOfDouble, this.mInterpolateData);
        return;
      } 
    } 
    float f1 = this.mEndMotionPath.x - this.mStartMotionPath.x;
    float f2 = this.mEndMotionPath.y - this.mStartMotionPath.y;
    float f3 = this.mEndMotionPath.width;
    paramFloat1 = this.mStartMotionPath.width;
    float f4 = this.mEndMotionPath.height;
    float f5 = this.mStartMotionPath.height;
    paramArrayOffloat[0] = f1 * (1.0F - paramFloat2) + (f3 - paramFloat1 + f1) * paramFloat2;
    paramArrayOffloat[1] = f2 * (1.0F - paramFloat3) + (f4 - f5 + f2) * paramFloat3;
  }
  
  public int getDrawPath() {
    int i = this.mStartMotionPath.mDrawPath;
    Iterator<MotionPaths> iterator = this.mMotionPaths.iterator();
    while (iterator.hasNext())
      i = Math.max(i, ((MotionPaths)iterator.next()).mDrawPath); 
    return Math.max(i, this.mEndMotionPath.mDrawPath);
  }
  
  float getFinalX() {
    return this.mEndMotionPath.x;
  }
  
  float getFinalY() {
    return this.mEndMotionPath.y;
  }
  
  MotionPaths getKeyFrame(int paramInt) {
    return this.mMotionPaths.get(paramInt);
  }
  
  public int getKeyFrameInfo(int paramInt, int[] paramArrayOfint) {
    float[] arrayOfFloat = new float[2];
    Iterator<Key> iterator = this.mKeyList.iterator();
    byte b = 0;
    int i;
    for (i = 0; iterator.hasNext(); i = j) {
      Key key = iterator.next();
      if (key.mType != paramInt && paramInt == -1)
        continue; 
      paramArrayOfint[i] = 0;
      int j = i + 1;
      paramArrayOfint[j] = key.mType;
      paramArrayOfint[++j] = key.mFramePosition;
      float f = key.mFramePosition / 100.0F;
      this.mSpline[0].getPos(f, this.mInterpolateData);
      this.mStartMotionPath.getCenter(this.mInterpolateVariables, this.mInterpolateData, arrayOfFloat, 0);
      paramArrayOfint[++j] = Float.floatToIntBits(arrayOfFloat[0]);
      int k = j + 1;
      paramArrayOfint[k] = Float.floatToIntBits(arrayOfFloat[1]);
      j = k;
      if (key instanceof KeyPosition) {
        key = key;
        j = k + 1;
        paramArrayOfint[j] = ((KeyPosition)key).mPositionType;
        paramArrayOfint[++j] = Float.floatToIntBits(((KeyPosition)key).mPercentX);
        paramArrayOfint[++j] = Float.floatToIntBits(((KeyPosition)key).mPercentY);
      } 
      paramArrayOfint[i] = ++j - i;
      b++;
    } 
    return b;
  }
  
  float getKeyFrameParameter(int paramInt, float paramFloat1, float paramFloat2) {
    float f1 = this.mEndMotionPath.x - this.mStartMotionPath.x;
    float f2 = this.mEndMotionPath.y - this.mStartMotionPath.y;
    float f3 = this.mStartMotionPath.x;
    float f4 = this.mStartMotionPath.width / 2.0F;
    float f5 = this.mStartMotionPath.y;
    float f6 = this.mStartMotionPath.height / 2.0F;
    float f7 = (float)Math.hypot(f1, f2);
    if (f7 < 1.0E-7D)
      return Float.NaN; 
    paramFloat1 -= f3 + f4;
    f5 = paramFloat2 - f5 + f6;
    if ((float)Math.hypot(paramFloat1, f5) == 0.0F)
      return 0.0F; 
    paramFloat2 = paramFloat1 * f1 + f5 * f2;
    return (paramInt != 0) ? ((paramInt != 1) ? ((paramInt != 2) ? ((paramInt != 3) ? ((paramInt != 4) ? ((paramInt != 5) ? 0.0F : (f5 / f2)) : (paramFloat1 / f2)) : (f5 / f1)) : (paramFloat1 / f1)) : (float)Math.sqrt((f7 * f7 - paramFloat2 * paramFloat2))) : (paramFloat2 / f7);
  }
  
  KeyPositionBase getPositionKeyframe(int paramInt1, int paramInt2, float paramFloat1, float paramFloat2) {
    RectF rectF1 = new RectF();
    rectF1.left = this.mStartMotionPath.x;
    rectF1.top = this.mStartMotionPath.y;
    rectF1.right = rectF1.left + this.mStartMotionPath.width;
    rectF1.bottom = rectF1.top + this.mStartMotionPath.height;
    RectF rectF2 = new RectF();
    rectF2.left = this.mEndMotionPath.x;
    rectF2.top = this.mEndMotionPath.y;
    rectF2.right = rectF2.left + this.mEndMotionPath.width;
    rectF2.bottom = rectF2.top + this.mEndMotionPath.height;
    for (Key key : this.mKeyList) {
      if (key instanceof KeyPositionBase) {
        key = key;
        if (key.intersects(paramInt1, paramInt2, rectF1, rectF2, paramFloat1, paramFloat2))
          return (KeyPositionBase)key; 
      } 
    } 
    return null;
  }
  
  void getPostLayoutDvDp(float paramFloat1, int paramInt1, int paramInt2, float paramFloat2, float paramFloat3, float[] paramArrayOffloat) {
    SplineSet splineSet1;
    double[] arrayOfDouble;
    SplineSet splineSet2;
    SplineSet splineSet3;
    SplineSet splineSet4;
    SplineSet splineSet5;
    KeyCycleOscillator keyCycleOscillator2;
    KeyCycleOscillator keyCycleOscillator3;
    KeyCycleOscillator keyCycleOscillator4;
    KeyCycleOscillator keyCycleOscillator5;
    float f1 = getAdjustedPosition(paramFloat1, this.mVelocity);
    HashMap<String, SplineSet> hashMap1 = this.mAttributesMap;
    KeyCycleOscillator keyCycleOscillator1 = null;
    if (hashMap1 == null) {
      hashMap1 = null;
    } else {
      splineSet1 = hashMap1.get("translationX");
    } 
    HashMap<String, SplineSet> hashMap2 = this.mAttributesMap;
    if (hashMap2 == null) {
      hashMap2 = null;
    } else {
      splineSet2 = hashMap2.get("translationY");
    } 
    HashMap<String, SplineSet> hashMap3 = this.mAttributesMap;
    if (hashMap3 == null) {
      hashMap3 = null;
    } else {
      splineSet3 = hashMap3.get("rotation");
    } 
    HashMap<String, SplineSet> hashMap4 = this.mAttributesMap;
    if (hashMap4 == null) {
      hashMap4 = null;
    } else {
      splineSet4 = hashMap4.get("scaleX");
    } 
    HashMap<String, SplineSet> hashMap5 = this.mAttributesMap;
    if (hashMap5 == null) {
      hashMap5 = null;
    } else {
      splineSet5 = hashMap5.get("scaleY");
    } 
    HashMap<String, KeyCycleOscillator> hashMap6 = this.mCycleMap;
    if (hashMap6 == null) {
      hashMap6 = null;
    } else {
      keyCycleOscillator2 = hashMap6.get("translationX");
    } 
    HashMap<String, KeyCycleOscillator> hashMap7 = this.mCycleMap;
    if (hashMap7 == null) {
      hashMap7 = null;
    } else {
      keyCycleOscillator3 = hashMap7.get("translationY");
    } 
    HashMap<String, KeyCycleOscillator> hashMap8 = this.mCycleMap;
    if (hashMap8 == null) {
      hashMap8 = null;
    } else {
      keyCycleOscillator4 = hashMap8.get("rotation");
    } 
    HashMap<String, KeyCycleOscillator> hashMap9 = this.mCycleMap;
    if (hashMap9 == null) {
      hashMap9 = null;
    } else {
      keyCycleOscillator5 = hashMap9.get("scaleX");
    } 
    HashMap<String, KeyCycleOscillator> hashMap10 = this.mCycleMap;
    if (hashMap10 != null)
      keyCycleOscillator1 = hashMap10.get("scaleY"); 
    VelocityMatrix velocityMatrix = new VelocityMatrix();
    velocityMatrix.clear();
    velocityMatrix.setRotationVelocity(splineSet3, f1);
    velocityMatrix.setTranslationVelocity(splineSet1, splineSet2, f1);
    velocityMatrix.setScaleVelocity(splineSet4, splineSet5, f1);
    velocityMatrix.setRotationVelocity(keyCycleOscillator4, f1);
    velocityMatrix.setTranslationVelocity(keyCycleOscillator2, keyCycleOscillator3, f1);
    velocityMatrix.setScaleVelocity(keyCycleOscillator5, keyCycleOscillator1, f1);
    CurveFit curveFit = this.mArcSpline;
    if (curveFit != null) {
      arrayOfDouble = this.mInterpolateData;
      if (arrayOfDouble.length > 0) {
        double d = f1;
        curveFit.getPos(d, arrayOfDouble);
        this.mArcSpline.getSlope(d, this.mInterpolateVelocity);
        this.mStartMotionPath.setDpDt(paramFloat2, paramFloat3, paramArrayOffloat, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
      } 
      velocityMatrix.applyTransform(paramFloat2, paramFloat3, paramInt1, paramInt2, paramArrayOffloat);
      return;
    } 
    CurveFit[] arrayOfCurveFit = this.mSpline;
    byte b = 0;
    if (arrayOfCurveFit != null) {
      paramFloat1 = getAdjustedPosition(f1, this.mVelocity);
      CurveFit curveFit1 = this.mSpline[0];
      double d = paramFloat1;
      curveFit1.getSlope(d, this.mInterpolateVelocity);
      this.mSpline[0].getPos(d, this.mInterpolateData);
      paramFloat1 = this.mVelocity[0];
      while (true) {
        arrayOfDouble = this.mInterpolateVelocity;
        if (b < arrayOfDouble.length) {
          arrayOfDouble[b] = arrayOfDouble[b] * paramFloat1;
          b++;
          continue;
        } 
        this.mStartMotionPath.setDpDt(paramFloat2, paramFloat3, paramArrayOffloat, this.mInterpolateVariables, arrayOfDouble, this.mInterpolateData);
        velocityMatrix.applyTransform(paramFloat2, paramFloat3, paramInt1, paramInt2, paramArrayOffloat);
        return;
      } 
    } 
    float f2 = this.mEndMotionPath.x - this.mStartMotionPath.x;
    float f3 = this.mEndMotionPath.y - this.mStartMotionPath.y;
    float f4 = this.mEndMotionPath.width;
    paramFloat1 = this.mStartMotionPath.width;
    float f5 = this.mEndMotionPath.height;
    float f6 = this.mStartMotionPath.height;
    paramArrayOffloat[0] = f2 * (1.0F - paramFloat2) + (f4 - paramFloat1 + f2) * paramFloat2;
    paramArrayOffloat[1] = f3 * (1.0F - paramFloat3) + (f5 - f6 + f3) * paramFloat3;
    velocityMatrix.clear();
    velocityMatrix.setRotationVelocity(splineSet3, f1);
    velocityMatrix.setTranslationVelocity((SplineSet)arrayOfDouble, splineSet2, f1);
    velocityMatrix.setScaleVelocity(splineSet4, splineSet5, f1);
    velocityMatrix.setRotationVelocity(keyCycleOscillator4, f1);
    velocityMatrix.setTranslationVelocity(keyCycleOscillator2, keyCycleOscillator3, f1);
    velocityMatrix.setScaleVelocity(keyCycleOscillator5, keyCycleOscillator1, f1);
    velocityMatrix.applyTransform(paramFloat2, paramFloat3, paramInt1, paramInt2, paramArrayOffloat);
  }
  
  float getStartX() {
    return this.mStartMotionPath.x;
  }
  
  float getStartY() {
    return this.mStartMotionPath.y;
  }
  
  public int getkeyFramePositions(int[] paramArrayOfint, float[] paramArrayOffloat) {
    Iterator<Key> iterator = this.mKeyList.iterator();
    byte b = 0;
    boolean bool = false;
    while (iterator.hasNext()) {
      Key key = iterator.next();
      paramArrayOfint[b] = key.mFramePosition + key.mType * 1000;
      float f = key.mFramePosition / 100.0F;
      this.mSpline[0].getPos(f, this.mInterpolateData);
      this.mStartMotionPath.getCenter(this.mInterpolateVariables, this.mInterpolateData, paramArrayOffloat, bool);
      bool += true;
      b++;
    } 
    return b;
  }
  
  boolean interpolate(View paramView, float paramFloat, long paramLong, KeyCache paramKeyCache) {
    // Byte code:
    //   0: aload_0
    //   1: fload_2
    //   2: aconst_null
    //   3: invokespecial getAdjustedPosition : (F[F)F
    //   6: fstore #6
    //   8: aload_0
    //   9: getfield mAttributesMap : Ljava/util/HashMap;
    //   12: astore #7
    //   14: aload #7
    //   16: ifnull -> 60
    //   19: aload #7
    //   21: invokevirtual values : ()Ljava/util/Collection;
    //   24: invokeinterface iterator : ()Ljava/util/Iterator;
    //   29: astore #7
    //   31: aload #7
    //   33: invokeinterface hasNext : ()Z
    //   38: ifeq -> 60
    //   41: aload #7
    //   43: invokeinterface next : ()Ljava/lang/Object;
    //   48: checkcast androidx/constraintlayout/motion/widget/SplineSet
    //   51: aload_1
    //   52: fload #6
    //   54: invokevirtual setProperty : (Landroid/view/View;F)V
    //   57: goto -> 31
    //   60: aload_0
    //   61: getfield mTimeCycleAttributesMap : Ljava/util/HashMap;
    //   64: astore #7
    //   66: aload #7
    //   68: ifnull -> 151
    //   71: aload #7
    //   73: invokevirtual values : ()Ljava/util/Collection;
    //   76: invokeinterface iterator : ()Ljava/util/Iterator;
    //   81: astore #8
    //   83: aconst_null
    //   84: astore #7
    //   86: iconst_0
    //   87: istore #9
    //   89: aload #8
    //   91: invokeinterface hasNext : ()Z
    //   96: ifeq -> 148
    //   99: aload #8
    //   101: invokeinterface next : ()Ljava/lang/Object;
    //   106: checkcast androidx/constraintlayout/motion/widget/TimeCycleSplineSet
    //   109: astore #10
    //   111: aload #10
    //   113: instanceof androidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate
    //   116: ifeq -> 129
    //   119: aload #10
    //   121: checkcast androidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate
    //   124: astore #7
    //   126: goto -> 89
    //   129: iload #9
    //   131: aload #10
    //   133: aload_1
    //   134: fload #6
    //   136: lload_3
    //   137: aload #5
    //   139: invokevirtual setProperty : (Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    //   142: ior
    //   143: istore #9
    //   145: goto -> 89
    //   148: goto -> 157
    //   151: aconst_null
    //   152: astore #7
    //   154: iconst_0
    //   155: istore #9
    //   157: aload_0
    //   158: getfield mSpline : [Landroidx/constraintlayout/motion/utils/CurveFit;
    //   161: astore #8
    //   163: aload #8
    //   165: ifnull -> 596
    //   168: aload #8
    //   170: iconst_0
    //   171: aaload
    //   172: astore #8
    //   174: fload #6
    //   176: f2d
    //   177: dstore #11
    //   179: aload #8
    //   181: dload #11
    //   183: aload_0
    //   184: getfield mInterpolateData : [D
    //   187: invokevirtual getPos : (D[D)V
    //   190: aload_0
    //   191: getfield mSpline : [Landroidx/constraintlayout/motion/utils/CurveFit;
    //   194: iconst_0
    //   195: aaload
    //   196: dload #11
    //   198: aload_0
    //   199: getfield mInterpolateVelocity : [D
    //   202: invokevirtual getSlope : (D[D)V
    //   205: aload_0
    //   206: getfield mArcSpline : Landroidx/constraintlayout/motion/utils/CurveFit;
    //   209: astore #8
    //   211: aload #8
    //   213: ifnull -> 250
    //   216: aload_0
    //   217: getfield mInterpolateData : [D
    //   220: astore #10
    //   222: aload #10
    //   224: arraylength
    //   225: ifle -> 250
    //   228: aload #8
    //   230: dload #11
    //   232: aload #10
    //   234: invokevirtual getPos : (D[D)V
    //   237: aload_0
    //   238: getfield mArcSpline : Landroidx/constraintlayout/motion/utils/CurveFit;
    //   241: dload #11
    //   243: aload_0
    //   244: getfield mInterpolateVelocity : [D
    //   247: invokevirtual getSlope : (D[D)V
    //   250: aload_0
    //   251: getfield mStartMotionPath : Landroidx/constraintlayout/motion/widget/MotionPaths;
    //   254: aload_1
    //   255: aload_0
    //   256: getfield mInterpolateVariables : [I
    //   259: aload_0
    //   260: getfield mInterpolateData : [D
    //   263: aload_0
    //   264: getfield mInterpolateVelocity : [D
    //   267: aconst_null
    //   268: invokevirtual setView : (Landroid/view/View;[I[D[D[D)V
    //   271: aload_0
    //   272: getfield mAttributesMap : Ljava/util/HashMap;
    //   275: astore #8
    //   277: dload #11
    //   279: dstore #13
    //   281: aload #8
    //   283: ifnull -> 367
    //   286: aload #8
    //   288: invokevirtual values : ()Ljava/util/Collection;
    //   291: invokeinterface iterator : ()Ljava/util/Iterator;
    //   296: astore #8
    //   298: dload #11
    //   300: dstore #13
    //   302: aload #8
    //   304: invokeinterface hasNext : ()Z
    //   309: ifeq -> 367
    //   312: aload #8
    //   314: invokeinterface next : ()Ljava/lang/Object;
    //   319: checkcast androidx/constraintlayout/motion/widget/SplineSet
    //   322: astore #10
    //   324: aload #10
    //   326: instanceof androidx/constraintlayout/motion/widget/SplineSet$PathRotate
    //   329: ifeq -> 364
    //   332: aload #10
    //   334: checkcast androidx/constraintlayout/motion/widget/SplineSet$PathRotate
    //   337: astore #10
    //   339: aload_0
    //   340: getfield mInterpolateVelocity : [D
    //   343: astore #15
    //   345: aload #10
    //   347: aload_1
    //   348: fload #6
    //   350: aload #15
    //   352: iconst_0
    //   353: daload
    //   354: aload #15
    //   356: iconst_1
    //   357: daload
    //   358: invokevirtual setPathRotate : (Landroid/view/View;FDD)V
    //   361: goto -> 364
    //   364: goto -> 298
    //   367: iload #9
    //   369: istore #16
    //   371: aload #7
    //   373: ifnull -> 406
    //   376: aload_0
    //   377: getfield mInterpolateVelocity : [D
    //   380: astore #8
    //   382: aload #7
    //   384: aload_1
    //   385: aload #5
    //   387: fload #6
    //   389: lload_3
    //   390: aload #8
    //   392: iconst_0
    //   393: daload
    //   394: aload #8
    //   396: iconst_1
    //   397: daload
    //   398: invokevirtual setPathRotate : (Landroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;FJDD)Z
    //   401: iload #9
    //   403: ior
    //   404: istore #16
    //   406: iconst_1
    //   407: istore #17
    //   409: aload_0
    //   410: getfield mSpline : [Landroidx/constraintlayout/motion/utils/CurveFit;
    //   413: astore #5
    //   415: iload #17
    //   417: aload #5
    //   419: arraylength
    //   420: if_icmpge -> 473
    //   423: aload #5
    //   425: iload #17
    //   427: aaload
    //   428: dload #13
    //   430: aload_0
    //   431: getfield mValuesBuff : [F
    //   434: invokevirtual getPos : (D[F)V
    //   437: aload_0
    //   438: getfield mStartMotionPath : Landroidx/constraintlayout/motion/widget/MotionPaths;
    //   441: getfield attributes : Ljava/util/LinkedHashMap;
    //   444: aload_0
    //   445: getfield mAttributeNames : [Ljava/lang/String;
    //   448: iload #17
    //   450: iconst_1
    //   451: isub
    //   452: aaload
    //   453: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   456: checkcast androidx/constraintlayout/widget/ConstraintAttribute
    //   459: aload_1
    //   460: aload_0
    //   461: getfield mValuesBuff : [F
    //   464: invokevirtual setInterpolatedValue : (Landroid/view/View;[F)V
    //   467: iinc #17, 1
    //   470: goto -> 409
    //   473: aload_0
    //   474: getfield mStartPoint : Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;
    //   477: getfield mVisibilityMode : I
    //   480: ifne -> 547
    //   483: fload #6
    //   485: fconst_0
    //   486: fcmpg
    //   487: ifgt -> 504
    //   490: aload_1
    //   491: aload_0
    //   492: getfield mStartPoint : Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;
    //   495: getfield visibility : I
    //   498: invokevirtual setVisibility : (I)V
    //   501: goto -> 547
    //   504: fload #6
    //   506: fconst_1
    //   507: fcmpl
    //   508: iflt -> 525
    //   511: aload_1
    //   512: aload_0
    //   513: getfield mEndPoint : Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;
    //   516: getfield visibility : I
    //   519: invokevirtual setVisibility : (I)V
    //   522: goto -> 547
    //   525: aload_0
    //   526: getfield mEndPoint : Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;
    //   529: getfield visibility : I
    //   532: aload_0
    //   533: getfield mStartPoint : Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;
    //   536: getfield visibility : I
    //   539: if_icmpeq -> 547
    //   542: aload_1
    //   543: iconst_0
    //   544: invokevirtual setVisibility : (I)V
    //   547: iload #16
    //   549: istore #9
    //   551: aload_0
    //   552: getfield mKeyTriggers : [Landroidx/constraintlayout/motion/widget/KeyTrigger;
    //   555: ifnull -> 854
    //   558: iconst_0
    //   559: istore #17
    //   561: aload_0
    //   562: getfield mKeyTriggers : [Landroidx/constraintlayout/motion/widget/KeyTrigger;
    //   565: astore #5
    //   567: iload #16
    //   569: istore #9
    //   571: iload #17
    //   573: aload #5
    //   575: arraylength
    //   576: if_icmpge -> 854
    //   579: aload #5
    //   581: iload #17
    //   583: aaload
    //   584: fload #6
    //   586: aload_1
    //   587: invokevirtual conditionallyFire : (FLandroid/view/View;)V
    //   590: iinc #17, 1
    //   593: goto -> 561
    //   596: aload_0
    //   597: getfield mStartMotionPath : Landroidx/constraintlayout/motion/widget/MotionPaths;
    //   600: getfield x : F
    //   603: fstore #18
    //   605: aload_0
    //   606: getfield mEndMotionPath : Landroidx/constraintlayout/motion/widget/MotionPaths;
    //   609: getfield x : F
    //   612: fstore #19
    //   614: aload_0
    //   615: getfield mStartMotionPath : Landroidx/constraintlayout/motion/widget/MotionPaths;
    //   618: getfield x : F
    //   621: fstore #20
    //   623: aload_0
    //   624: getfield mStartMotionPath : Landroidx/constraintlayout/motion/widget/MotionPaths;
    //   627: getfield y : F
    //   630: fstore #21
    //   632: aload_0
    //   633: getfield mEndMotionPath : Landroidx/constraintlayout/motion/widget/MotionPaths;
    //   636: getfield y : F
    //   639: fstore #22
    //   641: aload_0
    //   642: getfield mStartMotionPath : Landroidx/constraintlayout/motion/widget/MotionPaths;
    //   645: getfield y : F
    //   648: fstore #23
    //   650: aload_0
    //   651: getfield mStartMotionPath : Landroidx/constraintlayout/motion/widget/MotionPaths;
    //   654: getfield width : F
    //   657: fstore #24
    //   659: aload_0
    //   660: getfield mEndMotionPath : Landroidx/constraintlayout/motion/widget/MotionPaths;
    //   663: getfield width : F
    //   666: fstore #25
    //   668: aload_0
    //   669: getfield mStartMotionPath : Landroidx/constraintlayout/motion/widget/MotionPaths;
    //   672: getfield width : F
    //   675: fstore #26
    //   677: aload_0
    //   678: getfield mStartMotionPath : Landroidx/constraintlayout/motion/widget/MotionPaths;
    //   681: getfield height : F
    //   684: fstore #27
    //   686: aload_0
    //   687: getfield mEndMotionPath : Landroidx/constraintlayout/motion/widget/MotionPaths;
    //   690: getfield height : F
    //   693: fstore_2
    //   694: aload_0
    //   695: getfield mStartMotionPath : Landroidx/constraintlayout/motion/widget/MotionPaths;
    //   698: getfield height : F
    //   701: fstore #28
    //   703: fload #18
    //   705: fload #19
    //   707: fload #20
    //   709: fsub
    //   710: fload #6
    //   712: fmul
    //   713: fadd
    //   714: ldc_w 0.5
    //   717: fadd
    //   718: fstore #18
    //   720: fload #18
    //   722: f2i
    //   723: istore #29
    //   725: fload #21
    //   727: fload #22
    //   729: fload #23
    //   731: fsub
    //   732: fload #6
    //   734: fmul
    //   735: fadd
    //   736: ldc_w 0.5
    //   739: fadd
    //   740: fstore #22
    //   742: fload #22
    //   744: f2i
    //   745: istore #30
    //   747: fload #18
    //   749: fload #24
    //   751: fload #25
    //   753: fload #26
    //   755: fsub
    //   756: fload #6
    //   758: fmul
    //   759: fadd
    //   760: fadd
    //   761: f2i
    //   762: istore #17
    //   764: fload #22
    //   766: fload #27
    //   768: fload_2
    //   769: fload #28
    //   771: fsub
    //   772: fload #6
    //   774: fmul
    //   775: fadd
    //   776: fadd
    //   777: f2i
    //   778: istore #31
    //   780: aload_0
    //   781: getfield mEndMotionPath : Landroidx/constraintlayout/motion/widget/MotionPaths;
    //   784: getfield width : F
    //   787: aload_0
    //   788: getfield mStartMotionPath : Landroidx/constraintlayout/motion/widget/MotionPaths;
    //   791: getfield width : F
    //   794: fcmpl
    //   795: ifne -> 816
    //   798: aload_0
    //   799: getfield mEndMotionPath : Landroidx/constraintlayout/motion/widget/MotionPaths;
    //   802: getfield height : F
    //   805: aload_0
    //   806: getfield mStartMotionPath : Landroidx/constraintlayout/motion/widget/MotionPaths;
    //   809: getfield height : F
    //   812: fcmpl
    //   813: ifeq -> 842
    //   816: aload_1
    //   817: iload #17
    //   819: iload #29
    //   821: isub
    //   822: ldc_w 1073741824
    //   825: invokestatic makeMeasureSpec : (II)I
    //   828: iload #31
    //   830: iload #30
    //   832: isub
    //   833: ldc_w 1073741824
    //   836: invokestatic makeMeasureSpec : (II)I
    //   839: invokevirtual measure : (II)V
    //   842: aload_1
    //   843: iload #29
    //   845: iload #30
    //   847: iload #17
    //   849: iload #31
    //   851: invokevirtual layout : (IIII)V
    //   854: aload_0
    //   855: getfield mCycleMap : Ljava/util/HashMap;
    //   858: astore #5
    //   860: aload #5
    //   862: ifnull -> 950
    //   865: aload #5
    //   867: invokevirtual values : ()Ljava/util/Collection;
    //   870: invokeinterface iterator : ()Ljava/util/Iterator;
    //   875: astore #5
    //   877: aload #5
    //   879: invokeinterface hasNext : ()Z
    //   884: ifeq -> 950
    //   887: aload #5
    //   889: invokeinterface next : ()Ljava/lang/Object;
    //   894: checkcast androidx/constraintlayout/motion/widget/KeyCycleOscillator
    //   897: astore #7
    //   899: aload #7
    //   901: instanceof androidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet
    //   904: ifeq -> 939
    //   907: aload #7
    //   909: checkcast androidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet
    //   912: astore #8
    //   914: aload_0
    //   915: getfield mInterpolateVelocity : [D
    //   918: astore #7
    //   920: aload #8
    //   922: aload_1
    //   923: fload #6
    //   925: aload #7
    //   927: iconst_0
    //   928: daload
    //   929: aload #7
    //   931: iconst_1
    //   932: daload
    //   933: invokevirtual setPathRotate : (Landroid/view/View;FDD)V
    //   936: goto -> 877
    //   939: aload #7
    //   941: aload_1
    //   942: fload #6
    //   944: invokevirtual setProperty : (Landroid/view/View;F)V
    //   947: goto -> 877
    //   950: iload #9
    //   952: ireturn
  }
  
  String name() {
    return this.mView.getContext().getResources().getResourceEntryName(this.mView.getId());
  }
  
  void positionKeyframe(View paramView, KeyPositionBase paramKeyPositionBase, float paramFloat1, float paramFloat2, String[] paramArrayOfString, float[] paramArrayOffloat) {
    RectF rectF1 = new RectF();
    rectF1.left = this.mStartMotionPath.x;
    rectF1.top = this.mStartMotionPath.y;
    rectF1.right = rectF1.left + this.mStartMotionPath.width;
    rectF1.bottom = rectF1.top + this.mStartMotionPath.height;
    RectF rectF2 = new RectF();
    rectF2.left = this.mEndMotionPath.x;
    rectF2.top = this.mEndMotionPath.y;
    rectF2.right = rectF2.left + this.mEndMotionPath.width;
    rectF2.bottom = rectF2.top + this.mEndMotionPath.height;
    paramKeyPositionBase.positionAttributes(paramView, rectF1, rectF2, paramFloat1, paramFloat2, paramArrayOfString, paramArrayOffloat);
  }
  
  public void setDrawPath(int paramInt) {
    this.mStartMotionPath.mDrawPath = paramInt;
  }
  
  void setEndState(ConstraintWidget paramConstraintWidget, ConstraintSet paramConstraintSet) {
    MotionPaths motionPaths = this.mEndMotionPath;
    motionPaths.time = 1.0F;
    motionPaths.position = 1.0F;
    readView(motionPaths);
    this.mEndMotionPath.setBounds(paramConstraintWidget.getX(), paramConstraintWidget.getY(), paramConstraintWidget.getWidth(), paramConstraintWidget.getHeight());
    this.mEndMotionPath.applyParameters(paramConstraintSet.getParameters(this.mId));
    this.mEndPoint.setState(paramConstraintWidget, paramConstraintSet, this.mId);
  }
  
  public void setPathMotionArc(int paramInt) {
    this.mPathMotionArc = paramInt;
  }
  
  void setStartCurrentState(View paramView) {
    MotionPaths motionPaths = this.mStartMotionPath;
    motionPaths.time = 0.0F;
    motionPaths.position = 0.0F;
    motionPaths.setBounds(paramView.getX(), paramView.getY(), paramView.getWidth(), paramView.getHeight());
    this.mStartPoint.setState(paramView);
  }
  
  void setStartState(ConstraintWidget paramConstraintWidget, ConstraintSet paramConstraintSet) {
    MotionPaths motionPaths = this.mStartMotionPath;
    motionPaths.time = 0.0F;
    motionPaths.position = 0.0F;
    readView(motionPaths);
    this.mStartMotionPath.setBounds(paramConstraintWidget.getX(), paramConstraintWidget.getY(), paramConstraintWidget.getWidth(), paramConstraintWidget.getHeight());
    ConstraintSet.Constraint constraint = paramConstraintSet.getParameters(this.mId);
    this.mStartMotionPath.applyParameters(constraint);
    this.mMotionStagger = constraint.motion.mMotionStagger;
    this.mStartPoint.setState(paramConstraintWidget, paramConstraintSet, this.mId);
  }
  
  public void setView(View paramView) {
    this.mView = paramView;
    this.mId = paramView.getId();
    ViewGroup.LayoutParams layoutParams = paramView.getLayoutParams();
    if (layoutParams instanceof ConstraintLayout.LayoutParams)
      this.mConstraintTag = ((ConstraintLayout.LayoutParams)layoutParams).getConstraintTag(); 
  }
  
  public void setup(int paramInt1, int paramInt2, float paramFloat, long paramLong) {
    ArrayList arrayList1;
    new HashSet();
    HashSet<String> hashSet1 = new HashSet();
    HashSet<String> hashSet2 = new HashSet();
    HashSet<String> hashSet3 = new HashSet();
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    if (this.mPathMotionArc != Key.UNSET)
      this.mStartMotionPath.mPathMotionArc = this.mPathMotionArc; 
    this.mStartPoint.different(this.mEndPoint, hashSet2);
    ArrayList<Key> arrayList = this.mKeyList;
    if (arrayList != null) {
      Iterator<Key> iterator1 = arrayList.iterator();
      arrayList = null;
      while (true) {
        arrayList1 = arrayList;
        if (iterator1.hasNext()) {
          Key key = iterator1.next();
          if (key instanceof KeyPosition) {
            KeyPosition keyPosition = (KeyPosition)key;
            insertKey(new MotionPaths(paramInt1, paramInt2, keyPosition, this.mStartMotionPath, this.mEndMotionPath));
            if (keyPosition.mCurveFit != Key.UNSET)
              this.mCurveFitType = keyPosition.mCurveFit; 
            continue;
          } 
          if (key instanceof KeyCycle) {
            key.getAttributeNames(hashSet3);
            continue;
          } 
          if (key instanceof KeyTimeCycle) {
            key.getAttributeNames(hashSet1);
            continue;
          } 
          if (key instanceof KeyTrigger) {
            arrayList1 = arrayList;
            if (arrayList == null)
              arrayList1 = new ArrayList<Key>(); 
            arrayList1.add(key);
            arrayList = arrayList1;
            continue;
          } 
          key.setInterpolation((HashMap)hashMap);
          key.getAttributeNames(hashSet2);
          continue;
        } 
        break;
      } 
    } else {
      arrayList1 = null;
    } 
    if (arrayList1 != null)
      this.mKeyTriggers = (KeyTrigger[])arrayList1.toArray((Object[])new KeyTrigger[0]); 
    if (!hashSet2.isEmpty()) {
      this.mAttributesMap = new HashMap<String, SplineSet>();
      for (String str : hashSet2) {
        SplineSet splineSet;
        if (str.startsWith("CUSTOM,")) {
          SparseArray<ConstraintAttribute> sparseArray = new SparseArray();
          String str1 = str.split(",")[1];
          for (Key key : this.mKeyList) {
            if (key.mCustomConstraints == null)
              continue; 
            ConstraintAttribute constraintAttribute = key.mCustomConstraints.get(str1);
            if (constraintAttribute != null)
              sparseArray.append(key.mFramePosition, constraintAttribute); 
          } 
          splineSet = SplineSet.makeCustomSpline(str, sparseArray);
        } else {
          splineSet = SplineSet.makeSpline(str);
        } 
        if (splineSet == null)
          continue; 
        splineSet.setType(str);
        this.mAttributesMap.put(str, splineSet);
      } 
      arrayList = this.mKeyList;
      if (arrayList != null)
        for (Key key : arrayList) {
          if (key instanceof KeyAttributes)
            key.addValues(this.mAttributesMap); 
        }  
      this.mStartPoint.addValues(this.mAttributesMap, 0);
      this.mEndPoint.addValues(this.mAttributesMap, 100);
      for (String str : this.mAttributesMap.keySet()) {
        if (hashMap.containsKey(str)) {
          paramInt1 = ((Integer)hashMap.get(str)).intValue();
        } else {
          paramInt1 = 0;
        } 
        ((SplineSet)this.mAttributesMap.get(str)).setup(paramInt1);
      } 
    } 
    if (!hashSet1.isEmpty()) {
      if (this.mTimeCycleAttributesMap == null)
        this.mTimeCycleAttributesMap = new HashMap<String, TimeCycleSplineSet>(); 
      for (String str : hashSet1) {
        TimeCycleSplineSet timeCycleSplineSet;
        if (this.mTimeCycleAttributesMap.containsKey(str))
          continue; 
        if (str.startsWith("CUSTOM,")) {
          SparseArray<ConstraintAttribute> sparseArray = new SparseArray();
          String str1 = str.split(",")[1];
          for (Key key : this.mKeyList) {
            if (key.mCustomConstraints == null)
              continue; 
            ConstraintAttribute constraintAttribute = key.mCustomConstraints.get(str1);
            if (constraintAttribute != null)
              sparseArray.append(key.mFramePosition, constraintAttribute); 
          } 
          timeCycleSplineSet = TimeCycleSplineSet.makeCustomSpline(str, sparseArray);
        } else {
          timeCycleSplineSet = TimeCycleSplineSet.makeSpline(str, paramLong);
        } 
        if (timeCycleSplineSet == null)
          continue; 
        timeCycleSplineSet.setType(str);
        this.mTimeCycleAttributesMap.put(str, timeCycleSplineSet);
      } 
      arrayList = this.mKeyList;
      if (arrayList != null)
        for (Key key : arrayList) {
          if (key instanceof KeyTimeCycle)
            ((KeyTimeCycle)key).addTimeValues(this.mTimeCycleAttributesMap); 
        }  
      for (String str : this.mTimeCycleAttributesMap.keySet()) {
        if (hashMap.containsKey(str)) {
          paramInt1 = ((Integer)hashMap.get(str)).intValue();
        } else {
          paramInt1 = 0;
        } 
        ((TimeCycleSplineSet)this.mTimeCycleAttributesMap.get(str)).setup(paramInt1);
      } 
    } 
    MotionPaths[] arrayOfMotionPaths = new MotionPaths[this.mMotionPaths.size() + 2];
    arrayOfMotionPaths[0] = this.mStartMotionPath;
    arrayOfMotionPaths[arrayOfMotionPaths.length - 1] = this.mEndMotionPath;
    if (this.mMotionPaths.size() > 0 && this.mCurveFitType == -1)
      this.mCurveFitType = 0; 
    Iterator<MotionPaths> iterator = this.mMotionPaths.iterator();
    for (paramInt1 = 1; iterator.hasNext(); paramInt1++)
      arrayOfMotionPaths[paramInt1] = iterator.next(); 
    HashSet<String> hashSet4 = new HashSet();
    for (String str : this.mEndMotionPath.attributes.keySet()) {
      if (this.mStartMotionPath.attributes.containsKey(str)) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("CUSTOM,");
        stringBuilder.append(str);
        if (!hashSet2.contains(stringBuilder.toString()))
          hashSet4.add(str); 
      } 
    } 
    this.mAttributeNames = hashSet4.<String>toArray(new String[0]);
    this.mAttributeInterpCount = new int[this.mAttributeNames.length];
    paramInt1 = 0;
    while (true) {
      boolean bool;
      String[] arrayOfString = this.mAttributeNames;
      if (paramInt1 < arrayOfString.length) {
        String str = arrayOfString[paramInt1];
        this.mAttributeInterpCount[paramInt1] = 0;
        for (paramInt2 = 0; paramInt2 < arrayOfMotionPaths.length; paramInt2++) {
          if ((arrayOfMotionPaths[paramInt2]).attributes.containsKey(str)) {
            int[] arrayOfInt1 = this.mAttributeInterpCount;
            arrayOfInt1[paramInt1] = arrayOfInt1[paramInt1] + ((ConstraintAttribute)(arrayOfMotionPaths[paramInt2]).attributes.get(str)).noOfInterpValues();
            break;
          } 
        } 
        paramInt1++;
        continue;
      } 
      if ((arrayOfMotionPaths[0]).mPathMotionArc != Key.UNSET) {
        bool = true;
      } else {
        bool = false;
      } 
      boolean[] arrayOfBoolean = new boolean[18 + this.mAttributeNames.length];
      for (paramInt1 = 1; paramInt1 < arrayOfMotionPaths.length; paramInt1++)
        arrayOfMotionPaths[paramInt1].different(arrayOfMotionPaths[paramInt1 - 1], arrayOfBoolean, this.mAttributeNames, bool); 
      int i = 1;
      for (paramInt2 = 0; i < arrayOfBoolean.length; paramInt2 = paramInt1) {
        paramInt1 = paramInt2;
        if (arrayOfBoolean[i])
          paramInt1 = paramInt2 + 1; 
        i++;
      } 
      this.mInterpolateVariables = new int[paramInt2];
      int[] arrayOfInt = this.mInterpolateVariables;
      this.mInterpolateData = new double[arrayOfInt.length];
      this.mInterpolateVelocity = new double[arrayOfInt.length];
      paramInt2 = 1;
      for (i = 0; paramInt2 < arrayOfBoolean.length; i = paramInt1) {
        paramInt1 = i;
        if (arrayOfBoolean[paramInt2]) {
          this.mInterpolateVariables[i] = paramInt2;
          paramInt1 = i + 1;
        } 
        paramInt2++;
      } 
      double[][] arrayOfDouble1 = new double[arrayOfMotionPaths.length][this.mInterpolateVariables.length];
      double[] arrayOfDouble = new double[arrayOfMotionPaths.length];
      for (paramInt1 = 0; paramInt1 < arrayOfMotionPaths.length; paramInt1++) {
        arrayOfMotionPaths[paramInt1].fillStandard(arrayOfDouble1[paramInt1], this.mInterpolateVariables);
        arrayOfDouble[paramInt1] = (arrayOfMotionPaths[paramInt1]).time;
      } 
      paramInt1 = 0;
      while (true) {
        arrayOfInt = this.mInterpolateVariables;
        if (paramInt1 < arrayOfInt.length) {
          if (arrayOfInt[paramInt1] < MotionPaths.names.length) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(MotionPaths.names[this.mInterpolateVariables[paramInt1]]);
            stringBuilder.append(" [");
            String str = stringBuilder.toString();
            for (paramInt2 = 0; paramInt2 < arrayOfMotionPaths.length; paramInt2++) {
              StringBuilder stringBuilder1 = new StringBuilder();
              stringBuilder1.append(str);
              stringBuilder1.append(arrayOfDouble1[paramInt2][paramInt1]);
              str = stringBuilder1.toString();
            } 
          } 
          paramInt1++;
          continue;
        } 
        this.mSpline = new CurveFit[this.mAttributeNames.length + 1];
        paramInt1 = 0;
        while (true) {
          String[] arrayOfString1 = this.mAttributeNames;
          if (paramInt1 < arrayOfString1.length) {
            double[][] arrayOfDouble2 = (double[][])null;
            String str = arrayOfString1[paramInt1];
            arrayOfString1 = null;
            byte b = 0;
            i = 0;
            while (b < arrayOfMotionPaths.length) {
              double[] arrayOfDouble5;
              String[] arrayOfString2 = arrayOfString1;
              paramInt2 = i;
              double[][] arrayOfDouble4 = arrayOfDouble2;
              if (arrayOfMotionPaths[b].hasCustomData(str)) {
                double[] arrayOfDouble6;
                arrayOfDouble4 = arrayOfDouble2;
                if (arrayOfDouble2 == null) {
                  arrayOfDouble6 = new double[arrayOfMotionPaths.length];
                  arrayOfDouble4 = new double[arrayOfMotionPaths.length][arrayOfMotionPaths[b].getCustomDataCount(str)];
                } 
                arrayOfDouble6[i] = (arrayOfMotionPaths[b]).time;
                arrayOfMotionPaths[b].getCustomData(str, arrayOfDouble4[i], 0);
                paramInt2 = i + 1;
                arrayOfDouble5 = arrayOfDouble6;
              } 
              b++;
              arrayOfDouble3 = arrayOfDouble5;
              i = paramInt2;
              arrayOfDouble2 = arrayOfDouble4;
            } 
            double[] arrayOfDouble3 = Arrays.copyOf(arrayOfDouble3, i);
            arrayOfDouble2 = Arrays.<double[]>copyOf(arrayOfDouble2, i);
            CurveFit[] arrayOfCurveFit = this.mSpline;
            arrayOfCurveFit[++paramInt1] = CurveFit.get(this.mCurveFitType, arrayOfDouble3, arrayOfDouble2);
            continue;
          } 
          this.mSpline[0] = CurveFit.get(this.mCurveFitType, arrayOfDouble, arrayOfDouble1);
          if ((arrayOfMotionPaths[0]).mPathMotionArc != Key.UNSET) {
            paramInt2 = arrayOfMotionPaths.length;
            arrayOfInt = new int[paramInt2];
            double[] arrayOfDouble2 = new double[paramInt2];
            double[][] arrayOfDouble3 = new double[paramInt2][2];
            for (paramInt1 = 0; paramInt1 < paramInt2; paramInt1++) {
              arrayOfInt[paramInt1] = (arrayOfMotionPaths[paramInt1]).mPathMotionArc;
              arrayOfDouble2[paramInt1] = (arrayOfMotionPaths[paramInt1]).time;
              arrayOfDouble3[paramInt1][0] = (arrayOfMotionPaths[paramInt1]).x;
              arrayOfDouble3[paramInt1][1] = (arrayOfMotionPaths[paramInt1]).y;
            } 
            this.mArcSpline = CurveFit.getArc(arrayOfInt, arrayOfDouble2, arrayOfDouble3);
          } 
          paramFloat = Float.NaN;
          this.mCycleMap = new HashMap<String, KeyCycleOscillator>();
          if (this.mKeyList != null) {
            for (String str : hashSet3) {
              KeyCycleOscillator keyCycleOscillator = KeyCycleOscillator.makeSpline(str);
              if (keyCycleOscillator == null)
                continue; 
              float f = paramFloat;
              if (keyCycleOscillator.variesByPath()) {
                f = paramFloat;
                if (Float.isNaN(paramFloat))
                  f = getPreCycleDistance(); 
              } 
              keyCycleOscillator.setType(str);
              this.mCycleMap.put(str, keyCycleOscillator);
              paramFloat = f;
            } 
            for (Key key : this.mKeyList) {
              if (key instanceof KeyCycle)
                ((KeyCycle)key).addCycleValues(this.mCycleMap); 
            } 
            Iterator<KeyCycleOscillator> iterator1 = this.mCycleMap.values().iterator();
            while (iterator1.hasNext())
              ((KeyCycleOscillator)iterator1.next()).setup(paramFloat); 
          } 
          return;
        } 
        break;
      } 
      break;
    } 
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(" start: x: ");
    stringBuilder.append(this.mStartMotionPath.x);
    stringBuilder.append(" y: ");
    stringBuilder.append(this.mStartMotionPath.y);
    stringBuilder.append(" end: x: ");
    stringBuilder.append(this.mEndMotionPath.x);
    stringBuilder.append(" y: ");
    stringBuilder.append(this.mEndMotionPath.y);
    return stringBuilder.toString();
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/motion/widget/MotionController.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */