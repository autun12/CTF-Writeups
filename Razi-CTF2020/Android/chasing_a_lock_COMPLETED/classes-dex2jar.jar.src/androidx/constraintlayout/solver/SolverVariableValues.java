package androidx.constraintlayout.solver;

import java.io.PrintStream;
import java.util.Arrays;

public class SolverVariableValues implements ArrayRow.ArrayRowVariables {
  private static final boolean DEBUG = false;
  
  private static final boolean HASH = true;
  
  private static float epsilon = 0.001F;
  
  private int HASH_SIZE = 16;
  
  private final int NONE = -1;
  
  private int SIZE = 16;
  
  int head;
  
  int[] keys;
  
  protected final Cache mCache;
  
  int mCount;
  
  private final ArrayRow mRow;
  
  int[] next;
  
  int[] nextKeys;
  
  int[] previous;
  
  float[] values;
  
  int[] variables;
  
  SolverVariableValues(ArrayRow paramArrayRow, Cache paramCache) {
    int i = this.SIZE;
    this.keys = new int[i];
    this.nextKeys = new int[i];
    this.variables = new int[i];
    this.values = new float[i];
    this.previous = new int[i];
    this.next = new int[i];
    this.mCount = 0;
    this.head = -1;
    this.mRow = paramArrayRow;
    this.mCache = paramCache;
    clear();
  }
  
  private void addToHashMap(SolverVariable paramSolverVariable, int paramInt) {
    int i = paramSolverVariable.id % this.HASH_SIZE;
    int[] arrayOfInt = this.keys;
    int j = arrayOfInt[i];
    int k = j;
    if (j == -1) {
      arrayOfInt[i] = paramInt;
    } else {
      while (true) {
        arrayOfInt = this.nextKeys;
        if (arrayOfInt[k] != -1) {
          k = arrayOfInt[k];
          continue;
        } 
        arrayOfInt[k] = paramInt;
        this.nextKeys[paramInt] = -1;
        return;
      } 
    } 
    this.nextKeys[paramInt] = -1;
  }
  
  private void addVariable(int paramInt, SolverVariable paramSolverVariable, float paramFloat) {
    this.variables[paramInt] = paramSolverVariable.id;
    this.values[paramInt] = paramFloat;
    this.previous[paramInt] = -1;
    this.next[paramInt] = -1;
    paramSolverVariable.addToRow(this.mRow);
    paramSolverVariable.usageInRowCount++;
    this.mCount++;
  }
  
  private void displayHash() {
    for (byte b = 0; b < this.HASH_SIZE; b++) {
      if (this.keys[b] != -1) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(hashCode());
        stringBuilder.append(" hash [");
        stringBuilder.append(b);
        stringBuilder.append("] => ");
        String str = stringBuilder.toString();
        int i = this.keys[b];
        boolean bool;
        for (bool = false; !bool; bool = true) {
          StringBuilder stringBuilder1 = new StringBuilder();
          stringBuilder1.append(str);
          stringBuilder1.append(" ");
          stringBuilder1.append(this.variables[i]);
          str = stringBuilder1.toString();
          int[] arrayOfInt = this.nextKeys;
          if (arrayOfInt[i] != -1) {
            i = arrayOfInt[i];
            continue;
          } 
        } 
        System.out.println(str);
      } 
    } 
  }
  
  private int findEmptySlot() {
    for (byte b = 0; b < this.SIZE; b++) {
      if (this.variables[b] == -1)
        return b; 
    } 
    return -1;
  }
  
  private void increaseSize() {
    int i = this.SIZE * 2;
    this.variables = Arrays.copyOf(this.variables, i);
    this.values = Arrays.copyOf(this.values, i);
    this.previous = Arrays.copyOf(this.previous, i);
    this.next = Arrays.copyOf(this.next, i);
    this.nextKeys = Arrays.copyOf(this.nextKeys, i);
    for (int j = this.SIZE; j < i; j++) {
      this.variables[j] = -1;
      this.nextKeys[j] = -1;
    } 
    this.SIZE = i;
  }
  
  private void insertVariable(int paramInt, SolverVariable paramSolverVariable, float paramFloat) {
    int i = findEmptySlot();
    addVariable(i, paramSolverVariable, paramFloat);
    if (paramInt != -1) {
      this.previous[i] = paramInt;
      int[] arrayOfInt1 = this.next;
      arrayOfInt1[i] = arrayOfInt1[paramInt];
      arrayOfInt1[paramInt] = i;
    } else {
      this.previous[i] = -1;
      if (this.mCount > 0) {
        this.next[i] = this.head;
        this.head = i;
      } else {
        this.next[i] = -1;
      } 
    } 
    int[] arrayOfInt = this.next;
    if (arrayOfInt[i] != -1)
      this.previous[arrayOfInt[i]] = i; 
    addToHashMap(paramSolverVariable, i);
  }
  
  private void removeFromHashMap(SolverVariable paramSolverVariable) {
    int i = paramSolverVariable.id % this.HASH_SIZE;
    int j = this.keys[i];
    if (j == -1)
      return; 
    int k = paramSolverVariable.id;
    int m = j;
    if (this.variables[j] == k) {
      int[] arrayOfInt1 = this.keys;
      int[] arrayOfInt2 = this.nextKeys;
      arrayOfInt1[i] = arrayOfInt2[j];
      arrayOfInt2[j] = -1;
    } else {
      while (true) {
        int[] arrayOfInt1 = this.nextKeys;
        if (arrayOfInt1[m] != -1 && this.variables[arrayOfInt1[m]] != k) {
          m = arrayOfInt1[m];
          continue;
        } 
        break;
      } 
      int[] arrayOfInt = this.nextKeys;
      j = arrayOfInt[m];
      if (j != -1 && this.variables[j] == k) {
        arrayOfInt[m] = arrayOfInt[j];
        arrayOfInt[j] = -1;
      } 
    } 
  }
  
  public void add(SolverVariable paramSolverVariable, float paramFloat, boolean paramBoolean) {
    float f = epsilon;
    if (paramFloat > -f && paramFloat < f)
      return; 
    int i = indexOf(paramSolverVariable);
    if (i == -1) {
      put(paramSolverVariable, paramFloat);
    } else {
      float[] arrayOfFloat = this.values;
      arrayOfFloat[i] = arrayOfFloat[i] + paramFloat;
      f = arrayOfFloat[i];
      paramFloat = epsilon;
      if (f > -paramFloat && arrayOfFloat[i] < paramFloat) {
        arrayOfFloat[i] = 0.0F;
        remove(paramSolverVariable, paramBoolean);
      } 
    } 
  }
  
  public void clear() {
    int i = this.mCount;
    byte b;
    for (b = 0; b < i; b++) {
      SolverVariable solverVariable = getVariable(b);
      if (solverVariable != null)
        solverVariable.removeFromRow(this.mRow); 
    } 
    for (b = 0; b < this.SIZE; b++) {
      this.variables[b] = -1;
      this.nextKeys[b] = -1;
    } 
    for (b = 0; b < this.HASH_SIZE; b++)
      this.keys[b] = -1; 
    this.mCount = 0;
    this.head = -1;
  }
  
  public boolean contains(SolverVariable paramSolverVariable) {
    boolean bool;
    if (indexOf(paramSolverVariable) != -1) {
      bool = true;
    } else {
      bool = false;
    } 
    return bool;
  }
  
  public void display() {
    int i = this.mCount;
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
    int i = this.mCount;
    int j = this.head;
    for (byte b = 0; b < i; b++) {
      float[] arrayOfFloat = this.values;
      arrayOfFloat[j] = arrayOfFloat[j] / paramFloat;
      j = this.next[j];
      if (j == -1)
        break; 
    } 
  }
  
  public float get(SolverVariable paramSolverVariable) {
    int i = indexOf(paramSolverVariable);
    return (i != -1) ? this.values[i] : 0.0F;
  }
  
  public int getCurrentSize() {
    return this.mCount;
  }
  
  public SolverVariable getVariable(int paramInt) {
    int i = this.mCount;
    if (i == 0)
      return null; 
    int j = this.head;
    for (byte b = 0; b < i; b++) {
      if (b == paramInt && j != -1)
        return this.mCache.mIndexedVariables[this.variables[j]]; 
      j = this.next[j];
      if (j == -1)
        break; 
    } 
    return null;
  }
  
  public float getVariableValue(int paramInt) {
    int i = this.mCount;
    int j = this.head;
    for (byte b = 0; b < i; b++) {
      if (b == paramInt)
        return this.values[j]; 
      j = this.next[j];
      if (j == -1)
        break; 
    } 
    return 0.0F;
  }
  
  public int indexOf(SolverVariable paramSolverVariable) {
    if (this.mCount == 0)
      return -1; 
    int i = paramSolverVariable.id;
    int j = this.HASH_SIZE;
    int k = this.keys[i % j];
    if (k == -1)
      return -1; 
    j = k;
    if (this.variables[k] == i)
      return k; 
    while (true) {
      int[] arrayOfInt1 = this.nextKeys;
      if (arrayOfInt1[j] != -1 && this.variables[arrayOfInt1[j]] != i) {
        j = arrayOfInt1[j];
        continue;
      } 
      break;
    } 
    int[] arrayOfInt = this.nextKeys;
    return (arrayOfInt[j] == -1) ? -1 : ((this.variables[arrayOfInt[j]] == i) ? arrayOfInt[j] : -1);
  }
  
  public void invert() {
    int i = this.mCount;
    int j = this.head;
    for (byte b = 0; b < i; b++) {
      float[] arrayOfFloat = this.values;
      arrayOfFloat[j] = arrayOfFloat[j] * -1.0F;
      j = this.next[j];
      if (j == -1)
        break; 
    } 
  }
  
  public void put(SolverVariable paramSolverVariable, float paramFloat) {
    float f = epsilon;
    if (paramFloat > -f && paramFloat < f) {
      remove(paramSolverVariable, true);
      return;
    } 
    int i = this.mCount;
    byte b = 0;
    if (i == 0) {
      addVariable(0, paramSolverVariable, paramFloat);
      addToHashMap(paramSolverVariable, 0);
      this.head = 0;
    } else {
      i = indexOf(paramSolverVariable);
      if (i != -1) {
        this.values[i] = paramFloat;
      } else {
        int m;
        if (this.mCount + 1 >= this.SIZE)
          increaseSize(); 
        int j = this.mCount;
        i = this.head;
        int k = -1;
        while (true) {
          m = k;
          if (b < j) {
            if (this.variables[i] == paramSolverVariable.id) {
              this.values[i] = paramFloat;
              return;
            } 
            if (this.variables[i] < paramSolverVariable.id)
              k = i; 
            i = this.next[i];
            if (i == -1) {
              m = k;
              break;
            } 
            b++;
            continue;
          } 
          break;
        } 
        insertVariable(m, paramSolverVariable, paramFloat);
      } 
    } 
  }
  
  public float remove(SolverVariable paramSolverVariable, boolean paramBoolean) {
    int i = indexOf(paramSolverVariable);
    if (i == -1)
      return 0.0F; 
    removeFromHashMap(paramSolverVariable);
    float f = this.values[i];
    if (this.head == i)
      this.head = this.next[i]; 
    this.variables[i] = -1;
    int[] arrayOfInt1 = this.previous;
    if (arrayOfInt1[i] != -1) {
      int[] arrayOfInt = this.next;
      arrayOfInt[arrayOfInt1[i]] = arrayOfInt[i];
    } 
    int[] arrayOfInt2 = this.next;
    if (arrayOfInt2[i] != -1) {
      arrayOfInt1 = this.previous;
      arrayOfInt1[arrayOfInt2[i]] = arrayOfInt1[i];
    } 
    this.mCount--;
    paramSolverVariable.usageInRowCount--;
    if (paramBoolean)
      paramSolverVariable.removeFromRow(this.mRow); 
    return f;
  }
  
  public int sizeInBytes() {
    return 0;
  }
  
  public String toString() {
    StringBuilder stringBuilder1 = new StringBuilder();
    stringBuilder1.append(hashCode());
    stringBuilder1.append(" { ");
    String str = stringBuilder1.toString();
    int i = this.mCount;
    for (byte b = 0; b < i; b++) {
      SolverVariable solverVariable = getVariable(b);
      if (solverVariable != null) {
        StringBuilder stringBuilder4 = new StringBuilder();
        stringBuilder4.append(str);
        stringBuilder4.append(solverVariable);
        stringBuilder4.append(" = ");
        stringBuilder4.append(getVariableValue(b));
        stringBuilder4.append(" ");
        str = stringBuilder4.toString();
        int j = indexOf(solverVariable);
        StringBuilder stringBuilder3 = new StringBuilder();
        stringBuilder3.append(str);
        stringBuilder3.append("[p: ");
        str = stringBuilder3.toString();
        if (this.previous[j] != -1) {
          stringBuilder3 = new StringBuilder();
          stringBuilder3.append(str);
          stringBuilder3.append(this.mCache.mIndexedVariables[this.variables[this.previous[j]]]);
          str = stringBuilder3.toString();
        } else {
          stringBuilder3 = new StringBuilder();
          stringBuilder3.append(str);
          stringBuilder3.append("none");
          str = stringBuilder3.toString();
        } 
        stringBuilder3 = new StringBuilder();
        stringBuilder3.append(str);
        stringBuilder3.append(", n: ");
        str = stringBuilder3.toString();
        if (this.next[j] != -1) {
          stringBuilder3 = new StringBuilder();
          stringBuilder3.append(str);
          stringBuilder3.append(this.mCache.mIndexedVariables[this.variables[this.next[j]]]);
          str = stringBuilder3.toString();
        } else {
          stringBuilder3 = new StringBuilder();
          stringBuilder3.append(str);
          stringBuilder3.append("none");
          str = stringBuilder3.toString();
        } 
        stringBuilder3 = new StringBuilder();
        stringBuilder3.append(str);
        stringBuilder3.append("]");
        str = stringBuilder3.toString();
      } 
    } 
    StringBuilder stringBuilder2 = new StringBuilder();
    stringBuilder2.append(str);
    stringBuilder2.append(" }");
    return stringBuilder2.toString();
  }
  
  public float use(ArrayRow paramArrayRow, boolean paramBoolean) {
    float f = get(paramArrayRow.variable);
    remove(paramArrayRow.variable, paramBoolean);
    SolverVariableValues solverVariableValues = (SolverVariableValues)paramArrayRow.variables;
    int i = solverVariableValues.getCurrentSize();
    int j = solverVariableValues.head;
    int k = 0;
    j = 0;
    while (k < i) {
      int m = k;
      if (solverVariableValues.variables[j] != -1) {
        float f1 = solverVariableValues.values[j];
        add(this.mCache.mIndexedVariables[solverVariableValues.variables[j]], f1 * f, paramBoolean);
        m = k + 1;
      } 
      j++;
      k = m;
    } 
    return f;
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/SolverVariableValues.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */