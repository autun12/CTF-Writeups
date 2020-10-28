package androidx.constraintlayout.solver;

import java.io.PrintStream;
import java.util.Arrays;

public class ArrayLinkedVariables implements ArrayRow.ArrayRowVariables {
  private static final boolean DEBUG = false;
  
  private static final boolean FULL_NEW_CHECK = false;
  
  static final int NONE = -1;
  
  private static float epsilon = 0.001F;
  
  private int ROW_SIZE = 8;
  
  private SolverVariable candidate = null;
  
  int currentSize = 0;
  
  private int[] mArrayIndices;
  
  private int[] mArrayNextIndices;
  
  private float[] mArrayValues;
  
  protected final Cache mCache;
  
  private boolean mDidFillOnce;
  
  private int mHead;
  
  private int mLast;
  
  private final ArrayRow mRow;
  
  ArrayLinkedVariables(ArrayRow paramArrayRow, Cache paramCache) {
    int i = this.ROW_SIZE;
    this.mArrayIndices = new int[i];
    this.mArrayNextIndices = new int[i];
    this.mArrayValues = new float[i];
    this.mHead = -1;
    this.mLast = -1;
    this.mDidFillOnce = false;
    this.mRow = paramArrayRow;
    this.mCache = paramCache;
  }
  
  public void add(SolverVariable paramSolverVariable, float paramFloat, boolean paramBoolean) {
    float f = epsilon;
    if (paramFloat > -f && paramFloat < f)
      return; 
    int i = this.mHead;
    if (i == -1) {
      this.mHead = 0;
      float[] arrayOfFloat = this.mArrayValues;
      i = this.mHead;
      arrayOfFloat[i] = paramFloat;
      this.mArrayIndices[i] = paramSolverVariable.id;
      this.mArrayNextIndices[this.mHead] = -1;
      paramSolverVariable.usageInRowCount++;
      paramSolverVariable.addToRow(this.mRow);
      this.currentSize++;
      if (!this.mDidFillOnce) {
        i = ++this.mLast;
        arrayOfInt1 = this.mArrayIndices;
        if (i >= arrayOfInt1.length) {
          this.mDidFillOnce = true;
          this.mLast = arrayOfInt1.length - 1;
        } 
      } 
      return;
    } 
    int j = 0;
    int k = -1;
    while (i != -1 && j < this.currentSize) {
      if (this.mArrayIndices[i] == ((SolverVariable)arrayOfInt1).id) {
        f = this.mArrayValues[i] + paramFloat;
        float f1 = epsilon;
        paramFloat = f;
        if (f > -f1) {
          paramFloat = f;
          if (f < f1)
            paramFloat = 0.0F; 
        } 
        this.mArrayValues[i] = paramFloat;
        if (paramFloat == 0.0F) {
          if (i == this.mHead) {
            this.mHead = this.mArrayNextIndices[i];
          } else {
            int[] arrayOfInt = this.mArrayNextIndices;
            arrayOfInt[k] = arrayOfInt[i];
          } 
          if (paramBoolean)
            arrayOfInt1.removeFromRow(this.mRow); 
          if (this.mDidFillOnce)
            this.mLast = i; 
          ((SolverVariable)arrayOfInt1).usageInRowCount--;
          this.currentSize--;
        } 
        return;
      } 
      if (this.mArrayIndices[i] < ((SolverVariable)arrayOfInt1).id)
        k = i; 
      i = this.mArrayNextIndices[i];
      j++;
    } 
    i = this.mLast;
    if (this.mDidFillOnce) {
      int[] arrayOfInt = this.mArrayIndices;
      if (arrayOfInt[i] != -1)
        i = arrayOfInt.length; 
    } else {
      i++;
    } 
    int[] arrayOfInt2 = this.mArrayIndices;
    j = i;
    if (i >= arrayOfInt2.length) {
      j = i;
      if (this.currentSize < arrayOfInt2.length) {
        byte b = 0;
        while (true) {
          arrayOfInt2 = this.mArrayIndices;
          j = i;
          if (b < arrayOfInt2.length) {
            if (arrayOfInt2[b] == -1) {
              j = b;
              break;
            } 
            b++;
            continue;
          } 
          break;
        } 
      } 
    } 
    arrayOfInt2 = this.mArrayIndices;
    i = j;
    if (j >= arrayOfInt2.length) {
      i = arrayOfInt2.length;
      this.ROW_SIZE *= 2;
      this.mDidFillOnce = false;
      this.mLast = i - 1;
      this.mArrayValues = Arrays.copyOf(this.mArrayValues, this.ROW_SIZE);
      this.mArrayIndices = Arrays.copyOf(this.mArrayIndices, this.ROW_SIZE);
      this.mArrayNextIndices = Arrays.copyOf(this.mArrayNextIndices, this.ROW_SIZE);
    } 
    this.mArrayIndices[i] = ((SolverVariable)arrayOfInt1).id;
    this.mArrayValues[i] = paramFloat;
    if (k != -1) {
      arrayOfInt2 = this.mArrayNextIndices;
      arrayOfInt2[i] = arrayOfInt2[k];
      arrayOfInt2[k] = i;
    } else {
      this.mArrayNextIndices[i] = this.mHead;
      this.mHead = i;
    } 
    ((SolverVariable)arrayOfInt1).usageInRowCount++;
    arrayOfInt1.addToRow(this.mRow);
    this.currentSize++;
    if (!this.mDidFillOnce)
      this.mLast++; 
    i = this.mLast;
    int[] arrayOfInt1 = this.mArrayIndices;
    if (i >= arrayOfInt1.length) {
      this.mDidFillOnce = true;
      this.mLast = arrayOfInt1.length - 1;
    } 
  }
  
  public final void clear() {
    int i = this.mHead;
    for (byte b = 0; i != -1 && b < this.currentSize; b++) {
      SolverVariable solverVariable = this.mCache.mIndexedVariables[this.mArrayIndices[i]];
      if (solverVariable != null)
        solverVariable.removeFromRow(this.mRow); 
      i = this.mArrayNextIndices[i];
    } 
    this.mHead = -1;
    this.mLast = -1;
    this.mDidFillOnce = false;
    this.currentSize = 0;
  }
  
  public boolean contains(SolverVariable paramSolverVariable) {
    int i = this.mHead;
    if (i == -1)
      return false; 
    for (byte b = 0; i != -1 && b < this.currentSize; b++) {
      if (this.mArrayIndices[i] == paramSolverVariable.id)
        return true; 
      i = this.mArrayNextIndices[i];
    } 
    return false;
  }
  
  public void display() {
    int i = this.currentSize;
    System.out.print("{ ");
    for (byte b = 0; b < i; b++) {
      SolverVariable solverVariable = getVariable(b);
      if (solverVariable != null) {
        PrintStream printStream = System.out;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(solverVariable);
        stringBuilder.append(" = ");
        stringBuilder.append(getVariableValue(b));
        stringBuilder.append(" ");
        printStream.print(stringBuilder.toString());
      } 
    } 
    System.out.println(" }");
  }
  
  public void divideByAmount(float paramFloat) {
    int i = this.mHead;
    for (byte b = 0; i != -1 && b < this.currentSize; b++) {
      float[] arrayOfFloat = this.mArrayValues;
      arrayOfFloat[i] = arrayOfFloat[i] / paramFloat;
      i = this.mArrayNextIndices[i];
    } 
  }
  
  public final float get(SolverVariable paramSolverVariable) {
    int i = this.mHead;
    for (byte b = 0; i != -1 && b < this.currentSize; b++) {
      if (this.mArrayIndices[i] == paramSolverVariable.id)
        return this.mArrayValues[i]; 
      i = this.mArrayNextIndices[i];
    } 
    return 0.0F;
  }
  
  public int getCurrentSize() {
    return this.currentSize;
  }
  
  public int getHead() {
    return this.mHead;
  }
  
  public final int getId(int paramInt) {
    return this.mArrayIndices[paramInt];
  }
  
  public final int getNextIndice(int paramInt) {
    return this.mArrayNextIndices[paramInt];
  }
  
  SolverVariable getPivotCandidate() {
    // Byte code:
    //   0: aload_0
    //   1: getfield candidate : Landroidx/constraintlayout/solver/SolverVariable;
    //   4: astore_1
    //   5: aload_1
    //   6: ifnonnull -> 102
    //   9: aload_0
    //   10: getfield mHead : I
    //   13: istore_2
    //   14: iconst_0
    //   15: istore_3
    //   16: aconst_null
    //   17: astore_1
    //   18: iload_2
    //   19: iconst_m1
    //   20: if_icmpeq -> 100
    //   23: iload_3
    //   24: aload_0
    //   25: getfield currentSize : I
    //   28: if_icmpge -> 100
    //   31: aload_1
    //   32: astore #4
    //   34: aload_0
    //   35: getfield mArrayValues : [F
    //   38: iload_2
    //   39: faload
    //   40: fconst_0
    //   41: fcmpg
    //   42: ifge -> 84
    //   45: aload_0
    //   46: getfield mCache : Landroidx/constraintlayout/solver/Cache;
    //   49: getfield mIndexedVariables : [Landroidx/constraintlayout/solver/SolverVariable;
    //   52: aload_0
    //   53: getfield mArrayIndices : [I
    //   56: iload_2
    //   57: iaload
    //   58: aaload
    //   59: astore #5
    //   61: aload_1
    //   62: ifnull -> 80
    //   65: aload_1
    //   66: astore #4
    //   68: aload_1
    //   69: getfield strength : I
    //   72: aload #5
    //   74: getfield strength : I
    //   77: if_icmpge -> 84
    //   80: aload #5
    //   82: astore #4
    //   84: aload_0
    //   85: getfield mArrayNextIndices : [I
    //   88: iload_2
    //   89: iaload
    //   90: istore_2
    //   91: iinc #3, 1
    //   94: aload #4
    //   96: astore_1
    //   97: goto -> 18
    //   100: aload_1
    //   101: areturn
    //   102: aload_1
    //   103: areturn
  }
  
  public final float getValue(int paramInt) {
    return this.mArrayValues[paramInt];
  }
  
  public SolverVariable getVariable(int paramInt) {
    int i = this.mHead;
    for (byte b = 0; i != -1 && b < this.currentSize; b++) {
      if (b == paramInt)
        return this.mCache.mIndexedVariables[this.mArrayIndices[i]]; 
      i = this.mArrayNextIndices[i];
    } 
    return null;
  }
  
  public float getVariableValue(int paramInt) {
    int i = this.mHead;
    for (byte b = 0; i != -1 && b < this.currentSize; b++) {
      if (b == paramInt)
        return this.mArrayValues[i]; 
      i = this.mArrayNextIndices[i];
    } 
    return 0.0F;
  }
  
  boolean hasAtLeastOnePositiveVariable() {
    int i = this.mHead;
    for (byte b = 0; i != -1 && b < this.currentSize; b++) {
      if (this.mArrayValues[i] > 0.0F)
        return true; 
      i = this.mArrayNextIndices[i];
    } 
    return false;
  }
  
  public int indexOf(SolverVariable paramSolverVariable) {
    int i = this.mHead;
    if (i == -1)
      return -1; 
    for (byte b = 0; i != -1 && b < this.currentSize; b++) {
      if (this.mArrayIndices[i] == paramSolverVariable.id)
        return i; 
      i = this.mArrayNextIndices[i];
    } 
    return -1;
  }
  
  public void invert() {
    int i = this.mHead;
    for (byte b = 0; i != -1 && b < this.currentSize; b++) {
      float[] arrayOfFloat = this.mArrayValues;
      arrayOfFloat[i] = arrayOfFloat[i] * -1.0F;
      i = this.mArrayNextIndices[i];
    } 
  }
  
  public final void put(SolverVariable paramSolverVariable, float paramFloat) {
    if (paramFloat == 0.0F) {
      remove(paramSolverVariable, true);
      return;
    } 
    int i = this.mHead;
    if (i == -1) {
      this.mHead = 0;
      float[] arrayOfFloat = this.mArrayValues;
      i = this.mHead;
      arrayOfFloat[i] = paramFloat;
      this.mArrayIndices[i] = paramSolverVariable.id;
      this.mArrayNextIndices[this.mHead] = -1;
      paramSolverVariable.usageInRowCount++;
      paramSolverVariable.addToRow(this.mRow);
      this.currentSize++;
      if (!this.mDidFillOnce) {
        i = ++this.mLast;
        arrayOfInt1 = this.mArrayIndices;
        if (i >= arrayOfInt1.length) {
          this.mDidFillOnce = true;
          this.mLast = arrayOfInt1.length - 1;
        } 
      } 
      return;
    } 
    int j = 0;
    int k = -1;
    while (i != -1 && j < this.currentSize) {
      if (this.mArrayIndices[i] == ((SolverVariable)arrayOfInt1).id) {
        this.mArrayValues[i] = paramFloat;
        return;
      } 
      if (this.mArrayIndices[i] < ((SolverVariable)arrayOfInt1).id)
        k = i; 
      i = this.mArrayNextIndices[i];
      j++;
    } 
    i = this.mLast;
    if (this.mDidFillOnce) {
      int[] arrayOfInt = this.mArrayIndices;
      if (arrayOfInt[i] != -1)
        i = arrayOfInt.length; 
    } else {
      i++;
    } 
    int[] arrayOfInt2 = this.mArrayIndices;
    j = i;
    if (i >= arrayOfInt2.length) {
      j = i;
      if (this.currentSize < arrayOfInt2.length) {
        byte b = 0;
        while (true) {
          arrayOfInt2 = this.mArrayIndices;
          j = i;
          if (b < arrayOfInt2.length) {
            if (arrayOfInt2[b] == -1) {
              j = b;
              break;
            } 
            b++;
            continue;
          } 
          break;
        } 
      } 
    } 
    arrayOfInt2 = this.mArrayIndices;
    i = j;
    if (j >= arrayOfInt2.length) {
      i = arrayOfInt2.length;
      this.ROW_SIZE *= 2;
      this.mDidFillOnce = false;
      this.mLast = i - 1;
      this.mArrayValues = Arrays.copyOf(this.mArrayValues, this.ROW_SIZE);
      this.mArrayIndices = Arrays.copyOf(this.mArrayIndices, this.ROW_SIZE);
      this.mArrayNextIndices = Arrays.copyOf(this.mArrayNextIndices, this.ROW_SIZE);
    } 
    this.mArrayIndices[i] = ((SolverVariable)arrayOfInt1).id;
    this.mArrayValues[i] = paramFloat;
    if (k != -1) {
      arrayOfInt2 = this.mArrayNextIndices;
      arrayOfInt2[i] = arrayOfInt2[k];
      arrayOfInt2[k] = i;
    } else {
      this.mArrayNextIndices[i] = this.mHead;
      this.mHead = i;
    } 
    ((SolverVariable)arrayOfInt1).usageInRowCount++;
    arrayOfInt1.addToRow(this.mRow);
    this.currentSize++;
    if (!this.mDidFillOnce)
      this.mLast++; 
    if (this.currentSize >= this.mArrayIndices.length)
      this.mDidFillOnce = true; 
    i = this.mLast;
    int[] arrayOfInt1 = this.mArrayIndices;
    if (i >= arrayOfInt1.length) {
      this.mDidFillOnce = true;
      this.mLast = arrayOfInt1.length - 1;
    } 
  }
  
  public final float remove(SolverVariable paramSolverVariable, boolean paramBoolean) {
    if (this.candidate == paramSolverVariable)
      this.candidate = null; 
    int i = this.mHead;
    if (i == -1)
      return 0.0F; 
    byte b = 0;
    int j = -1;
    while (i != -1 && b < this.currentSize) {
      if (this.mArrayIndices[i] == paramSolverVariable.id) {
        if (i == this.mHead) {
          this.mHead = this.mArrayNextIndices[i];
        } else {
          int[] arrayOfInt = this.mArrayNextIndices;
          arrayOfInt[j] = arrayOfInt[i];
        } 
        if (paramBoolean)
          paramSolverVariable.removeFromRow(this.mRow); 
        paramSolverVariable.usageInRowCount--;
        this.currentSize--;
        this.mArrayIndices[i] = -1;
        if (this.mDidFillOnce)
          this.mLast = i; 
        return this.mArrayValues[i];
      } 
      int k = this.mArrayNextIndices[i];
      b++;
      j = i;
      i = k;
    } 
    return 0.0F;
  }
  
  public int sizeInBytes() {
    return this.mArrayIndices.length * 4 * 3 + 0 + 36;
  }
  
  public String toString() {
    int i = this.mHead;
    String str = "";
    for (byte b = 0; i != -1 && b < this.currentSize; b++) {
      StringBuilder stringBuilder2 = new StringBuilder();
      stringBuilder2.append(str);
      stringBuilder2.append(" -> ");
      str = stringBuilder2.toString();
      stringBuilder2 = new StringBuilder();
      stringBuilder2.append(str);
      stringBuilder2.append(this.mArrayValues[i]);
      stringBuilder2.append(" : ");
      String str1 = stringBuilder2.toString();
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append(str1);
      stringBuilder1.append(this.mCache.mIndexedVariables[this.mArrayIndices[i]]);
      str = stringBuilder1.toString();
      i = this.mArrayNextIndices[i];
    } 
    return str;
  }
  
  public float use(ArrayRow paramArrayRow, boolean paramBoolean) {
    float f = get(paramArrayRow.variable);
    remove(paramArrayRow.variable, paramBoolean);
    ArrayRow.ArrayRowVariables arrayRowVariables = paramArrayRow.variables;
    int i = arrayRowVariables.getCurrentSize();
    for (byte b = 0; b < i; b++) {
      SolverVariable solverVariable = arrayRowVariables.getVariable(b);
      add(solverVariable, arrayRowVariables.get(solverVariable) * f, paramBoolean);
    } 
    return f;
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/ArrayLinkedVariables.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */