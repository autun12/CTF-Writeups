package androidx.constraintlayout.solver;

import java.util.Arrays;
import java.util.HashSet;

public class SolverVariable {
  private static final boolean INTERNAL_DEBUG = false;
  
  static final int MAX_STRENGTH = 9;
  
  public static final int STRENGTH_BARRIER = 6;
  
  public static final int STRENGTH_CENTERING = 7;
  
  public static final int STRENGTH_EQUALITY = 5;
  
  public static final int STRENGTH_FIXED = 8;
  
  public static final int STRENGTH_HIGH = 3;
  
  public static final int STRENGTH_HIGHEST = 4;
  
  public static final int STRENGTH_LOW = 1;
  
  public static final int STRENGTH_MEDIUM = 2;
  
  public static final int STRENGTH_NONE = 0;
  
  private static final boolean VAR_USE_HASH = false;
  
  private static int uniqueConstantId = 1;
  
  private static int uniqueErrorId = 1;
  
  private static int uniqueId = 1;
  
  private static int uniqueSlackId = 1;
  
  private static int uniqueUnrestrictedId = 1;
  
  public float computedValue;
  
  int definitionId = -1;
  
  float[] goalStrengthVector = new float[9];
  
  public int id = -1;
  
  public boolean inGoal;
  
  HashSet<ArrayRow> inRows = null;
  
  public boolean isFinalValue = false;
  
  ArrayRow[] mClientEquations = new ArrayRow[16];
  
  int mClientEquationsCount = 0;
  
  private String mName;
  
  Type mType;
  
  public int strength = 0;
  
  float[] strengthVector = new float[9];
  
  public int usageInRowCount = 0;
  
  public SolverVariable(Type paramType, String paramString) {
    this.mType = paramType;
  }
  
  public SolverVariable(String paramString, Type paramType) {
    this.mName = paramString;
    this.mType = paramType;
  }
  
  private static String getUniqueName(Type paramType, String paramString) {
    if (paramString != null) {
      stringBuilder = new StringBuilder();
      stringBuilder.append(paramString);
      stringBuilder.append(uniqueErrorId);
      return stringBuilder.toString();
    } 
    int i = null.$SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type[stringBuilder.ordinal()];
    if (i != 1) {
      if (i != 2) {
        if (i != 3) {
          if (i != 4) {
            if (i == 5) {
              stringBuilder = new StringBuilder();
              stringBuilder.append("V");
              i = uniqueId + 1;
              uniqueId = i;
              stringBuilder.append(i);
              return stringBuilder.toString();
            } 
            throw new AssertionError(stringBuilder.name());
          } 
          stringBuilder = new StringBuilder();
          stringBuilder.append("e");
          i = uniqueErrorId + 1;
          uniqueErrorId = i;
          stringBuilder.append(i);
          return stringBuilder.toString();
        } 
        stringBuilder = new StringBuilder();
        stringBuilder.append("S");
        i = uniqueSlackId + 1;
        uniqueSlackId = i;
        stringBuilder.append(i);
        return stringBuilder.toString();
      } 
      stringBuilder = new StringBuilder();
      stringBuilder.append("C");
      i = uniqueConstantId + 1;
      uniqueConstantId = i;
      stringBuilder.append(i);
      return stringBuilder.toString();
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("U");
    i = uniqueUnrestrictedId + 1;
    uniqueUnrestrictedId = i;
    stringBuilder.append(i);
    return stringBuilder.toString();
  }
  
  static void increaseErrorId() {
    uniqueErrorId++;
  }
  
  public final void addToRow(ArrayRow paramArrayRow) {
    int i = 0;
    while (true) {
      int j = this.mClientEquationsCount;
      if (i < j) {
        if (this.mClientEquations[i] == paramArrayRow)
          return; 
        i++;
        continue;
      } 
      ArrayRow[] arrayOfArrayRow = this.mClientEquations;
      if (j >= arrayOfArrayRow.length)
        this.mClientEquations = Arrays.<ArrayRow>copyOf(arrayOfArrayRow, arrayOfArrayRow.length * 2); 
      arrayOfArrayRow = this.mClientEquations;
      i = this.mClientEquationsCount;
      arrayOfArrayRow[i] = paramArrayRow;
      this.mClientEquationsCount = i + 1;
      return;
    } 
  }
  
  void clearStrengths() {
    for (byte b = 0; b < 9; b++)
      this.strengthVector[b] = 0.0F; 
  }
  
  public String getName() {
    return this.mName;
  }
  
  public final void removeFromRow(ArrayRow paramArrayRow) {
    int i = this.mClientEquationsCount;
    for (int j = 0; j < i; j++) {
      if (this.mClientEquations[j] == paramArrayRow) {
        while (j < i - 1) {
          ArrayRow[] arrayOfArrayRow = this.mClientEquations;
          int k = j + 1;
          arrayOfArrayRow[j] = arrayOfArrayRow[k];
          j = k;
        } 
        this.mClientEquationsCount--;
        return;
      } 
    } 
  }
  
  public void reset() {
    this.mName = null;
    this.mType = Type.UNKNOWN;
    this.strength = 0;
    this.id = -1;
    this.definitionId = -1;
    this.computedValue = 0.0F;
    this.isFinalValue = false;
    int i = this.mClientEquationsCount;
    for (byte b = 0; b < i; b++)
      this.mClientEquations[b] = null; 
    this.mClientEquationsCount = 0;
    this.usageInRowCount = 0;
    this.inGoal = false;
    Arrays.fill(this.goalStrengthVector, 0.0F);
  }
  
  public void setFinalValue(LinearSystem paramLinearSystem, float paramFloat) {
    this.computedValue = paramFloat;
    this.isFinalValue = true;
    int i = this.mClientEquationsCount;
    for (byte b = 0; b < i; b++)
      this.mClientEquations[b].updateFromFinalVariable(paramLinearSystem, this, false); 
    this.mClientEquationsCount = 0;
  }
  
  public void setName(String paramString) {
    this.mName = paramString;
  }
  
  public void setType(Type paramType, String paramString) {
    this.mType = paramType;
  }
  
  String strengthsToString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(this);
    stringBuilder.append("[");
    String str2 = stringBuilder.toString();
    byte b = 0;
    boolean bool1 = false;
    boolean bool2 = true;
    while (b < this.strengthVector.length) {
      stringBuilder = new StringBuilder();
      stringBuilder.append(str2);
      stringBuilder.append(this.strengthVector[b]);
      String str = stringBuilder.toString();
      float[] arrayOfFloat = this.strengthVector;
      if (arrayOfFloat[b] > 0.0F) {
        bool1 = false;
      } else if (arrayOfFloat[b] < 0.0F) {
        bool1 = true;
      } 
      if (this.strengthVector[b] != 0.0F)
        bool2 = false; 
      if (b < this.strengthVector.length - 1) {
        StringBuilder stringBuilder1 = new StringBuilder();
        stringBuilder1.append(str);
        stringBuilder1.append(", ");
        String str3 = stringBuilder1.toString();
      } else {
        StringBuilder stringBuilder1 = new StringBuilder();
        stringBuilder1.append(str);
        stringBuilder1.append("] ");
        str2 = stringBuilder1.toString();
      } 
      b++;
    } 
    String str1 = str2;
    if (bool1) {
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append(str2);
      stringBuilder1.append(" (-)");
      str1 = stringBuilder1.toString();
    } 
    str2 = str1;
    if (bool2) {
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append(str1);
      stringBuilder1.append(" (*)");
      str2 = stringBuilder1.toString();
    } 
    return str2;
  }
  
  public String toString() {
    String str;
    if (this.mName != null) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("");
      stringBuilder.append(this.mName);
      str = stringBuilder.toString();
    } else {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("");
      stringBuilder.append(this.id);
      str = stringBuilder.toString();
    } 
    return str;
  }
  
  public final void updateReferencesWithNewDefinition(ArrayRow paramArrayRow) {
    int i = this.mClientEquationsCount;
    for (byte b = 0; b < i; b++)
      this.mClientEquations[b].updateFromRow(paramArrayRow, false); 
    this.mClientEquationsCount = 0;
  }
  
  public enum Type {
    CONSTANT, ERROR, SLACK, UNKNOWN, UNRESTRICTED;
    
    static {
      ERROR = new Type("ERROR", 3);
      UNKNOWN = new Type("UNKNOWN", 4);
      $VALUES = new Type[] { UNRESTRICTED, CONSTANT, SLACK, ERROR, UNKNOWN };
    }
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/SolverVariable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */