package androidx.constraintlayout.motion.utils;

import java.util.Arrays;

public class Oscillator {
  public static final int BOUNCE = 6;
  
  public static final int COS_WAVE = 5;
  
  public static final int REVERSE_SAW_WAVE = 4;
  
  public static final int SAW_WAVE = 3;
  
  public static final int SIN_WAVE = 0;
  
  public static final int SQUARE_WAVE = 1;
  
  public static String TAG = "Oscillator";
  
  public static final int TRIANGLE_WAVE = 2;
  
  double PI2 = 6.283185307179586D;
  
  double[] mArea;
  
  private boolean mNormalized = false;
  
  float[] mPeriod = new float[0];
  
  double[] mPosition = new double[0];
  
  int mType;
  
  public void addPoint(double paramDouble, float paramFloat) {
    int i = this.mPeriod.length + 1;
    int j = Arrays.binarySearch(this.mPosition, paramDouble);
    int k = j;
    if (j < 0)
      k = -j - 1; 
    this.mPosition = Arrays.copyOf(this.mPosition, i);
    this.mPeriod = Arrays.copyOf(this.mPeriod, i);
    this.mArea = new double[i];
    double[] arrayOfDouble = this.mPosition;
    System.arraycopy(arrayOfDouble, k, arrayOfDouble, k + 1, i - k - 1);
    this.mPosition[k] = paramDouble;
    this.mPeriod[k] = paramFloat;
    this.mNormalized = false;
  }
  
  double getDP(double paramDouble) {
    double d2;
    double d1 = 0.0D;
    if (paramDouble <= 0.0D) {
      d2 = 1.0E-5D;
    } else {
      d2 = paramDouble;
      if (paramDouble >= 1.0D)
        d2 = 0.999999D; 
    } 
    int i = Arrays.binarySearch(this.mPosition, d2);
    if (i > 0)
      return 0.0D; 
    paramDouble = d1;
    if (i != 0) {
      i = -i - 1;
      float[] arrayOfFloat = this.mPeriod;
      float f = arrayOfFloat[i];
      int j = i - 1;
      paramDouble = (f - arrayOfFloat[j]);
      double[] arrayOfDouble = this.mPosition;
      paramDouble /= arrayOfDouble[i] - arrayOfDouble[j];
      paramDouble = arrayOfFloat[j] - paramDouble * arrayOfDouble[j] + d2 * paramDouble;
    } 
    return paramDouble;
  }
  
  double getP(double paramDouble) {
    double d2;
    double d1 = 1.0D;
    if (paramDouble < 0.0D) {
      d2 = 0.0D;
    } else {
      d2 = paramDouble;
      if (paramDouble > 1.0D)
        d2 = 1.0D; 
    } 
    int i = Arrays.binarySearch(this.mPosition, d2);
    if (i > 0) {
      paramDouble = d1;
    } else if (i != 0) {
      int j = -i - 1;
      float[] arrayOfFloat = this.mPeriod;
      float f = arrayOfFloat[j];
      i = j - 1;
      paramDouble = (f - arrayOfFloat[i]);
      double[] arrayOfDouble = this.mPosition;
      paramDouble /= arrayOfDouble[j] - arrayOfDouble[i];
      paramDouble = this.mArea[i] + (arrayOfFloat[i] - arrayOfDouble[i] * paramDouble) * (d2 - arrayOfDouble[i]) + paramDouble * (d2 * d2 - arrayOfDouble[i] * arrayOfDouble[i]) / 2.0D;
    } else {
      paramDouble = 0.0D;
    } 
    return paramDouble;
  }
  
  public double getSlope(double paramDouble) {
    double d1;
    double d2;
    switch (this.mType) {
      default:
        d1 = this.PI2 * getDP(paramDouble);
        d2 = Math.cos(this.PI2 * getP(paramDouble));
        paramDouble = d1;
        return paramDouble * d2;
      case 6:
        d2 = getDP(paramDouble) * 4.0D;
        paramDouble = (getP(paramDouble) * 4.0D + 2.0D) % 4.0D - 2.0D;
        return d2 * paramDouble;
      case 5:
        d2 = -this.PI2 * getDP(paramDouble);
        d1 = Math.sin(this.PI2 * getP(paramDouble));
        paramDouble = d2;
        d2 = d1;
        return paramDouble * d2;
      case 4:
        paramDouble = -getDP(paramDouble);
        return paramDouble * 2.0D;
      case 3:
        paramDouble = getDP(paramDouble);
        return paramDouble * 2.0D;
      case 2:
        d2 = getDP(paramDouble) * 4.0D;
        paramDouble = Math.signum((getP(paramDouble) * 4.0D + 3.0D) % 4.0D - 2.0D);
        return d2 * paramDouble;
      case 1:
        break;
    } 
    return 0.0D;
  }
  
  public double getValue(double paramDouble) {
    switch (this.mType) {
      default:
        return Math.sin(this.PI2 * getP(paramDouble));
      case 6:
        paramDouble = 1.0D - Math.abs(getP(paramDouble) * 4.0D % 4.0D - 2.0D);
        paramDouble *= paramDouble;
        return 1.0D - paramDouble;
      case 5:
        return Math.cos(this.PI2 * getP(paramDouble));
      case 4:
        paramDouble = (getP(paramDouble) * 2.0D + 1.0D) % 2.0D;
        return 1.0D - paramDouble;
      case 3:
        return (getP(paramDouble) * 2.0D + 1.0D) % 2.0D - 1.0D;
      case 2:
        paramDouble = Math.abs((getP(paramDouble) * 4.0D + 1.0D) % 4.0D - 2.0D);
        return 1.0D - paramDouble;
      case 1:
        break;
    } 
    return Math.signum(0.5D - getP(paramDouble) % 1.0D);
  }
  
  public void normalize() {
    double d = 0.0D;
    byte b = 0;
    while (true) {
      float[] arrayOfFloat = this.mPeriod;
      if (b < arrayOfFloat.length) {
        d += arrayOfFloat[b];
        b++;
        continue;
      } 
      double d1 = 0.0D;
      b = 1;
      while (true) {
        arrayOfFloat = this.mPeriod;
        if (b < arrayOfFloat.length) {
          int i = b - 1;
          float f = (arrayOfFloat[i] + arrayOfFloat[b]) / 2.0F;
          double[] arrayOfDouble = this.mPosition;
          d1 += (arrayOfDouble[b] - arrayOfDouble[i]) * f;
          b++;
          continue;
        } 
        b = 0;
        while (true) {
          arrayOfFloat = this.mPeriod;
          if (b < arrayOfFloat.length) {
            arrayOfFloat[b] = (float)(arrayOfFloat[b] * d / d1);
            b++;
            continue;
          } 
          this.mArea[0] = 0.0D;
          b = 1;
          while (true) {
            arrayOfFloat = this.mPeriod;
            if (b < arrayOfFloat.length) {
              int i = b - 1;
              float f = (arrayOfFloat[i] + arrayOfFloat[b]) / 2.0F;
              double[] arrayOfDouble = this.mPosition;
              d1 = arrayOfDouble[b];
              d = arrayOfDouble[i];
              arrayOfDouble = this.mArea;
              arrayOfDouble[b] = arrayOfDouble[i] + (d1 - d) * f;
              b++;
              continue;
            } 
            this.mNormalized = true;
            return;
          } 
          break;
        } 
        break;
      } 
      break;
    } 
  }
  
  public void setType(int paramInt) {
    this.mType = paramInt;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("pos =");
    stringBuilder.append(Arrays.toString(this.mPosition));
    stringBuilder.append(" period=");
    stringBuilder.append(Arrays.toString(this.mPeriod));
    return stringBuilder.toString();
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/motion/utils/Oscillator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */