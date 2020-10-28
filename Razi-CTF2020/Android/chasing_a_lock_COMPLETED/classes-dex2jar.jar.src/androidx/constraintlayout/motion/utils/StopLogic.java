package androidx.constraintlayout.motion.utils;

import android.util.Log;
import androidx.constraintlayout.motion.widget.MotionInterpolator;

public class StopLogic extends MotionInterpolator {
  private boolean mBackwards = false;
  
  private float mLastPosition;
  
  private int mNumberOfStages;
  
  private float mStage1Duration;
  
  private float mStage1EndPosition;
  
  private float mStage1Velocity;
  
  private float mStage2Duration;
  
  private float mStage2EndPosition;
  
  private float mStage2Velocity;
  
  private float mStage3Duration;
  
  private float mStage3EndPosition;
  
  private float mStage3Velocity;
  
  private float mStartPosition;
  
  private String mType;
  
  private float calcY(float paramFloat) {
    float f1 = this.mStage1Duration;
    if (paramFloat <= f1) {
      float f = this.mStage1Velocity;
      return f * paramFloat + (this.mStage2Velocity - f) * paramFloat * paramFloat / f1 * 2.0F;
    } 
    int i = this.mNumberOfStages;
    if (i == 1)
      return this.mStage1EndPosition; 
    paramFloat -= f1;
    f1 = this.mStage2Duration;
    if (paramFloat < f1) {
      float f3 = this.mStage1EndPosition;
      float f4 = this.mStage2Velocity;
      return f3 + f4 * paramFloat + (this.mStage3Velocity - f4) * paramFloat * paramFloat / f1 * 2.0F;
    } 
    if (i == 2)
      return this.mStage2EndPosition; 
    float f2 = paramFloat - f1;
    paramFloat = this.mStage3Duration;
    if (f2 < paramFloat) {
      f1 = this.mStage2EndPosition;
      float f = this.mStage3Velocity;
      return f1 + f * f2 - f * f2 * f2 / paramFloat * 2.0F;
    } 
    return this.mStage3EndPosition;
  }
  
  private void setup(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5) {
    float f1 = paramFloat1;
    if (paramFloat1 == 0.0F)
      f1 = 1.0E-4F; 
    this.mStage1Velocity = f1;
    paramFloat1 = f1 / paramFloat3;
    float f2 = paramFloat1 * f1 / 2.0F;
    if (f1 < 0.0F) {
      paramFloat1 = (float)Math.sqrt(((paramFloat2 - -f1 / paramFloat3 * f1 / 2.0F) * paramFloat3));
      if (paramFloat1 < paramFloat4) {
        this.mType = "backward accelerate, decelerate";
        this.mNumberOfStages = 2;
        this.mStage1Velocity = f1;
        this.mStage2Velocity = paramFloat1;
        this.mStage3Velocity = 0.0F;
        this.mStage1Duration = (paramFloat1 - f1) / paramFloat3;
        this.mStage2Duration = paramFloat1 / paramFloat3;
        this.mStage1EndPosition = (f1 + paramFloat1) * this.mStage1Duration / 2.0F;
        this.mStage2EndPosition = paramFloat2;
        this.mStage3EndPosition = paramFloat2;
        return;
      } 
      this.mType = "backward accelerate cruse decelerate";
      this.mNumberOfStages = 3;
      this.mStage1Velocity = f1;
      this.mStage2Velocity = paramFloat4;
      this.mStage3Velocity = paramFloat4;
      this.mStage1Duration = (paramFloat4 - f1) / paramFloat3;
      this.mStage3Duration = paramFloat4 / paramFloat3;
      paramFloat3 = (f1 + paramFloat4) * this.mStage1Duration / 2.0F;
      paramFloat1 = this.mStage3Duration * paramFloat4 / 2.0F;
      this.mStage2Duration = (paramFloat2 - paramFloat3 - paramFloat1) / paramFloat4;
      this.mStage1EndPosition = paramFloat3;
      this.mStage2EndPosition = paramFloat2 - paramFloat1;
      this.mStage3EndPosition = paramFloat2;
      return;
    } 
    if (f2 >= paramFloat2) {
      this.mType = "hard stop";
      paramFloat1 = 2.0F * paramFloat2 / f1;
      this.mNumberOfStages = 1;
      this.mStage1Velocity = f1;
      this.mStage2Velocity = 0.0F;
      this.mStage1EndPosition = paramFloat2;
      this.mStage1Duration = paramFloat1;
      return;
    } 
    float f3 = paramFloat2 - f2;
    f2 = f3 / f1;
    if (f2 + paramFloat1 < paramFloat5) {
      this.mType = "cruse decelerate";
      this.mNumberOfStages = 2;
      this.mStage1Velocity = f1;
      this.mStage2Velocity = f1;
      this.mStage3Velocity = 0.0F;
      this.mStage1EndPosition = f3;
      this.mStage2EndPosition = paramFloat2;
      this.mStage1Duration = f2;
      this.mStage2Duration = paramFloat1;
      return;
    } 
    paramFloat1 = (float)Math.sqrt((paramFloat3 * paramFloat2 + f1 * f1 / 2.0F));
    f2 = (paramFloat1 - f1) / paramFloat3;
    this.mStage1Duration = f2;
    paramFloat5 = paramFloat1 / paramFloat3;
    this.mStage2Duration = paramFloat5;
    if (paramFloat1 < paramFloat4) {
      this.mType = "accelerate decelerate";
      this.mNumberOfStages = 2;
      this.mStage1Velocity = f1;
      this.mStage2Velocity = paramFloat1;
      this.mStage3Velocity = 0.0F;
      this.mStage1Duration = f2;
      this.mStage2Duration = paramFloat5;
      this.mStage1EndPosition = (f1 + paramFloat1) * this.mStage1Duration / 2.0F;
      this.mStage2EndPosition = paramFloat2;
      return;
    } 
    this.mType = "accelerate cruse decelerate";
    this.mNumberOfStages = 3;
    this.mStage1Velocity = f1;
    this.mStage2Velocity = paramFloat4;
    this.mStage3Velocity = paramFloat4;
    this.mStage1Duration = (paramFloat4 - f1) / paramFloat3;
    this.mStage3Duration = paramFloat4 / paramFloat3;
    paramFloat1 = (f1 + paramFloat4) * this.mStage1Duration / 2.0F;
    paramFloat3 = this.mStage3Duration * paramFloat4 / 2.0F;
    this.mStage2Duration = (paramFloat2 - paramFloat1 - paramFloat3) / paramFloat4;
    this.mStage1EndPosition = paramFloat1;
    this.mStage2EndPosition = paramFloat2 - paramFloat3;
    this.mStage3EndPosition = paramFloat2;
  }
  
  public void config(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6) {
    boolean bool;
    this.mStartPosition = paramFloat1;
    if (paramFloat1 > paramFloat2) {
      bool = true;
    } else {
      bool = false;
    } 
    this.mBackwards = bool;
    if (this.mBackwards) {
      setup(-paramFloat3, paramFloat1 - paramFloat2, paramFloat5, paramFloat6, paramFloat4);
    } else {
      setup(paramFloat3, paramFloat2 - paramFloat1, paramFloat5, paramFloat6, paramFloat4);
    } 
  }
  
  public void debug(String paramString1, String paramString2, float paramFloat) {
    String str;
    StringBuilder stringBuilder2 = new StringBuilder();
    stringBuilder2.append(paramString2);
    stringBuilder2.append(" ===== ");
    stringBuilder2.append(this.mType);
    Log.v(paramString1, stringBuilder2.toString());
    StringBuilder stringBuilder3 = new StringBuilder();
    stringBuilder3.append(paramString2);
    if (this.mBackwards) {
      str = "backwards";
    } else {
      str = "forward ";
    } 
    stringBuilder3.append(str);
    stringBuilder3.append(" time = ");
    stringBuilder3.append(paramFloat);
    stringBuilder3.append("  stages ");
    stringBuilder3.append(this.mNumberOfStages);
    Log.v(paramString1, stringBuilder3.toString());
    StringBuilder stringBuilder1 = new StringBuilder();
    stringBuilder1.append(paramString2);
    stringBuilder1.append(" dur ");
    stringBuilder1.append(this.mStage1Duration);
    stringBuilder1.append(" vel ");
    stringBuilder1.append(this.mStage1Velocity);
    stringBuilder1.append(" pos ");
    stringBuilder1.append(this.mStage1EndPosition);
    Log.v(paramString1, stringBuilder1.toString());
    if (this.mNumberOfStages > 1) {
      stringBuilder1 = new StringBuilder();
      stringBuilder1.append(paramString2);
      stringBuilder1.append(" dur ");
      stringBuilder1.append(this.mStage2Duration);
      stringBuilder1.append(" vel ");
      stringBuilder1.append(this.mStage2Velocity);
      stringBuilder1.append(" pos ");
      stringBuilder1.append(this.mStage2EndPosition);
      Log.v(paramString1, stringBuilder1.toString());
    } 
    if (this.mNumberOfStages > 2) {
      stringBuilder1 = new StringBuilder();
      stringBuilder1.append(paramString2);
      stringBuilder1.append(" dur ");
      stringBuilder1.append(this.mStage3Duration);
      stringBuilder1.append(" vel ");
      stringBuilder1.append(this.mStage3Velocity);
      stringBuilder1.append(" pos ");
      stringBuilder1.append(this.mStage3EndPosition);
      Log.v(paramString1, stringBuilder1.toString());
    } 
    float f = this.mStage1Duration;
    if (paramFloat <= f) {
      stringBuilder1 = new StringBuilder();
      stringBuilder1.append(paramString2);
      stringBuilder1.append("stage 0");
      Log.v(paramString1, stringBuilder1.toString());
      return;
    } 
    int i = this.mNumberOfStages;
    if (i == 1) {
      stringBuilder1 = new StringBuilder();
      stringBuilder1.append(paramString2);
      stringBuilder1.append("end stage 0");
      Log.v(paramString1, stringBuilder1.toString());
      return;
    } 
    f = paramFloat - f;
    paramFloat = this.mStage2Duration;
    if (f < paramFloat) {
      stringBuilder1 = new StringBuilder();
      stringBuilder1.append(paramString2);
      stringBuilder1.append(" stage 1");
      Log.v(paramString1, stringBuilder1.toString());
      return;
    } 
    if (i == 2) {
      stringBuilder1 = new StringBuilder();
      stringBuilder1.append(paramString2);
      stringBuilder1.append("end stage 1");
      Log.v(paramString1, stringBuilder1.toString());
      return;
    } 
    if (f - paramFloat < this.mStage3Duration) {
      stringBuilder1 = new StringBuilder();
      stringBuilder1.append(paramString2);
      stringBuilder1.append(" stage 2");
      Log.v(paramString1, stringBuilder1.toString());
      return;
    } 
    stringBuilder1 = new StringBuilder();
    stringBuilder1.append(paramString2);
    stringBuilder1.append(" end stage 2");
    Log.v(paramString1, stringBuilder1.toString());
  }
  
  public float getInterpolation(float paramFloat) {
    float f = calcY(paramFloat);
    this.mLastPosition = paramFloat;
    if (this.mBackwards) {
      paramFloat = this.mStartPosition - f;
    } else {
      paramFloat = this.mStartPosition + f;
    } 
    return paramFloat;
  }
  
  public float getVelocity() {
    float f;
    if (this.mBackwards) {
      f = -getVelocity(this.mLastPosition);
    } else {
      f = getVelocity(this.mLastPosition);
    } 
    return f;
  }
  
  public float getVelocity(float paramFloat) {
    float f1 = this.mStage1Duration;
    if (paramFloat <= f1) {
      float f = this.mStage1Velocity;
      return f + (this.mStage2Velocity - f) * paramFloat / f1;
    } 
    int i = this.mNumberOfStages;
    if (i == 1)
      return 0.0F; 
    float f2 = paramFloat - f1;
    paramFloat = this.mStage2Duration;
    if (f2 < paramFloat) {
      f1 = this.mStage2Velocity;
      return f1 + (this.mStage3Velocity - f1) * f2 / paramFloat;
    } 
    if (i == 2)
      return this.mStage2EndPosition; 
    f2 -= paramFloat;
    paramFloat = this.mStage3Duration;
    if (f2 < paramFloat) {
      f1 = this.mStage3Velocity;
      return f1 - f2 * f1 / paramFloat;
    } 
    return this.mStage3EndPosition;
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/motion/utils/StopLogic.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */