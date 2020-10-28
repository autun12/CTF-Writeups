package androidx.constraintlayout.motion.utils;

public class LinearCurveFit extends CurveFit {
  private static final String TAG = "LinearCurveFit";
  
  private double[] mT;
  
  private double mTotalLength = Double.NaN;
  
  private double[][] mY;
  
  public LinearCurveFit(double[] paramArrayOfdouble, double[][] paramArrayOfdouble1) {
    int i = paramArrayOfdouble.length;
    i = (paramArrayOfdouble1[0]).length;
    this.mT = paramArrayOfdouble;
    this.mY = paramArrayOfdouble1;
    if (i > 2) {
      double d1 = 0.0D;
      double d2 = d1;
      i = 0;
      while (i < paramArrayOfdouble.length) {
        double d3 = paramArrayOfdouble1[i][0];
        double d4 = paramArrayOfdouble1[i][0];
        if (i > 0)
          Math.hypot(d3 - d1, d4 - d2); 
        i++;
        d1 = d3;
        d2 = d4;
      } 
      this.mTotalLength = 0.0D;
    } 
  }
  
  private double getLength2D(double paramDouble) {
    if (Double.isNaN(this.mTotalLength))
      return 0.0D; 
    double[] arrayOfDouble = this.mT;
    int i = arrayOfDouble.length;
    if (paramDouble <= arrayOfDouble[0])
      return 0.0D; 
    int j = i - 1;
    if (paramDouble >= arrayOfDouble[j])
      return this.mTotalLength; 
    double d1 = 0.0D;
    double d2 = d1;
    double d3 = d2;
    i = 0;
    double d4 = d2;
    while (i < j) {
      double[][] arrayOfDouble2 = this.mY;
      double d5 = arrayOfDouble2[i][0];
      double d6 = arrayOfDouble2[i][1];
      d2 = d1;
      if (i > 0)
        d2 = d1 + Math.hypot(d5 - d4, d6 - d3); 
      double[] arrayOfDouble1 = this.mT;
      if (paramDouble == arrayOfDouble1[i])
        return d2; 
      int k = i + 1;
      if (paramDouble < arrayOfDouble1[k]) {
        d1 = arrayOfDouble1[k];
        d3 = arrayOfDouble1[i];
        d3 = (paramDouble - arrayOfDouble1[i]) / (d1 - d3);
        double[][] arrayOfDouble3 = this.mY;
        double d7 = arrayOfDouble3[i][0];
        d4 = arrayOfDouble3[k][0];
        paramDouble = arrayOfDouble3[i][1];
        d1 = arrayOfDouble3[k][1];
        double d8 = 1.0D - d3;
        return d2 + Math.hypot(d6 - paramDouble * d8 + d1 * d3, d5 - d7 * d8 + d4 * d3);
      } 
      i = k;
      d4 = d5;
      d3 = d6;
      d1 = d2;
    } 
    return 0.0D;
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
        double d1 = arrayOfDouble[i];
        double d2 = arrayOfDouble[j];
        paramDouble = (paramDouble - arrayOfDouble[j]) / (d1 - d2);
        double[][] arrayOfDouble1 = this.mY;
        return arrayOfDouble1[j][paramInt] * (1.0D - paramDouble) + arrayOfDouble1[i][paramInt] * paramDouble;
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
        double d1 = arrayOfDouble2[n];
        double d2 = arrayOfDouble2[j];
        paramDouble = (paramDouble - arrayOfDouble2[j]) / (d1 - d2);
        for (i = bool; i < k; i++) {
          double[][] arrayOfDouble3 = this.mY;
          paramArrayOfdouble[i] = arrayOfDouble3[j][i] * (1.0D - paramDouble) + arrayOfDouble3[n][i] * paramDouble;
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
      arrayOfDouble = this.mT;
      int n = j + 1;
      if (paramDouble < arrayOfDouble[n]) {
        double d1 = arrayOfDouble[n];
        double d2 = arrayOfDouble[j];
        paramDouble = (paramDouble - arrayOfDouble[j]) / (d1 - d2);
        for (i = bool; i < k; i++) {
          double[][] arrayOfDouble2 = this.mY;
          paramArrayOffloat[i] = (float)(arrayOfDouble2[j][i] * (1.0D - paramDouble) + arrayOfDouble2[n][i] * paramDouble);
        } 
        return;
      } 
    } 
  }
  
  public double getSlope(double paramDouble, int paramInt) {
    double d;
    int k;
    double[] arrayOfDouble = this.mT;
    int i = arrayOfDouble.length;
    int j = 0;
    if (paramDouble < arrayOfDouble[0]) {
      d = arrayOfDouble[0];
      k = j;
    } else {
      int m = i - 1;
      k = j;
      d = paramDouble;
      if (paramDouble >= arrayOfDouble[m]) {
        d = arrayOfDouble[m];
        k = j;
      } 
    } 
    while (k < i - 1) {
      arrayOfDouble = this.mT;
      j = k + 1;
      if (d <= arrayOfDouble[j]) {
        paramDouble = arrayOfDouble[j];
        d = arrayOfDouble[k];
        double d1 = arrayOfDouble[k];
        double[][] arrayOfDouble1 = this.mY;
        d1 = arrayOfDouble1[k][paramInt];
        return (arrayOfDouble1[j][paramInt] - d1) / (paramDouble - d);
      } 
      k = j;
    } 
    return 0.0D;
  }
  
  public void getSlope(double paramDouble, double[] paramArrayOfdouble) {
    double d;
    double[] arrayOfDouble = this.mT;
    int i = arrayOfDouble.length;
    double[][] arrayOfDouble1 = this.mY;
    byte b = 0;
    int j = (arrayOfDouble1[0]).length;
    if (paramDouble <= arrayOfDouble[0]) {
      d = arrayOfDouble[0];
    } else {
      int m = i - 1;
      d = paramDouble;
      if (paramDouble >= arrayOfDouble[m])
        d = arrayOfDouble[m]; 
    } 
    int k;
    for (k = 0; k < i - 1; k = m) {
      double[] arrayOfDouble2 = this.mT;
      int m = k + 1;
      if (d <= arrayOfDouble2[m]) {
        d = arrayOfDouble2[m];
        paramDouble = arrayOfDouble2[k];
        double d1 = arrayOfDouble2[k];
        while (b < j) {
          double[][] arrayOfDouble3 = this.mY;
          d1 = arrayOfDouble3[k][b];
          paramArrayOfdouble[b] = (arrayOfDouble3[m][b] - d1) / (d - paramDouble);
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


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/motion/utils/LinearCurveFit.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */