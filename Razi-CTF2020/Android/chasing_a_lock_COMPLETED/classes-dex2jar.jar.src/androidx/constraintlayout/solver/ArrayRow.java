package androidx.constraintlayout.solver;

import java.util.ArrayList;

public class ArrayRow implements LinearSystem.Row {
  private static final boolean DEBUG = false;
  
  private static final boolean FULL_NEW_CHECK = false;
  
  float constantValue = 0.0F;
  
  boolean isSimpleDefinition = false;
  
  boolean used = false;
  
  SolverVariable variable = null;
  
  public ArrayRowVariables variables;
  
  ArrayList<SolverVariable> variablesToUpdate = new ArrayList<SolverVariable>();
  
  public ArrayRow() {}
  
  public ArrayRow(Cache paramCache) {
    this.variables = new ArrayLinkedVariables(this, paramCache);
  }
  
  private boolean isNew(SolverVariable paramSolverVariable, LinearSystem paramLinearSystem) {
    int i = paramSolverVariable.usageInRowCount;
    boolean bool = true;
    if (i > 1)
      bool = false; 
    return bool;
  }
  
  private SolverVariable pickPivotInVariables(boolean[] paramArrayOfboolean, SolverVariable paramSolverVariable) {
    // Byte code:
    //   0: aload_0
    //   1: getfield variables : Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;
    //   4: invokeinterface getCurrentSize : ()I
    //   9: istore_3
    //   10: aconst_null
    //   11: astore #4
    //   13: iconst_0
    //   14: istore #5
    //   16: fconst_0
    //   17: fstore #6
    //   19: iload #5
    //   21: iload_3
    //   22: if_icmpge -> 170
    //   25: aload_0
    //   26: getfield variables : Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;
    //   29: iload #5
    //   31: invokeinterface getVariableValue : (I)F
    //   36: fstore #7
    //   38: aload #4
    //   40: astore #8
    //   42: fload #6
    //   44: fstore #9
    //   46: fload #7
    //   48: fconst_0
    //   49: fcmpg
    //   50: ifge -> 156
    //   53: aload_0
    //   54: getfield variables : Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;
    //   57: iload #5
    //   59: invokeinterface getVariable : (I)Landroidx/constraintlayout/solver/SolverVariable;
    //   64: astore #10
    //   66: aload_1
    //   67: ifnull -> 88
    //   70: aload #4
    //   72: astore #8
    //   74: fload #6
    //   76: fstore #9
    //   78: aload_1
    //   79: aload #10
    //   81: getfield id : I
    //   84: baload
    //   85: ifne -> 156
    //   88: aload #4
    //   90: astore #8
    //   92: fload #6
    //   94: fstore #9
    //   96: aload #10
    //   98: aload_2
    //   99: if_acmpeq -> 156
    //   102: aload #10
    //   104: getfield mType : Landroidx/constraintlayout/solver/SolverVariable$Type;
    //   107: getstatic androidx/constraintlayout/solver/SolverVariable$Type.SLACK : Landroidx/constraintlayout/solver/SolverVariable$Type;
    //   110: if_acmpeq -> 132
    //   113: aload #4
    //   115: astore #8
    //   117: fload #6
    //   119: fstore #9
    //   121: aload #10
    //   123: getfield mType : Landroidx/constraintlayout/solver/SolverVariable$Type;
    //   126: getstatic androidx/constraintlayout/solver/SolverVariable$Type.ERROR : Landroidx/constraintlayout/solver/SolverVariable$Type;
    //   129: if_acmpne -> 156
    //   132: aload #4
    //   134: astore #8
    //   136: fload #6
    //   138: fstore #9
    //   140: fload #7
    //   142: fload #6
    //   144: fcmpg
    //   145: ifge -> 156
    //   148: fload #7
    //   150: fstore #9
    //   152: aload #10
    //   154: astore #8
    //   156: iinc #5, 1
    //   159: aload #8
    //   161: astore #4
    //   163: fload #9
    //   165: fstore #6
    //   167: goto -> 19
    //   170: aload #4
    //   172: areturn
  }
  
  public ArrayRow addError(LinearSystem paramLinearSystem, int paramInt) {
    this.variables.put(paramLinearSystem.createErrorVariable(paramInt, "ep"), 1.0F);
    this.variables.put(paramLinearSystem.createErrorVariable(paramInt, "em"), -1.0F);
    return this;
  }
  
  public void addError(SolverVariable paramSolverVariable) {
    int i = paramSolverVariable.strength;
    float f = 1.0F;
    if (i != 1)
      if (paramSolverVariable.strength == 2) {
        f = 1000.0F;
      } else if (paramSolverVariable.strength == 3) {
        f = 1000000.0F;
      } else if (paramSolverVariable.strength == 4) {
        f = 1.0E9F;
      } else if (paramSolverVariable.strength == 5) {
        f = 1.0E12F;
      }  
    this.variables.put(paramSolverVariable, f);
  }
  
  ArrayRow addSingleError(SolverVariable paramSolverVariable, int paramInt) {
    this.variables.put(paramSolverVariable, paramInt);
    return this;
  }
  
  boolean chooseSubject(LinearSystem paramLinearSystem) {
    boolean bool;
    SolverVariable solverVariable = chooseSubjectInVariables(paramLinearSystem);
    if (solverVariable == null) {
      bool = true;
    } else {
      pivot(solverVariable);
      bool = false;
    } 
    if (this.variables.getCurrentSize() == 0)
      this.isSimpleDefinition = true; 
    return bool;
  }
  
  SolverVariable chooseSubjectInVariables(LinearSystem paramLinearSystem) {
    int i = this.variables.getCurrentSize();
    SolverVariable solverVariable1 = null;
    byte b = 0;
    SolverVariable solverVariable2 = null;
    float f1 = 0.0F;
    boolean bool1 = false;
    float f2 = 0.0F;
    boolean bool2;
    for (bool2 = false;; bool2 = bool4) {
      boolean bool3;
      SolverVariable solverVariable3;
      SolverVariable solverVariable4;
      float f3;
      float f4;
      boolean bool4;
      if (b < i) {
        float f = this.variables.getVariableValue(b);
        SolverVariable solverVariable = this.variables.getVariable(b);
        if (solverVariable.mType == SolverVariable.Type.UNRESTRICTED) {
          if (solverVariable1 == null) {
            bool3 = isNew(solverVariable, paramLinearSystem);
          } else if (f1 > f) {
            bool3 = isNew(solverVariable, paramLinearSystem);
          } else {
            SolverVariable solverVariable5 = solverVariable1;
            SolverVariable solverVariable6 = solverVariable2;
            float f5 = f1;
            bool3 = bool1;
            float f6 = f2;
            boolean bool = bool2;
            if (!bool1) {
              solverVariable5 = solverVariable1;
              solverVariable6 = solverVariable2;
              f5 = f1;
              bool3 = bool1;
              f6 = f2;
              bool = bool2;
              if (isNew(solverVariable, paramLinearSystem)) {
                bool3 = true;
                solverVariable5 = solverVariable;
                solverVariable6 = solverVariable2;
                f5 = f;
                f6 = f2;
                bool = bool2;
              } 
            } 
            b++;
            solverVariable1 = solverVariable5;
            solverVariable2 = solverVariable6;
            f1 = f5;
            bool1 = bool3;
            f2 = f6;
            bool2 = bool;
          } 
          solverVariable3 = solverVariable;
          solverVariable4 = solverVariable2;
          f3 = f;
          f4 = f2;
          bool4 = bool2;
        } else {
          solverVariable3 = solverVariable1;
          solverVariable4 = solverVariable2;
          f3 = f1;
          bool3 = bool1;
          f4 = f2;
          bool4 = bool2;
          if (solverVariable1 == null) {
            solverVariable3 = solverVariable1;
            solverVariable4 = solverVariable2;
            f3 = f1;
            bool3 = bool1;
            f4 = f2;
            bool4 = bool2;
            if (f < 0.0F) {
              if (solverVariable2 == null) {
                bool3 = isNew(solverVariable, paramLinearSystem);
              } else if (f2 > f) {
                bool3 = isNew(solverVariable, paramLinearSystem);
              } else {
                solverVariable3 = solverVariable1;
                solverVariable4 = solverVariable2;
                f3 = f1;
                bool3 = bool1;
                f4 = f2;
                bool4 = bool2;
                if (!bool2) {
                  solverVariable3 = solverVariable1;
                  solverVariable4 = solverVariable2;
                  f3 = f1;
                  bool3 = bool1;
                  f4 = f2;
                  bool4 = bool2;
                  if (isNew(solverVariable, paramLinearSystem)) {
                    bool4 = true;
                    f4 = f;
                    bool3 = bool1;
                    f3 = f1;
                    solverVariable4 = solverVariable;
                    solverVariable3 = solverVariable1;
                  } 
                } 
                b++;
                solverVariable1 = solverVariable3;
                solverVariable2 = solverVariable4;
                f1 = f3;
                bool1 = bool3;
                f2 = f4;
                bool2 = bool4;
              } 
              bool4 = bool3;
              solverVariable3 = solverVariable1;
              solverVariable4 = solverVariable;
              f3 = f1;
              bool3 = bool1;
              f4 = f;
            } 
          } 
        } 
      } else {
        break;
      } 
      b++;
      solverVariable1 = solverVariable3;
      solverVariable2 = solverVariable4;
      f1 = f3;
      bool1 = bool3;
      f2 = f4;
    } 
    return (solverVariable1 != null) ? solverVariable1 : solverVariable2;
  }
  
  public void clear() {
    this.variables.clear();
    this.variable = null;
    this.constantValue = 0.0F;
  }
  
  ArrayRow createRowCentering(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt1, float paramFloat, SolverVariable paramSolverVariable3, SolverVariable paramSolverVariable4, int paramInt2) {
    if (paramSolverVariable2 == paramSolverVariable3) {
      this.variables.put(paramSolverVariable1, 1.0F);
      this.variables.put(paramSolverVariable4, 1.0F);
      this.variables.put(paramSolverVariable2, -2.0F);
      return this;
    } 
    if (paramFloat == 0.5F) {
      this.variables.put(paramSolverVariable1, 1.0F);
      this.variables.put(paramSolverVariable2, -1.0F);
      this.variables.put(paramSolverVariable3, -1.0F);
      this.variables.put(paramSolverVariable4, 1.0F);
      if (paramInt1 > 0 || paramInt2 > 0)
        this.constantValue = (-paramInt1 + paramInt2); 
    } else if (paramFloat <= 0.0F) {
      this.variables.put(paramSolverVariable1, -1.0F);
      this.variables.put(paramSolverVariable2, 1.0F);
      this.constantValue = paramInt1;
    } else if (paramFloat >= 1.0F) {
      this.variables.put(paramSolverVariable4, -1.0F);
      this.variables.put(paramSolverVariable3, 1.0F);
      this.constantValue = -paramInt2;
    } else {
      ArrayRowVariables arrayRowVariables = this.variables;
      float f = 1.0F - paramFloat;
      arrayRowVariables.put(paramSolverVariable1, f * 1.0F);
      this.variables.put(paramSolverVariable2, f * -1.0F);
      this.variables.put(paramSolverVariable3, -1.0F * paramFloat);
      this.variables.put(paramSolverVariable4, 1.0F * paramFloat);
      if (paramInt1 > 0 || paramInt2 > 0)
        this.constantValue = -paramInt1 * f + paramInt2 * paramFloat; 
    } 
    return this;
  }
  
  ArrayRow createRowDefinition(SolverVariable paramSolverVariable, int paramInt) {
    this.variable = paramSolverVariable;
    float f = paramInt;
    paramSolverVariable.computedValue = f;
    this.constantValue = f;
    this.isSimpleDefinition = true;
    return this;
  }
  
  ArrayRow createRowDimensionPercent(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, float paramFloat) {
    this.variables.put(paramSolverVariable1, -1.0F);
    this.variables.put(paramSolverVariable2, paramFloat);
    return this;
  }
  
  public ArrayRow createRowDimensionRatio(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, SolverVariable paramSolverVariable3, SolverVariable paramSolverVariable4, float paramFloat) {
    this.variables.put(paramSolverVariable1, -1.0F);
    this.variables.put(paramSolverVariable2, 1.0F);
    this.variables.put(paramSolverVariable3, paramFloat);
    this.variables.put(paramSolverVariable4, -paramFloat);
    return this;
  }
  
  public ArrayRow createRowEqualDimension(float paramFloat1, float paramFloat2, float paramFloat3, SolverVariable paramSolverVariable1, int paramInt1, SolverVariable paramSolverVariable2, int paramInt2, SolverVariable paramSolverVariable3, int paramInt3, SolverVariable paramSolverVariable4, int paramInt4) {
    if (paramFloat2 == 0.0F || paramFloat1 == paramFloat3) {
      this.constantValue = (-paramInt1 - paramInt2 + paramInt3 + paramInt4);
      this.variables.put(paramSolverVariable1, 1.0F);
      this.variables.put(paramSolverVariable2, -1.0F);
      this.variables.put(paramSolverVariable4, 1.0F);
      this.variables.put(paramSolverVariable3, -1.0F);
      return this;
    } 
    paramFloat1 = paramFloat1 / paramFloat2 / paramFloat3 / paramFloat2;
    this.constantValue = (-paramInt1 - paramInt2) + paramInt3 * paramFloat1 + paramInt4 * paramFloat1;
    this.variables.put(paramSolverVariable1, 1.0F);
    this.variables.put(paramSolverVariable2, -1.0F);
    this.variables.put(paramSolverVariable4, paramFloat1);
    this.variables.put(paramSolverVariable3, -paramFloat1);
    return this;
  }
  
  public ArrayRow createRowEqualMatchDimensions(float paramFloat1, float paramFloat2, float paramFloat3, SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, SolverVariable paramSolverVariable3, SolverVariable paramSolverVariable4) {
    this.constantValue = 0.0F;
    if (paramFloat2 == 0.0F || paramFloat1 == paramFloat3) {
      this.variables.put(paramSolverVariable1, 1.0F);
      this.variables.put(paramSolverVariable2, -1.0F);
      this.variables.put(paramSolverVariable4, 1.0F);
      this.variables.put(paramSolverVariable3, -1.0F);
      return this;
    } 
    if (paramFloat1 == 0.0F) {
      this.variables.put(paramSolverVariable1, 1.0F);
      this.variables.put(paramSolverVariable2, -1.0F);
    } else if (paramFloat3 == 0.0F) {
      this.variables.put(paramSolverVariable3, 1.0F);
      this.variables.put(paramSolverVariable4, -1.0F);
    } else {
      paramFloat1 = paramFloat1 / paramFloat2 / paramFloat3 / paramFloat2;
      this.variables.put(paramSolverVariable1, 1.0F);
      this.variables.put(paramSolverVariable2, -1.0F);
      this.variables.put(paramSolverVariable4, paramFloat1);
      this.variables.put(paramSolverVariable3, -paramFloat1);
    } 
    return this;
  }
  
  public ArrayRow createRowEquals(SolverVariable paramSolverVariable, int paramInt) {
    if (paramInt < 0) {
      this.constantValue = (paramInt * -1);
      this.variables.put(paramSolverVariable, 1.0F);
    } else {
      this.constantValue = paramInt;
      this.variables.put(paramSolverVariable, -1.0F);
    } 
    return this;
  }
  
  public ArrayRow createRowEquals(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt) {
    int i = 0;
    int j = 0;
    if (paramInt != 0) {
      i = j;
      j = paramInt;
      if (paramInt < 0) {
        j = paramInt * -1;
        i = 1;
      } 
      this.constantValue = j;
    } 
    if (i == 0) {
      this.variables.put(paramSolverVariable1, -1.0F);
      this.variables.put(paramSolverVariable2, 1.0F);
    } else {
      this.variables.put(paramSolverVariable1, 1.0F);
      this.variables.put(paramSolverVariable2, -1.0F);
    } 
    return this;
  }
  
  public ArrayRow createRowGreaterThan(SolverVariable paramSolverVariable1, int paramInt, SolverVariable paramSolverVariable2) {
    this.constantValue = paramInt;
    this.variables.put(paramSolverVariable1, -1.0F);
    return this;
  }
  
  public ArrayRow createRowGreaterThan(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, SolverVariable paramSolverVariable3, int paramInt) {
    int i = 0;
    int j = 0;
    if (paramInt != 0) {
      i = j;
      j = paramInt;
      if (paramInt < 0) {
        j = paramInt * -1;
        i = 1;
      } 
      this.constantValue = j;
    } 
    if (i == 0) {
      this.variables.put(paramSolverVariable1, -1.0F);
      this.variables.put(paramSolverVariable2, 1.0F);
      this.variables.put(paramSolverVariable3, 1.0F);
    } else {
      this.variables.put(paramSolverVariable1, 1.0F);
      this.variables.put(paramSolverVariable2, -1.0F);
      this.variables.put(paramSolverVariable3, -1.0F);
    } 
    return this;
  }
  
  public ArrayRow createRowLowerThan(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, SolverVariable paramSolverVariable3, int paramInt) {
    int i = 0;
    int j = 0;
    if (paramInt != 0) {
      i = j;
      j = paramInt;
      if (paramInt < 0) {
        j = paramInt * -1;
        i = 1;
      } 
      this.constantValue = j;
    } 
    if (i == 0) {
      this.variables.put(paramSolverVariable1, -1.0F);
      this.variables.put(paramSolverVariable2, 1.0F);
      this.variables.put(paramSolverVariable3, -1.0F);
    } else {
      this.variables.put(paramSolverVariable1, 1.0F);
      this.variables.put(paramSolverVariable2, -1.0F);
      this.variables.put(paramSolverVariable3, 1.0F);
    } 
    return this;
  }
  
  public ArrayRow createRowWithAngle(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, SolverVariable paramSolverVariable3, SolverVariable paramSolverVariable4, float paramFloat) {
    this.variables.put(paramSolverVariable3, 0.5F);
    this.variables.put(paramSolverVariable4, 0.5F);
    this.variables.put(paramSolverVariable1, -0.5F);
    this.variables.put(paramSolverVariable2, -0.5F);
    this.constantValue = -paramFloat;
    return this;
  }
  
  void ensurePositiveConstant() {
    float f = this.constantValue;
    if (f < 0.0F) {
      this.constantValue = f * -1.0F;
      this.variables.invert();
    } 
  }
  
  public SolverVariable getKey() {
    return this.variable;
  }
  
  public SolverVariable getPivotCandidate(LinearSystem paramLinearSystem, boolean[] paramArrayOfboolean) {
    return pickPivotInVariables(paramArrayOfboolean, null);
  }
  
  boolean hasKeyVariable() {
    boolean bool;
    SolverVariable solverVariable = this.variable;
    if (solverVariable != null && (solverVariable.mType == SolverVariable.Type.UNRESTRICTED || this.constantValue >= 0.0F)) {
      bool = true;
    } else {
      bool = false;
    } 
    return bool;
  }
  
  boolean hasVariable(SolverVariable paramSolverVariable) {
    return this.variables.contains(paramSolverVariable);
  }
  
  public void initFromRow(LinearSystem.Row paramRow) {
    if (paramRow instanceof ArrayRow) {
      ArrayRow arrayRow = (ArrayRow)paramRow;
      this.variable = null;
      this.variables.clear();
      for (byte b = 0; b < arrayRow.variables.getCurrentSize(); b++) {
        SolverVariable solverVariable = arrayRow.variables.getVariable(b);
        float f = arrayRow.variables.getVariableValue(b);
        this.variables.add(solverVariable, f, true);
      } 
    } 
  }
  
  public boolean isEmpty() {
    boolean bool;
    if (this.variable == null && this.constantValue == 0.0F && this.variables.getCurrentSize() == 0) {
      bool = true;
    } else {
      bool = false;
    } 
    return bool;
  }
  
  public SolverVariable pickPivot(SolverVariable paramSolverVariable) {
    return pickPivotInVariables(null, paramSolverVariable);
  }
  
  void pivot(SolverVariable paramSolverVariable) {
    SolverVariable solverVariable = this.variable;
    if (solverVariable != null) {
      this.variables.put(solverVariable, -1.0F);
      this.variable = null;
    } 
    float f = this.variables.remove(paramSolverVariable, true) * -1.0F;
    this.variable = paramSolverVariable;
    if (f == 1.0F)
      return; 
    this.constantValue /= f;
    this.variables.divideByAmount(f);
  }
  
  public void reset() {
    this.variable = null;
    this.variables.clear();
    this.constantValue = 0.0F;
    this.isSimpleDefinition = false;
  }
  
  int sizeInBytes() {
    byte b;
    if (this.variable != null) {
      b = 4;
    } else {
      b = 0;
    } 
    return b + 4 + 4 + this.variables.sizeInBytes();
  }
  
  String toReadableString() {
    // Byte code:
    //   0: aload_0
    //   1: getfield variable : Landroidx/constraintlayout/solver/SolverVariable;
    //   4: ifnonnull -> 37
    //   7: new java/lang/StringBuilder
    //   10: dup
    //   11: invokespecial <init> : ()V
    //   14: astore_1
    //   15: aload_1
    //   16: ldc ''
    //   18: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: pop
    //   22: aload_1
    //   23: ldc '0'
    //   25: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: pop
    //   29: aload_1
    //   30: invokevirtual toString : ()Ljava/lang/String;
    //   33: astore_1
    //   34: goto -> 66
    //   37: new java/lang/StringBuilder
    //   40: dup
    //   41: invokespecial <init> : ()V
    //   44: astore_1
    //   45: aload_1
    //   46: ldc ''
    //   48: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: pop
    //   52: aload_1
    //   53: aload_0
    //   54: getfield variable : Landroidx/constraintlayout/solver/SolverVariable;
    //   57: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   60: pop
    //   61: aload_1
    //   62: invokevirtual toString : ()Ljava/lang/String;
    //   65: astore_1
    //   66: new java/lang/StringBuilder
    //   69: dup
    //   70: invokespecial <init> : ()V
    //   73: astore_2
    //   74: aload_2
    //   75: aload_1
    //   76: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: pop
    //   80: aload_2
    //   81: ldc ' = '
    //   83: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: pop
    //   87: aload_2
    //   88: invokevirtual toString : ()Ljava/lang/String;
    //   91: astore_1
    //   92: aload_0
    //   93: getfield constantValue : F
    //   96: fstore_3
    //   97: iconst_0
    //   98: istore #4
    //   100: fload_3
    //   101: fconst_0
    //   102: fcmpl
    //   103: ifeq -> 140
    //   106: new java/lang/StringBuilder
    //   109: dup
    //   110: invokespecial <init> : ()V
    //   113: astore_2
    //   114: aload_2
    //   115: aload_1
    //   116: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: pop
    //   120: aload_2
    //   121: aload_0
    //   122: getfield constantValue : F
    //   125: invokevirtual append : (F)Ljava/lang/StringBuilder;
    //   128: pop
    //   129: aload_2
    //   130: invokevirtual toString : ()Ljava/lang/String;
    //   133: astore_1
    //   134: iconst_1
    //   135: istore #5
    //   137: goto -> 143
    //   140: iconst_0
    //   141: istore #5
    //   143: aload_0
    //   144: getfield variables : Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;
    //   147: invokeinterface getCurrentSize : ()I
    //   152: istore #6
    //   154: iload #4
    //   156: iload #6
    //   158: if_icmpge -> 411
    //   161: aload_0
    //   162: getfield variables : Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;
    //   165: iload #4
    //   167: invokeinterface getVariable : (I)Landroidx/constraintlayout/solver/SolverVariable;
    //   172: astore_2
    //   173: aload_2
    //   174: ifnonnull -> 180
    //   177: goto -> 405
    //   180: aload_0
    //   181: getfield variables : Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;
    //   184: iload #4
    //   186: invokeinterface getVariableValue : (I)F
    //   191: fstore #7
    //   193: fload #7
    //   195: fconst_0
    //   196: fcmpl
    //   197: istore #8
    //   199: iload #8
    //   201: ifne -> 207
    //   204: goto -> 405
    //   207: aload_2
    //   208: invokevirtual toString : ()Ljava/lang/String;
    //   211: astore #9
    //   213: iload #5
    //   215: ifne -> 259
    //   218: aload_1
    //   219: astore_2
    //   220: fload #7
    //   222: fstore_3
    //   223: fload #7
    //   225: fconst_0
    //   226: fcmpg
    //   227: ifge -> 328
    //   230: new java/lang/StringBuilder
    //   233: dup
    //   234: invokespecial <init> : ()V
    //   237: astore_2
    //   238: aload_2
    //   239: aload_1
    //   240: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   243: pop
    //   244: aload_2
    //   245: ldc '- '
    //   247: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   250: pop
    //   251: aload_2
    //   252: invokevirtual toString : ()Ljava/lang/String;
    //   255: astore_2
    //   256: goto -> 322
    //   259: iload #8
    //   261: ifle -> 296
    //   264: new java/lang/StringBuilder
    //   267: dup
    //   268: invokespecial <init> : ()V
    //   271: astore_2
    //   272: aload_2
    //   273: aload_1
    //   274: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   277: pop
    //   278: aload_2
    //   279: ldc ' + '
    //   281: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   284: pop
    //   285: aload_2
    //   286: invokevirtual toString : ()Ljava/lang/String;
    //   289: astore_2
    //   290: fload #7
    //   292: fstore_3
    //   293: goto -> 328
    //   296: new java/lang/StringBuilder
    //   299: dup
    //   300: invokespecial <init> : ()V
    //   303: astore_2
    //   304: aload_2
    //   305: aload_1
    //   306: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   309: pop
    //   310: aload_2
    //   311: ldc ' - '
    //   313: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   316: pop
    //   317: aload_2
    //   318: invokevirtual toString : ()Ljava/lang/String;
    //   321: astore_2
    //   322: fload #7
    //   324: ldc -1.0
    //   326: fmul
    //   327: fstore_3
    //   328: fload_3
    //   329: fconst_1
    //   330: fcmpl
    //   331: ifne -> 363
    //   334: new java/lang/StringBuilder
    //   337: dup
    //   338: invokespecial <init> : ()V
    //   341: astore_1
    //   342: aload_1
    //   343: aload_2
    //   344: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   347: pop
    //   348: aload_1
    //   349: aload #9
    //   351: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   354: pop
    //   355: aload_1
    //   356: invokevirtual toString : ()Ljava/lang/String;
    //   359: astore_1
    //   360: goto -> 402
    //   363: new java/lang/StringBuilder
    //   366: dup
    //   367: invokespecial <init> : ()V
    //   370: astore_1
    //   371: aload_1
    //   372: aload_2
    //   373: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   376: pop
    //   377: aload_1
    //   378: fload_3
    //   379: invokevirtual append : (F)Ljava/lang/StringBuilder;
    //   382: pop
    //   383: aload_1
    //   384: ldc ' '
    //   386: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   389: pop
    //   390: aload_1
    //   391: aload #9
    //   393: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   396: pop
    //   397: aload_1
    //   398: invokevirtual toString : ()Ljava/lang/String;
    //   401: astore_1
    //   402: iconst_1
    //   403: istore #5
    //   405: iinc #4, 1
    //   408: goto -> 154
    //   411: aload_1
    //   412: astore_2
    //   413: iload #5
    //   415: ifne -> 444
    //   418: new java/lang/StringBuilder
    //   421: dup
    //   422: invokespecial <init> : ()V
    //   425: astore_2
    //   426: aload_2
    //   427: aload_1
    //   428: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   431: pop
    //   432: aload_2
    //   433: ldc '0.0'
    //   435: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   438: pop
    //   439: aload_2
    //   440: invokevirtual toString : ()Ljava/lang/String;
    //   443: astore_2
    //   444: aload_2
    //   445: areturn
  }
  
  public String toString() {
    return toReadableString();
  }
  
  public void updateFromFinalVariable(LinearSystem paramLinearSystem, SolverVariable paramSolverVariable, boolean paramBoolean) {
    if (!paramSolverVariable.isFinalValue)
      return; 
    float f = this.variables.get(paramSolverVariable);
    this.constantValue += paramSolverVariable.computedValue * f;
    this.variables.remove(paramSolverVariable, paramBoolean);
    if (paramBoolean)
      paramSolverVariable.removeFromRow(this); 
  }
  
  public void updateFromRow(ArrayRow paramArrayRow, boolean paramBoolean) {
    float f = this.variables.use(paramArrayRow, paramBoolean);
    this.constantValue += paramArrayRow.constantValue * f;
    if (paramBoolean)
      paramArrayRow.variable.removeFromRow(this); 
  }
  
  public void updateFromSystem(LinearSystem paramLinearSystem) {
    if (paramLinearSystem.mRows.length == 0)
      return; 
    for (boolean bool = false; !bool; bool = true) {
      int i = this.variables.getCurrentSize();
      for (byte b = 0; b < i; b++) {
        SolverVariable solverVariable = this.variables.getVariable(b);
        if (solverVariable.definitionId != -1 || solverVariable.isFinalValue)
          this.variablesToUpdate.add(solverVariable); 
      } 
      if (this.variablesToUpdate.size() > 0) {
        for (SolverVariable solverVariable : this.variablesToUpdate) {
          if (solverVariable.isFinalValue) {
            updateFromFinalVariable(paramLinearSystem, solverVariable, true);
            continue;
          } 
          updateFromRow(paramLinearSystem.mRows[solverVariable.definitionId], true);
        } 
        this.variablesToUpdate.clear();
        continue;
      } 
    } 
  }
  
  public static interface ArrayRowVariables {
    void add(SolverVariable param1SolverVariable, float param1Float, boolean param1Boolean);
    
    void clear();
    
    boolean contains(SolverVariable param1SolverVariable);
    
    void display();
    
    void divideByAmount(float param1Float);
    
    float get(SolverVariable param1SolverVariable);
    
    int getCurrentSize();
    
    SolverVariable getVariable(int param1Int);
    
    float getVariableValue(int param1Int);
    
    int indexOf(SolverVariable param1SolverVariable);
    
    void invert();
    
    void put(SolverVariable param1SolverVariable, float param1Float);
    
    float remove(SolverVariable param1SolverVariable, boolean param1Boolean);
    
    int sizeInBytes();
    
    float use(ArrayRow param1ArrayRow, boolean param1Boolean);
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/ArrayRow.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */