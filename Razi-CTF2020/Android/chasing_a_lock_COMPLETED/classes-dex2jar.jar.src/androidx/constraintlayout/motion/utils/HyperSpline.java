package androidx.constraintlayout.motion.utils;

public class HyperSpline {
  double[][] mCtl;
  
  Cubic[][] mCurve;
  
  double[] mCurveLength;
  
  int mDimensionality;
  
  int mPoints;
  
  double mTotalLength;
  
  public HyperSpline() {}
  
  public HyperSpline(double[][] paramArrayOfdouble) {
    setup(paramArrayOfdouble);
  }
  
  static Cubic[] calcNaturalCubic(int paramInt, double[] paramArrayOfdouble) {
    double[] arrayOfDouble1 = new double[paramInt];
    double[] arrayOfDouble2 = new double[paramInt];
    double[] arrayOfDouble3 = new double[paramInt];
    int i = paramInt - 1;
    int j = 0;
    arrayOfDouble1[0] = 0.5D;
    int k = 1;
    for (paramInt = 1; paramInt < i; paramInt++)
      arrayOfDouble1[paramInt] = 1.0D / (4.0D - arrayOfDouble1[paramInt - 1]); 
    int m = i - 1;
    arrayOfDouble1[i] = 1.0D / (2.0D - arrayOfDouble1[m]);
    arrayOfDouble2[0] = (paramArrayOfdouble[1] - paramArrayOfdouble[0]) * 3.0D * arrayOfDouble1[0];
    for (paramInt = k; paramInt < i; paramInt = k) {
      k = paramInt + 1;
      double d = paramArrayOfdouble[k];
      int n = paramInt - 1;
      arrayOfDouble2[paramInt] = ((d - paramArrayOfdouble[n]) * 3.0D - arrayOfDouble2[n]) * arrayOfDouble1[paramInt];
    } 
    arrayOfDouble2[i] = ((paramArrayOfdouble[i] - paramArrayOfdouble[m]) * 3.0D - arrayOfDouble2[m]) * arrayOfDouble1[i];
    arrayOfDouble3[i] = arrayOfDouble2[i];
    for (paramInt = m; paramInt >= 0; paramInt--)
      arrayOfDouble3[paramInt] = arrayOfDouble2[paramInt] - arrayOfDouble1[paramInt] * arrayOfDouble3[paramInt + 1]; 
    Cubic[] arrayOfCubic = new Cubic[i];
    for (paramInt = j; paramInt < i; paramInt = j) {
      double d2 = (float)paramArrayOfdouble[paramInt];
      double d1 = arrayOfDouble3[paramInt];
      j = paramInt + 1;
      arrayOfCubic[paramInt] = new Cubic(d2, d1, (paramArrayOfdouble[j] - paramArrayOfdouble[paramInt]) * 3.0D - arrayOfDouble3[paramInt] * 2.0D - arrayOfDouble3[j], (paramArrayOfdouble[paramInt] - paramArrayOfdouble[j]) * 2.0D + arrayOfDouble3[paramInt] + arrayOfDouble3[j]);
    } 
    return arrayOfCubic;
  }
  
  public double approxLength(Cubic[] paramArrayOfCubic) {
    double d4;
    int i = paramArrayOfCubic.length;
    double[] arrayOfDouble = new double[paramArrayOfCubic.length];
    double d1 = 0.0D;
    double d2 = 0.0D;
    double d3 = d2;
    while (true) {
      i = 0;
      boolean bool = false;
      d4 = d1;
      if (d2 < 1.0D) {
        d4 = 0.0D;
        for (i = bool; i < paramArrayOfCubic.length; i++) {
          double d5 = arrayOfDouble[i];
          double d6 = paramArrayOfCubic[i].eval(d2);
          arrayOfDouble[i] = d6;
          d5 -= d6;
          d4 += d5 * d5;
        } 
        double d = d3;
        if (d2 > 0.0D)
          d = d3 + Math.sqrt(d4); 
        d2 += 0.1D;
        d3 = d;
        continue;
      } 
      break;
    } 
    while (i < paramArrayOfCubic.length) {
      double d = arrayOfDouble[i];
      d2 = paramArrayOfCubic[i].eval(1.0D);
      arrayOfDouble[i] = d2;
      d2 = d - d2;
      d4 += d2 * d2;
      i++;
    } 
    return d3 + Math.sqrt(d4);
  }
  
  public double getPos(double paramDouble, int paramInt) {
    paramDouble *= this.mTotalLength;
    byte b = 0;
    while (true) {
      double[] arrayOfDouble = this.mCurveLength;
      if (b < arrayOfDouble.length - 1 && arrayOfDouble[b] < paramDouble) {
        paramDouble -= arrayOfDouble[b];
        b++;
        continue;
      } 
      break;
    } 
    return this.mCurve[paramInt][b].eval(paramDouble / this.mCurveLength[b]);
  }
  
  public void getPos(double paramDouble, double[] paramArrayOfdouble) {
    byte b3;
    double d = this.mTotalLength;
    byte b1 = 0;
    paramDouble *= d;
    byte b2 = 0;
    while (true) {
      double[] arrayOfDouble = this.mCurveLength;
      b3 = b1;
      if (b2 < arrayOfDouble.length - 1) {
        b3 = b1;
        if (arrayOfDouble[b2] < paramDouble) {
          paramDouble -= arrayOfDouble[b2];
          b2++;
          continue;
        } 
      } 
      break;
    } 
    while (b3 < paramArrayOfdouble.length) {
      paramArrayOfdouble[b3] = this.mCurve[b3][b2].eval(paramDouble / this.mCurveLength[b2]);
      b3++;
    } 
  }
  
  public void getPos(double paramDouble, float[] paramArrayOffloat) {
    byte b3;
    double d = this.mTotalLength;
    byte b1 = 0;
    paramDouble *= d;
    byte b2 = 0;
    while (true) {
      double[] arrayOfDouble = this.mCurveLength;
      b3 = b1;
      if (b2 < arrayOfDouble.length - 1) {
        b3 = b1;
        if (arrayOfDouble[b2] < paramDouble) {
          paramDouble -= arrayOfDouble[b2];
          b2++;
          continue;
        } 
      } 
      break;
    } 
    while (b3 < paramArrayOffloat.length) {
      paramArrayOffloat[b3] = (float)this.mCurve[b3][b2].eval(paramDouble / this.mCurveLength[b2]);
      b3++;
    } 
  }
  
  public void getVelocity(double paramDouble, double[] paramArrayOfdouble) {
    byte b3;
    double d = this.mTotalLength;
    byte b1 = 0;
    paramDouble *= d;
    byte b2 = 0;
    while (true) {
      double[] arrayOfDouble = this.mCurveLength;
      b3 = b1;
      if (b2 < arrayOfDouble.length - 1) {
        b3 = b1;
        if (arrayOfDouble[b2] < paramDouble) {
          paramDouble -= arrayOfDouble[b2];
          b2++;
          continue;
        } 
      } 
      break;
    } 
    while (b3 < paramArrayOfdouble.length) {
      paramArrayOfdouble[b3] = this.mCurve[b3][b2].vel(paramDouble / this.mCurveLength[b2]);
      b3++;
    } 
  }
  
  public void setup(double[][] paramArrayOfdouble) {
    this.mDimensionality = (paramArrayOfdouble[0]).length;
    this.mPoints = paramArrayOfdouble.length;
    this.mCtl = new double[this.mDimensionality][this.mPoints];
    this.mCurve = new Cubic[this.mDimensionality][];
    byte b;
    for (b = 0; b < this.mDimensionality; b++) {
      for (byte b1 = 0; b1 < this.mPoints; b1++)
        this.mCtl[b][b1] = paramArrayOfdouble[b1][b]; 
    } 
    b = 0;
    while (true) {
      int i = this.mDimensionality;
      if (b < i) {
        Cubic[][] arrayOfCubic1 = this.mCurve;
        double[][] arrayOfDouble = this.mCtl;
        arrayOfCubic1[b] = calcNaturalCubic((arrayOfDouble[b]).length, arrayOfDouble[b]);
        b++;
        continue;
      } 
      this.mCurveLength = new double[this.mPoints - 1];
      this.mTotalLength = 0.0D;
      Cubic[] arrayOfCubic = new Cubic[i];
      for (b = 0; b < this.mCurveLength.length; b++) {
        for (i = 0; i < this.mDimensionality; i++)
          arrayOfCubic[i] = this.mCurve[i][b]; 
        double d1 = this.mTotalLength;
        double[] arrayOfDouble = this.mCurveLength;
        double d2 = approxLength(arrayOfCubic);
        arrayOfDouble[b] = d2;
        this.mTotalLength = d1 + d2;
      } 
      return;
    } 
  }
  
  public static class Cubic {
    public static final double HALF = 0.5D;
    
    public static final double THIRD = 0.3333333333333333D;
    
    double mA;
    
    double mB;
    
    double mC;
    
    double mD;
    
    public Cubic(double param1Double1, double param1Double2, double param1Double3, double param1Double4) {
      this.mA = param1Double1;
      this.mB = param1Double2;
      this.mC = param1Double3;
      this.mD = param1Double4;
    }
    
    public double eval(double param1Double) {
      return ((this.mD * param1Double + this.mC) * param1Double + this.mB) * param1Double + this.mA;
    }
    
    public double vel(double param1Double) {
      return (this.mD * 0.3333333333333333D * param1Double + this.mC * 0.5D) * param1Double + this.mB;
    }
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/motion/utils/HyperSpline.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */