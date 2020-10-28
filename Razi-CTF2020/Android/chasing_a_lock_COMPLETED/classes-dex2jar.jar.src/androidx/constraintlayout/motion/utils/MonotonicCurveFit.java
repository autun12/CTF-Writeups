package androidx.constraintlayout.motion.utils;

public class MonotonicCurveFit extends CurveFit {
  private static final String TAG = "MonotonicCurveFit";
  
  private double[] mT;
  
  private double[][] mTangent;
  
  private double[][] mY;
  
  public MonotonicCurveFit(double[] paramArrayOfdouble, double[][] paramArrayOfdouble1) {
    int i = paramArrayOfdouble.length;
    int j = (paramArrayOfdouble1[0]).length;
    int k = i - 1;
    double[][] arrayOfDouble1 = new double[k][j];
    double[][] arrayOfDouble2 = new double[i][j];
    byte b;
    for (b = 0; b < j; b++) {
      int m;
      for (m = 0; m < k; m = n) {
        int n = m + 1;
        double d1 = paramArrayOfdouble[n];
        double d2 = paramArrayOfdouble[m];
        arrayOfDouble1[m][b] = (paramArrayOfdouble1[n][b] - paramArrayOfdouble1[m][b]) / (d1 - d2);
        if (m == 0) {
          arrayOfDouble2[m][b] = arrayOfDouble1[m][b];
        } else {
          arrayOfDouble2[m][b] = (arrayOfDouble1[m - 1][b] + arrayOfDouble1[m][b]) * 0.5D;
        } 
      } 
      arrayOfDouble2[k][b] = arrayOfDouble1[i - 2][b];
    } 
    for (b = 0; b < k; b++) {
      for (byte b1 = 0; b1 < j; b1++) {
        if (arrayOfDouble1[b][b1] == 0.0D) {
          arrayOfDouble2[b][b1] = 0.0D;
          arrayOfDouble2[b + 1][b1] = 0.0D;
        } else {
          double d1 = arrayOfDouble2[b][b1] / arrayOfDouble1[b][b1];
          int m = b + 1;
          double d2 = arrayOfDouble2[m][b1] / arrayOfDouble1[b][b1];
          double d3 = Math.hypot(d1, d2);
          if (d3 > 9.0D) {
            d3 = 3.0D / d3;
            arrayOfDouble2[b][b1] = d1 * d3 * arrayOfDouble1[b][b1];
            arrayOfDouble2[m][b1] = d3 * d2 * arrayOfDouble1[b][b1];
          } 
        } 
      } 
    } 
    this.mT = paramArrayOfdouble;
    this.mY = paramArrayOfdouble1;
    this.mTangent = arrayOfDouble2;
  }
  
  private static double diff(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6) {
    double d1 = paramDouble2 * paramDouble2;
    double d2 = paramDouble2 * 6.0D;
    double d3 = 3.0D * paramDouble1;
    return -6.0D * d1 * paramDouble4 + d2 * paramDouble4 + 6.0D * d1 * paramDouble3 - d2 * paramDouble3 + d3 * paramDouble6 * d1 + d3 * paramDouble5 * d1 - 2.0D * paramDouble1 * paramDouble6 * paramDouble2 - 4.0D * paramDouble1 * paramDouble5 * paramDouble2 + paramDouble1 * paramDouble5;
  }
  
  private static double interpolate(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6) {
    double d1 = paramDouble2 * paramDouble2;
    double d2 = d1 * paramDouble2;
    double d3 = 3.0D * d1;
    paramDouble6 = paramDouble1 * paramDouble6;
    double d4 = paramDouble1 * paramDouble5;
    return -2.0D * d2 * paramDouble4 + d3 * paramDouble4 + d2 * 2.0D * paramDouble3 - d3 * paramDouble3 + paramDouble3 + paramDouble6 * d2 + d2 * d4 - paramDouble6 * d1 - paramDouble1 * 2.0D * paramDouble5 * d1 + d4 * paramDouble2;
  }
  
  public double getPos(double paramDouble, int paramInt) {
    double[] arrayOfDouble = this.mT;
    int i = arrayOfDouble.length;
    int j = 0;
    if (paramDouble <= arrayOfDouble[0])
      return this.mY[0][paramInt]; 
    int k = i - 1;
    if (paramDouble >= arrayOfDouble[k])
      return this.mY[k][paramInt]; 
    while (j < k) {
      arrayOfDouble = this.mT;
      if (paramDouble == arrayOfDouble[j])
        return this.mY[j][paramInt]; 
      i = j + 1;
      if (paramDouble < arrayOfDouble[i]) {
        double d1 = arrayOfDouble[i] - arrayOfDouble[j];
        double d2 = (paramDouble - arrayOfDouble[j]) / d1;
        double[][] arrayOfDouble1 = this.mY;
        double d3 = arrayOfDouble1[j][paramInt];
        paramDouble = arrayOfDouble1[i][paramInt];
        arrayOfDouble1 = this.mTangent;
        return interpolate(d1, d2, d3, paramDouble, arrayOfDouble1[j][paramInt], arrayOfDouble1[i][paramInt]);
      } 
      j = i;
    } 
    return 0.0D;
  }
  
  public void getPos(double paramDouble, double[] paramArrayOfdouble) {
    double[] arrayOfDouble = this.mT;
    int i = arrayOfDouble.length;
    double[][] arrayOfDouble1 = this.mY;
    boolean bool = false;
    int j = 0;
    int k = (arrayOfDouble1[0]).length;
    if (paramDouble <= arrayOfDouble[0]) {
      for (j = 0; j < k; j++)
        paramArrayOfdouble[j] = this.mY[0][j]; 
      return;
    } 
    int m = i - 1;
    if (paramDouble >= arrayOfDouble[m]) {
      while (j < k) {
        paramArrayOfdouble[j] = this.mY[m][j];
        j++;
      } 
      return;
    } 
    for (j = 0; j < m; j = n) {
      if (paramDouble == this.mT[j])
        for (i = 0; i < k; i++)
          paramArrayOfdouble[i] = this.mY[j][i];  
      double[] arrayOfDouble2 = this.mT;
      int n = j + 1;
      if (paramDouble < arrayOfDouble2[n]) {
        double d = arrayOfDouble2[n] - arrayOfDouble2[j];
        paramDouble = (paramDouble - arrayOfDouble2[j]) / d;
        for (i = bool; i < k; i++) {
          double[][] arrayOfDouble3 = this.mY;
          double d1 = arrayOfDouble3[j][i];
          double d2 = arrayOfDouble3[n][i];
          arrayOfDouble3 = this.mTangent;
          paramArrayOfdouble[i] = interpolate(d, paramDouble, d1, d2, arrayOfDouble3[j][i], arrayOfDouble3[n][i]);
        } 
        return;
      } 
    } 
  }
  
  public void getPos(double paramDouble, float[] paramArrayOffloat) {
    double[] arrayOfDouble = this.mT;
    int i = arrayOfDouble.length;
    double[][] arrayOfDouble1 = this.mY;
    boolean bool = false;
    int j = 0;
    int k = (arrayOfDouble1[0]).length;
    if (paramDouble <= arrayOfDouble[0]) {
      for (j = 0; j < k; j++)
        paramArrayOffloat[j] = (float)this.mY[0][j]; 
      return;
    } 
    int m = i - 1;
    if (paramDouble >= arrayOfDouble[m]) {
      while (j < k) {
        paramArrayOffloat[j] = (float)this.mY[m][j];
        j++;
      } 
      return;
    } 
    for (j = 0; j < m; j = n) {
      if (paramDouble == this.mT[j])
        for (i = 0; i < k; i++)
          paramArrayOffloat[i] = (float)this.mY[j][i];  
      double[] arrayOfDouble2 = this.mT;
      int n = j + 1;
      if (paramDouble < arrayOfDouble2[n]) {
        double d1 = arrayOfDouble2[n] - arrayOfDouble2[j];
        double d2 = (paramDouble - arrayOfDouble2[j]) / d1;
        for (i = bool; i < k; i++) {
          double[][] arrayOfDouble3 = this.mY;
          double d = arrayOfDouble3[j][i];
          paramDouble = arrayOfDouble3[n][i];
          arrayOfDouble3 = this.mTangent;
          paramArrayOffloat[i] = (float)interpolate(d1, d2, d, paramDouble, arrayOfDouble3[j][i], arrayOfDouble3[n][i]);
        } 
        return;
      } 
    } 
  }
  
  public double getSlope(double paramDouble, int paramInt) {
    double[] arrayOfDouble = this.mT;
    int i = arrayOfDouble.length;
    int j = 0;
    if (paramDouble < arrayOfDouble[0]) {
      paramDouble = arrayOfDouble[0];
    } else {
      int k = i - 1;
      if (paramDouble >= arrayOfDouble[k])
        paramDouble = arrayOfDouble[k]; 
    } 
    while (j < i - 1) {
      arrayOfDouble = this.mT;
      int k = j + 1;
      if (paramDouble <= arrayOfDouble[k]) {
        double d1 = arrayOfDouble[k] - arrayOfDouble[j];
        paramDouble = (paramDouble - arrayOfDouble[j]) / d1;
        double[][] arrayOfDouble1 = this.mY;
        double d2 = arrayOfDouble1[j][paramInt];
        double d3 = arrayOfDouble1[k][paramInt];
        arrayOfDouble1 = this.mTangent;
        return diff(d1, paramDouble, d2, d3, arrayOfDouble1[j][paramInt], arrayOfDouble1[k][paramInt]) / d1;
      } 
      j = k;
    } 
    return 0.0D;
  }
  
  public void getSlope(double paramDouble, double[] paramArrayOfdouble) {
    double[] arrayOfDouble = this.mT;
    int i = arrayOfDouble.length;
    double[][] arrayOfDouble1 = this.mY;
    byte b = 0;
    int j = (arrayOfDouble1[0]).length;
    if (paramDouble <= arrayOfDouble[0]) {
      paramDouble = arrayOfDouble[0];
    } else {
      int m = i - 1;
      if (paramDouble >= arrayOfDouble[m])
        paramDouble = arrayOfDouble[m]; 
    } 
    int k;
    for (k = 0; k < i - 1; k = m) {
      double[] arrayOfDouble2 = this.mT;
      int m = k + 1;
      if (paramDouble <= arrayOfDouble2[m]) {
        double d = arrayOfDouble2[m] - arrayOfDouble2[k];
        paramDouble = (paramDouble - arrayOfDouble2[k]) / d;
        while (b < j) {
          double[][] arrayOfDouble3 = this.mY;
          double d1 = arrayOfDouble3[k][b];
          double d2 = arrayOfDouble3[m][b];
          arrayOfDouble3 = this.mTangent;
          paramArrayOfdouble[b] = diff(d, paramDouble, d1, d2, arrayOfDouble3[k][b], arrayOfDouble3[m][b]) / d;
          b++;
        } 
        break;
      } 
    } 
  }
  
  public double[] getTimePoints() {
    return this.mT;
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/motion/utils/MonotonicCurveFit.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */