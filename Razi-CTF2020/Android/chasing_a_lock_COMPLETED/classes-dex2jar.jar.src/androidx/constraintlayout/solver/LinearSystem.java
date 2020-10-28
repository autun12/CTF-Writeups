package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.HashMap;

public class LinearSystem {
  public static long ARRAY_ROW_CREATION = 0L;
  
  public static final boolean DEBUG = false;
  
  private static final boolean DEBUG_CONSTRAINTS = false;
  
  public static final boolean FULL_DEBUG = false;
  
  public static final boolean MEASURE = false;
  
  public static long OPTIMIZED_ARRAY_ROW_CREATION = 0L;
  
  public static boolean OPTIMIZED_ENGINE = true;
  
  private static int POOL_SIZE = 1000;
  
  static final boolean SIMPLIFY_SYNONYMS = false;
  
  private static final boolean USE_SYNONYMS = true;
  
  public static Metrics sMetrics;
  
  private int TABLE_SIZE = 32;
  
  public boolean graphOptimizer;
  
  private boolean[] mAlreadyTestedCandidates;
  
  final Cache mCache;
  
  private Row mGoal;
  
  private int mMaxColumns;
  
  private int mMaxRows;
  
  int mNumColumns;
  
  int mNumRows;
  
  private SolverVariable[] mPoolVariables;
  
  private int mPoolVariablesCount;
  
  ArrayRow[] mRows;
  
  private Row mTempGoal;
  
  private HashMap<String, SolverVariable> mVariables = null;
  
  int mVariablesID = 0;
  
  public boolean newgraphOptimizer;
  
  public LinearSystem() {
    int i = this.TABLE_SIZE;
    this.mMaxColumns = i;
    this.mRows = null;
    this.graphOptimizer = false;
    this.newgraphOptimizer = false;
    this.mAlreadyTestedCandidates = new boolean[i];
    this.mNumColumns = 1;
    this.mNumRows = 0;
    this.mMaxRows = i;
    this.mPoolVariables = new SolverVariable[POOL_SIZE];
    this.mPoolVariablesCount = 0;
    this.mRows = new ArrayRow[i];
    releaseRows();
    this.mCache = new Cache();
    this.mGoal = new PriorityGoalRow(this.mCache);
    if (OPTIMIZED_ENGINE) {
      this.mTempGoal = new ValuesRow(this.mCache);
    } else {
      this.mTempGoal = new ArrayRow(this.mCache);
    } 
  }
  
  private SolverVariable acquireSolverVariable(SolverVariable.Type paramType, String paramString) {
    SolverVariable solverVariable1;
    SolverVariable solverVariable2 = this.mCache.solverVariablePool.acquire();
    if (solverVariable2 == null) {
      solverVariable2 = new SolverVariable(paramType, paramString);
      solverVariable2.setType(paramType, paramString);
      solverVariable1 = solverVariable2;
    } else {
      solverVariable2.reset();
      solverVariable2.setType((SolverVariable.Type)solverVariable1, paramString);
      solverVariable1 = solverVariable2;
    } 
    int i = this.mPoolVariablesCount;
    int j = POOL_SIZE;
    if (i >= j) {
      POOL_SIZE = j * 2;
      this.mPoolVariables = Arrays.<SolverVariable>copyOf(this.mPoolVariables, POOL_SIZE);
    } 
    SolverVariable[] arrayOfSolverVariable = this.mPoolVariables;
    j = this.mPoolVariablesCount;
    this.mPoolVariablesCount = j + 1;
    arrayOfSolverVariable[j] = solverVariable1;
    return solverVariable1;
  }
  
  private void addError(ArrayRow paramArrayRow) {
    paramArrayRow.addError(this, 0);
  }
  
  private final void addRow(ArrayRow paramArrayRow) {
    if (OPTIMIZED_ENGINE) {
      if (this.mRows[this.mNumRows] != null)
        this.mCache.optimizedArrayRowPool.release(this.mRows[this.mNumRows]); 
    } else if (this.mRows[this.mNumRows] != null) {
      this.mCache.arrayRowPool.release(this.mRows[this.mNumRows]);
    } 
    this.mRows[this.mNumRows] = paramArrayRow;
    SolverVariable solverVariable = paramArrayRow.variable;
    int i = this.mNumRows;
    solverVariable.definitionId = i;
    this.mNumRows = i + 1;
    paramArrayRow.variable.updateReferencesWithNewDefinition(paramArrayRow);
  }
  
  private void addSingleError(ArrayRow paramArrayRow, int paramInt) {
    addSingleError(paramArrayRow, paramInt, 0);
  }
  
  private void computeValues() {
    for (byte b = 0; b < this.mNumRows; b++) {
      ArrayRow arrayRow = this.mRows[b];
      arrayRow.variable.computedValue = arrayRow.constantValue;
    } 
  }
  
  public static ArrayRow createRowDimensionPercent(LinearSystem paramLinearSystem, SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, float paramFloat) {
    return paramLinearSystem.createRow().createRowDimensionPercent(paramSolverVariable1, paramSolverVariable2, paramFloat);
  }
  
  private SolverVariable createVariable(String paramString, SolverVariable.Type paramType) {
    Metrics metrics = sMetrics;
    if (metrics != null)
      metrics.variables++; 
    if (this.mNumColumns + 1 >= this.mMaxColumns)
      increaseTableSize(); 
    SolverVariable solverVariable = acquireSolverVariable(paramType, null);
    solverVariable.setName(paramString);
    this.mVariablesID++;
    this.mNumColumns++;
    solverVariable.id = this.mVariablesID;
    if (this.mVariables == null)
      this.mVariables = new HashMap<String, SolverVariable>(); 
    this.mVariables.put(paramString, solverVariable);
    this.mCache.mIndexedVariables[this.mVariablesID] = solverVariable;
    return solverVariable;
  }
  
  private void displayRows() {
    displaySolverVariables();
    String str = "";
    for (byte b = 0; b < this.mNumRows; b++) {
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append(str);
      stringBuilder1.append(this.mRows[b]);
      str = stringBuilder1.toString();
      stringBuilder1 = new StringBuilder();
      stringBuilder1.append(str);
      stringBuilder1.append("\n");
      str = stringBuilder1.toString();
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(str);
    stringBuilder.append(this.mGoal);
    stringBuilder.append("\n");
    str = stringBuilder.toString();
    System.out.println(str);
  }
  
  private void displaySolverVariables() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("Display Rows (");
    stringBuilder.append(this.mNumRows);
    stringBuilder.append("x");
    stringBuilder.append(this.mNumColumns);
    stringBuilder.append(")\n");
    String str = stringBuilder.toString();
    System.out.println(str);
  }
  
  private int enforceBFS(Row paramRow) throws Exception {
    boolean bool;
    int i = 0;
    while (true) {
      if (i < this.mNumRows) {
        if ((this.mRows[i]).variable.mType != SolverVariable.Type.UNRESTRICTED && (this.mRows[i]).constantValue < 0.0F) {
          i = 1;
          break;
        } 
        i++;
        continue;
      } 
      i = 0;
      break;
    } 
    if (i != 0) {
      boolean bool1 = false;
      i = 0;
      while (true) {
        bool = i;
        if (!bool1) {
          Metrics metrics = sMetrics;
          if (metrics != null)
            metrics.bfs++; 
          int j = i + 1;
          byte b = 0;
          int k = -1;
          i = -1;
          float f = Float.MAX_VALUE;
          for (bool = false; b < this.mNumRows; bool = i1) {
            int m;
            int n;
            float f1;
            int i1;
            ArrayRow arrayRow = this.mRows[b];
            if (arrayRow.variable.mType == SolverVariable.Type.UNRESTRICTED) {
              m = k;
              n = i;
              f1 = f;
              i1 = bool;
            } else if (arrayRow.isSimpleDefinition) {
              m = k;
              n = i;
              f1 = f;
              i1 = bool;
            } else {
              m = k;
              n = i;
              f1 = f;
              i1 = bool;
              if (arrayRow.constantValue < 0.0F)
                for (byte b1 = 1;; b1++) {
                  m = k;
                  n = i;
                  f1 = f;
                  i1 = bool;
                  if (b1 < this.mNumColumns) {
                    SolverVariable solverVariable = this.mCache.mIndexedVariables[b1];
                    float f2 = arrayRow.variables.get(solverVariable);
                    if (f2 <= 0.0F)
                      continue; 
                    m = k;
                    i1 = 0;
                    k = i;
                    i = i1;
                    while (true) {
                      i++;
                      bool = i1;
                    } 
                    i = k;
                    k = m;
                    continue;
                  } 
                  break;
                }  
            } 
            b++;
            k = m;
            i = n;
            f = f1;
          } 
          if (k != -1) {
            ArrayRow arrayRow = this.mRows[k];
            arrayRow.variable.definitionId = -1;
            metrics = sMetrics;
            if (metrics != null)
              metrics.pivots++; 
            arrayRow.pivot(this.mCache.mIndexedVariables[i]);
            arrayRow.variable.definitionId = k;
            arrayRow.variable.updateReferencesWithNewDefinition(arrayRow);
          } else {
            bool1 = true;
          } 
          if (j > this.mNumColumns / 2)
            bool1 = true; 
          i = j;
          continue;
        } 
        break;
      } 
    } else {
      bool = false;
    } 
    return bool;
  }
  
  private String getDisplaySize(int paramInt) {
    paramInt *= 4;
    int i = paramInt / 1024;
    int j = i / 1024;
    if (j > 0) {
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append("");
      stringBuilder1.append(j);
      stringBuilder1.append(" Mb");
      return stringBuilder1.toString();
    } 
    if (i > 0) {
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append("");
      stringBuilder1.append(i);
      stringBuilder1.append(" Kb");
      return stringBuilder1.toString();
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("");
    stringBuilder.append(paramInt);
    stringBuilder.append(" bytes");
    return stringBuilder.toString();
  }
  
  private String getDisplayStrength(int paramInt) {
    return (paramInt == 1) ? "LOW" : ((paramInt == 2) ? "MEDIUM" : ((paramInt == 3) ? "HIGH" : ((paramInt == 4) ? "HIGHEST" : ((paramInt == 5) ? "EQUALITY" : ((paramInt == 8) ? "FIXED" : ((paramInt == 6) ? "BARRIER" : "NONE"))))));
  }
  
  public static Metrics getMetrics() {
    return sMetrics;
  }
  
  private void increaseTableSize() {
    this.TABLE_SIZE *= 2;
    this.mRows = Arrays.<ArrayRow>copyOf(this.mRows, this.TABLE_SIZE);
    Cache cache = this.mCache;
    cache.mIndexedVariables = Arrays.<SolverVariable>copyOf(cache.mIndexedVariables, this.TABLE_SIZE);
    int i = this.TABLE_SIZE;
    this.mAlreadyTestedCandidates = new boolean[i];
    this.mMaxColumns = i;
    this.mMaxRows = i;
    Metrics metrics = sMetrics;
    if (metrics != null) {
      metrics.tableSizeIncrease++;
      metrics = sMetrics;
      metrics.maxTableSize = Math.max(metrics.maxTableSize, this.TABLE_SIZE);
      metrics = sMetrics;
      metrics.lastTableSize = metrics.maxTableSize;
    } 
  }
  
  private final int optimize(Row paramRow, boolean paramBoolean) {
    Metrics metrics = sMetrics;
    if (metrics != null)
      metrics.optimize++; 
    int i;
    for (i = 0; i < this.mNumColumns; i++)
      this.mAlreadyTestedCandidates[i] = false; 
    boolean bool = false;
    for (i = 0; !bool; i = j) {
      metrics = sMetrics;
      if (metrics != null)
        metrics.iterations++; 
      int j = i + 1;
      if (j >= this.mNumColumns * 2)
        return j; 
      if (paramRow.getKey() != null)
        this.mAlreadyTestedCandidates[(paramRow.getKey()).id] = true; 
      SolverVariable solverVariable = paramRow.getPivotCandidate(this, this.mAlreadyTestedCandidates);
      if (solverVariable != null) {
        if (this.mAlreadyTestedCandidates[solverVariable.id])
          return j; 
        this.mAlreadyTestedCandidates[solverVariable.id] = true;
      } 
      if (solverVariable != null) {
        i = 0;
        int k = -1;
        float f;
        for (f = Float.MAX_VALUE; i < this.mNumRows; f = f1) {
          int m;
          float f1;
          ArrayRow arrayRow = this.mRows[i];
          if (arrayRow.variable.mType == SolverVariable.Type.UNRESTRICTED) {
            m = k;
            f1 = f;
          } else if (arrayRow.isSimpleDefinition) {
            m = k;
            f1 = f;
          } else {
            m = k;
            f1 = f;
            if (arrayRow.hasVariable(solverVariable)) {
              float f2 = arrayRow.variables.get(solverVariable);
              m = k;
              f1 = f;
              if (f2 < 0.0F) {
                f2 = -arrayRow.constantValue / f2;
                m = k;
                f1 = f;
                if (f2 < f) {
                  m = i;
                  f1 = f2;
                } 
              } 
            } 
          } 
          i++;
          k = m;
        } 
        i = j;
        if (k > -1) {
          ArrayRow arrayRow = this.mRows[k];
          arrayRow.variable.definitionId = -1;
          Metrics metrics1 = sMetrics;
          if (metrics1 != null)
            metrics1.pivots++; 
          arrayRow.pivot(solverVariable);
          arrayRow.variable.definitionId = k;
          arrayRow.variable.updateReferencesWithNewDefinition(arrayRow);
          i = j;
        } 
        continue;
      } 
      bool = true;
    } 
    return i;
  }
  
  private void releaseRows() {
    boolean bool = OPTIMIZED_ENGINE;
    byte b1 = 0;
    byte b2 = 0;
    if (bool) {
      b1 = b2;
      while (true) {
        ArrayRow[] arrayOfArrayRow = this.mRows;
        if (b1 < arrayOfArrayRow.length) {
          ArrayRow arrayRow = arrayOfArrayRow[b1];
          if (arrayRow != null)
            this.mCache.optimizedArrayRowPool.release(arrayRow); 
          this.mRows[b1] = null;
          b1++;
          continue;
        } 
        break;
      } 
    } else {
      while (true) {
        ArrayRow[] arrayOfArrayRow = this.mRows;
        if (b1 < arrayOfArrayRow.length) {
          ArrayRow arrayRow = arrayOfArrayRow[b1];
          if (arrayRow != null)
            this.mCache.arrayRowPool.release(arrayRow); 
          this.mRows[b1] = null;
          b1++;
          continue;
        } 
        break;
      } 
    } 
  }
  
  public void addCenterPoint(ConstraintWidget paramConstraintWidget1, ConstraintWidget paramConstraintWidget2, float paramFloat, int paramInt) {
    SolverVariable solverVariable2 = createObjectVariable(paramConstraintWidget1.getAnchor(ConstraintAnchor.Type.LEFT));
    SolverVariable solverVariable3 = createObjectVariable(paramConstraintWidget1.getAnchor(ConstraintAnchor.Type.TOP));
    SolverVariable solverVariable4 = createObjectVariable(paramConstraintWidget1.getAnchor(ConstraintAnchor.Type.RIGHT));
    SolverVariable solverVariable5 = createObjectVariable(paramConstraintWidget1.getAnchor(ConstraintAnchor.Type.BOTTOM));
    SolverVariable solverVariable6 = createObjectVariable(paramConstraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT));
    SolverVariable solverVariable7 = createObjectVariable(paramConstraintWidget2.getAnchor(ConstraintAnchor.Type.TOP));
    SolverVariable solverVariable1 = createObjectVariable(paramConstraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT));
    SolverVariable solverVariable8 = createObjectVariable(paramConstraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM));
    ArrayRow arrayRow = createRow();
    double d1 = paramFloat;
    double d2 = Math.sin(d1);
    double d3 = paramInt;
    arrayRow.createRowWithAngle(solverVariable3, solverVariable5, solverVariable7, solverVariable8, (float)(d2 * d3));
    addConstraint(arrayRow);
    arrayRow = createRow();
    arrayRow.createRowWithAngle(solverVariable2, solverVariable4, solverVariable6, solverVariable1, (float)(Math.cos(d1) * d3));
    addConstraint(arrayRow);
  }
  
  public void addCentering(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt1, float paramFloat, SolverVariable paramSolverVariable3, SolverVariable paramSolverVariable4, int paramInt2, int paramInt3) {
    ArrayRow arrayRow = createRow();
    arrayRow.createRowCentering(paramSolverVariable1, paramSolverVariable2, paramInt1, paramFloat, paramSolverVariable3, paramSolverVariable4, paramInt2);
    if (paramInt3 != 8)
      arrayRow.addError(this, paramInt3); 
    addConstraint(arrayRow);
  }
  
  public void addConstraint(ArrayRow paramArrayRow) {
    if (paramArrayRow == null)
      return; 
    Metrics metrics = sMetrics;
    if (metrics != null) {
      metrics.constraints++;
      if (paramArrayRow.isSimpleDefinition) {
        metrics = sMetrics;
        metrics.simpleconstraints++;
      } 
    } 
    if (this.mNumRows + 1 >= this.mMaxRows || this.mNumColumns + 1 >= this.mMaxColumns)
      increaseTableSize(); 
    boolean bool1 = false;
    boolean bool2 = false;
    if (!paramArrayRow.isSimpleDefinition) {
      paramArrayRow.updateFromSystem(this);
      if (paramArrayRow.isEmpty())
        return; 
      paramArrayRow.ensurePositiveConstant();
      bool1 = bool2;
      if (paramArrayRow.chooseSubject(this)) {
        SolverVariable solverVariable = createExtraVariable();
        paramArrayRow.variable = solverVariable;
        addRow(paramArrayRow);
        this.mTempGoal.initFromRow(paramArrayRow);
        optimize(this.mTempGoal, true);
        if (solverVariable.definitionId == -1) {
          if (paramArrayRow.variable == solverVariable) {
            solverVariable = paramArrayRow.pickPivot(solverVariable);
            if (solverVariable != null) {
              Metrics metrics1 = sMetrics;
              if (metrics1 != null)
                metrics1.pivots++; 
              paramArrayRow.pivot(solverVariable);
            } 
          } 
          if (!paramArrayRow.isSimpleDefinition)
            paramArrayRow.variable.updateReferencesWithNewDefinition(paramArrayRow); 
          this.mNumRows--;
        } 
        bool1 = true;
      } 
      if (!paramArrayRow.hasKeyVariable())
        return; 
    } 
    if (!bool1)
      addRow(paramArrayRow); 
  }
  
  public ArrayRow addEquality(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt1, int paramInt2) {
    if (paramInt2 == 8 && paramSolverVariable2.isFinalValue && paramSolverVariable1.definitionId == -1) {
      paramSolverVariable1.setFinalValue(this, paramSolverVariable2.computedValue + paramInt1);
      return null;
    } 
    ArrayRow arrayRow = createRow();
    arrayRow.createRowEquals(paramSolverVariable1, paramSolverVariable2, paramInt1);
    if (paramInt2 != 8)
      arrayRow.addError(this, paramInt2); 
    addConstraint(arrayRow);
    return arrayRow;
  }
  
  public void addEquality(SolverVariable paramSolverVariable, int paramInt) {
    if (paramSolverVariable.definitionId == -1) {
      paramSolverVariable.setFinalValue(this, paramInt);
      return;
    } 
    int i = paramSolverVariable.definitionId;
    if (paramSolverVariable.definitionId != -1) {
      ArrayRow arrayRow = this.mRows[i];
      if (arrayRow.isSimpleDefinition) {
        arrayRow.constantValue = paramInt;
      } else if (arrayRow.variables.getCurrentSize() == 0) {
        arrayRow.isSimpleDefinition = true;
        arrayRow.constantValue = paramInt;
      } else {
        arrayRow = createRow();
        arrayRow.createRowEquals(paramSolverVariable, paramInt);
        addConstraint(arrayRow);
      } 
    } else {
      ArrayRow arrayRow = createRow();
      arrayRow.createRowDefinition(paramSolverVariable, paramInt);
      addConstraint(arrayRow);
    } 
  }
  
  public void addGreaterBarrier(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt, boolean paramBoolean) {
    ArrayRow arrayRow = createRow();
    SolverVariable solverVariable = createSlackVariable();
    solverVariable.strength = 0;
    arrayRow.createRowGreaterThan(paramSolverVariable1, paramSolverVariable2, solverVariable, paramInt);
    addConstraint(arrayRow);
  }
  
  public void addGreaterThan(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt1, int paramInt2) {
    ArrayRow arrayRow = createRow();
    SolverVariable solverVariable = createSlackVariable();
    solverVariable.strength = 0;
    arrayRow.createRowGreaterThan(paramSolverVariable1, paramSolverVariable2, solverVariable, paramInt1);
    if (paramInt2 != 8)
      addSingleError(arrayRow, (int)(arrayRow.variables.get(solverVariable) * -1.0F), paramInt2); 
    addConstraint(arrayRow);
  }
  
  public void addLowerBarrier(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt, boolean paramBoolean) {
    ArrayRow arrayRow = createRow();
    SolverVariable solverVariable = createSlackVariable();
    solverVariable.strength = 0;
    arrayRow.createRowLowerThan(paramSolverVariable1, paramSolverVariable2, solverVariable, paramInt);
    addConstraint(arrayRow);
  }
  
  public void addLowerThan(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt1, int paramInt2) {
    ArrayRow arrayRow = createRow();
    SolverVariable solverVariable = createSlackVariable();
    solverVariable.strength = 0;
    arrayRow.createRowLowerThan(paramSolverVariable1, paramSolverVariable2, solverVariable, paramInt1);
    if (paramInt2 != 8)
      addSingleError(arrayRow, (int)(arrayRow.variables.get(solverVariable) * -1.0F), paramInt2); 
    addConstraint(arrayRow);
  }
  
  public void addRatio(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, SolverVariable paramSolverVariable3, SolverVariable paramSolverVariable4, float paramFloat, int paramInt) {
    ArrayRow arrayRow = createRow();
    arrayRow.createRowDimensionRatio(paramSolverVariable1, paramSolverVariable2, paramSolverVariable3, paramSolverVariable4, paramFloat);
    if (paramInt != 8)
      arrayRow.addError(this, paramInt); 
    addConstraint(arrayRow);
  }
  
  void addSingleError(ArrayRow paramArrayRow, int paramInt1, int paramInt2) {
    paramArrayRow.addSingleError(createErrorVariable(paramInt2, null), paramInt1);
  }
  
  final void cleanupRows() {
    for (int i = 0; i < this.mNumRows; i = j + 1) {
      ArrayRow arrayRow = this.mRows[i];
      if (arrayRow.variables.getCurrentSize() == 0)
        arrayRow.isSimpleDefinition = true; 
      int j = i;
      if (arrayRow.isSimpleDefinition) {
        arrayRow.variable.computedValue = arrayRow.constantValue;
        arrayRow.variable.removeFromRow(arrayRow);
        j = i;
        while (true) {
          int k = this.mNumRows;
          if (j < k - 1) {
            ArrayRow[] arrayOfArrayRow = this.mRows;
            k = j + 1;
            arrayOfArrayRow[j] = arrayOfArrayRow[k];
            j = k;
            continue;
          } 
          this.mRows[k - 1] = null;
          this.mNumRows = k - 1;
          j = i - 1;
          break;
        } 
      } 
    } 
  }
  
  public SolverVariable createErrorVariable(int paramInt, String paramString) {
    Metrics metrics = sMetrics;
    if (metrics != null)
      metrics.errors++; 
    if (this.mNumColumns + 1 >= this.mMaxColumns)
      increaseTableSize(); 
    SolverVariable solverVariable = acquireSolverVariable(SolverVariable.Type.ERROR, paramString);
    this.mVariablesID++;
    this.mNumColumns++;
    solverVariable.id = this.mVariablesID;
    solverVariable.strength = paramInt;
    this.mCache.mIndexedVariables[this.mVariablesID] = solverVariable;
    this.mGoal.addError(solverVariable);
    return solverVariable;
  }
  
  public SolverVariable createExtraVariable() {
    Metrics metrics = sMetrics;
    if (metrics != null)
      metrics.extravariables++; 
    if (this.mNumColumns + 1 >= this.mMaxColumns)
      increaseTableSize(); 
    SolverVariable solverVariable = acquireSolverVariable(SolverVariable.Type.SLACK, null);
    this.mVariablesID++;
    this.mNumColumns++;
    solverVariable.id = this.mVariablesID;
    this.mCache.mIndexedVariables[this.mVariablesID] = solverVariable;
    return solverVariable;
  }
  
  public SolverVariable createObjectVariable(Object paramObject) {
    SolverVariable solverVariable = null;
    if (paramObject == null)
      return null; 
    if (this.mNumColumns + 1 >= this.mMaxColumns)
      increaseTableSize(); 
    if (paramObject instanceof ConstraintAnchor) {
      ConstraintAnchor constraintAnchor = (ConstraintAnchor)paramObject;
      solverVariable = constraintAnchor.getSolverVariable();
      paramObject = solverVariable;
      if (solverVariable == null) {
        constraintAnchor.resetSolverVariable(this.mCache);
        paramObject = constraintAnchor.getSolverVariable();
      } 
      if (((SolverVariable)paramObject).id != -1 && ((SolverVariable)paramObject).id <= this.mVariablesID) {
        Object object = paramObject;
        if (this.mCache.mIndexedVariables[((SolverVariable)paramObject).id] == null) {
          if (((SolverVariable)paramObject).id != -1)
            paramObject.reset(); 
          this.mVariablesID++;
          this.mNumColumns++;
          ((SolverVariable)paramObject).id = this.mVariablesID;
          ((SolverVariable)paramObject).mType = SolverVariable.Type.UNRESTRICTED;
          this.mCache.mIndexedVariables[this.mVariablesID] = (SolverVariable)paramObject;
          return (SolverVariable)paramObject;
        } 
        return (SolverVariable)object;
      } 
    } else {
      return solverVariable;
    } 
    if (((SolverVariable)paramObject).id != -1)
      paramObject.reset(); 
    this.mVariablesID++;
    this.mNumColumns++;
    ((SolverVariable)paramObject).id = this.mVariablesID;
    ((SolverVariable)paramObject).mType = SolverVariable.Type.UNRESTRICTED;
    this.mCache.mIndexedVariables[this.mVariablesID] = (SolverVariable)paramObject;
    return (SolverVariable)paramObject;
  }
  
  public ArrayRow createRow() {
    ArrayRow arrayRow;
    if (OPTIMIZED_ENGINE) {
      arrayRow = this.mCache.optimizedArrayRowPool.acquire();
      if (arrayRow == null) {
        arrayRow = new ValuesRow(this.mCache);
        OPTIMIZED_ARRAY_ROW_CREATION++;
      } else {
        arrayRow.reset();
      } 
    } else {
      arrayRow = this.mCache.arrayRowPool.acquire();
      if (arrayRow == null) {
        arrayRow = new ArrayRow(this.mCache);
        ARRAY_ROW_CREATION++;
      } else {
        arrayRow.reset();
      } 
    } 
    SolverVariable.increaseErrorId();
    return arrayRow;
  }
  
  public SolverVariable createSlackVariable() {
    Metrics metrics = sMetrics;
    if (metrics != null)
      metrics.slackvariables++; 
    if (this.mNumColumns + 1 >= this.mMaxColumns)
      increaseTableSize(); 
    SolverVariable solverVariable = acquireSolverVariable(SolverVariable.Type.SLACK, null);
    this.mVariablesID++;
    this.mNumColumns++;
    solverVariable.id = this.mVariablesID;
    this.mCache.mIndexedVariables[this.mVariablesID] = solverVariable;
    return solverVariable;
  }
  
  public void displayReadableRows() {
    displaySolverVariables();
    boolean bool = false;
    String str1 = "";
    byte b = 0;
    while (b < this.mVariablesID) {
      SolverVariable solverVariable = this.mCache.mIndexedVariables[b];
      String str = str1;
      if (solverVariable != null) {
        str = str1;
        if (solverVariable.isFinalValue) {
          StringBuilder stringBuilder1 = new StringBuilder();
          stringBuilder1.append(str1);
          stringBuilder1.append(" $[");
          stringBuilder1.append(b);
          stringBuilder1.append("] => ");
          stringBuilder1.append(solverVariable);
          stringBuilder1.append(" = ");
          stringBuilder1.append(solverVariable.computedValue);
          stringBuilder1.append("\n");
          str = stringBuilder1.toString();
        } 
      } 
      b++;
      str1 = str;
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(str1);
    stringBuilder.append("\n\n #  ");
    str1 = stringBuilder.toString();
    for (b = bool; b < this.mNumRows; b++) {
      stringBuilder = new StringBuilder();
      stringBuilder.append(str1);
      stringBuilder.append(this.mRows[b].toReadableString());
      String str = stringBuilder.toString();
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append(str);
      stringBuilder1.append("\n #  ");
      str1 = stringBuilder1.toString();
    } 
    String str2 = str1;
    if (this.mGoal != null) {
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append(str1);
      stringBuilder1.append("Goal: ");
      stringBuilder1.append(this.mGoal);
      stringBuilder1.append("\n");
      str2 = stringBuilder1.toString();
    } 
    System.out.println(str2);
  }
  
  void displaySystemInformations() {
    int i = 0;
    int j;
    for (j = 0; i < this.TABLE_SIZE; j = m) {
      ArrayRow[] arrayOfArrayRow = this.mRows;
      int m = j;
      if (arrayOfArrayRow[i] != null)
        m = j + arrayOfArrayRow[i].sizeInBytes(); 
      i++;
    } 
    byte b = 0;
    int k;
    for (k = 0; b < this.mNumRows; k = i) {
      ArrayRow[] arrayOfArrayRow = this.mRows;
      i = k;
      if (arrayOfArrayRow[b] != null)
        i = k + arrayOfArrayRow[b].sizeInBytes(); 
      b++;
    } 
    PrintStream printStream = System.out;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("Linear System -> Table size: ");
    stringBuilder.append(this.TABLE_SIZE);
    stringBuilder.append(" (");
    i = this.TABLE_SIZE;
    stringBuilder.append(getDisplaySize(i * i));
    stringBuilder.append(") -- row sizes: ");
    stringBuilder.append(getDisplaySize(j));
    stringBuilder.append(", actual size: ");
    stringBuilder.append(getDisplaySize(k));
    stringBuilder.append(" rows: ");
    stringBuilder.append(this.mNumRows);
    stringBuilder.append("/");
    stringBuilder.append(this.mMaxRows);
    stringBuilder.append(" cols: ");
    stringBuilder.append(this.mNumColumns);
    stringBuilder.append("/");
    stringBuilder.append(this.mMaxColumns);
    stringBuilder.append(" ");
    stringBuilder.append(0);
    stringBuilder.append(" occupied cells, ");
    stringBuilder.append(getDisplaySize(0));
    printStream.println(stringBuilder.toString());
  }
  
  public void displayVariablesReadableRows() {
    displaySolverVariables();
    String str = "";
    byte b = 0;
    while (b < this.mNumRows) {
      String str1 = str;
      if ((this.mRows[b]).variable.mType == SolverVariable.Type.UNRESTRICTED) {
        StringBuilder stringBuilder1 = new StringBuilder();
        stringBuilder1.append(str);
        stringBuilder1.append(this.mRows[b].toReadableString());
        str = stringBuilder1.toString();
        stringBuilder1 = new StringBuilder();
        stringBuilder1.append(str);
        stringBuilder1.append("\n");
        str1 = stringBuilder1.toString();
      } 
      b++;
      str = str1;
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(str);
    stringBuilder.append(this.mGoal);
    stringBuilder.append("\n");
    str = stringBuilder.toString();
    System.out.println(str);
  }
  
  public void fillMetrics(Metrics paramMetrics) {
    sMetrics = paramMetrics;
  }
  
  public Cache getCache() {
    return this.mCache;
  }
  
  Row getGoal() {
    return this.mGoal;
  }
  
  public int getMemoryUsed() {
    byte b = 0;
    int i;
    for (i = 0; b < this.mNumRows; i = j) {
      ArrayRow[] arrayOfArrayRow = this.mRows;
      int j = i;
      if (arrayOfArrayRow[b] != null)
        j = i + arrayOfArrayRow[b].sizeInBytes(); 
      b++;
    } 
    return i;
  }
  
  public int getNumEquations() {
    return this.mNumRows;
  }
  
  public int getNumVariables() {
    return this.mVariablesID;
  }
  
  public int getObjectVariableValue(Object paramObject) {
    paramObject = ((ConstraintAnchor)paramObject).getSolverVariable();
    return (paramObject != null) ? (int)(((SolverVariable)paramObject).computedValue + 0.5F) : 0;
  }
  
  ArrayRow getRow(int paramInt) {
    return this.mRows[paramInt];
  }
  
  float getValueFor(String paramString) {
    SolverVariable solverVariable = getVariable(paramString, SolverVariable.Type.UNRESTRICTED);
    return (solverVariable == null) ? 0.0F : solverVariable.computedValue;
  }
  
  SolverVariable getVariable(String paramString, SolverVariable.Type paramType) {
    if (this.mVariables == null)
      this.mVariables = new HashMap<String, SolverVariable>(); 
    SolverVariable solverVariable1 = this.mVariables.get(paramString);
    SolverVariable solverVariable2 = solverVariable1;
    if (solverVariable1 == null)
      solverVariable2 = createVariable(paramString, paramType); 
    return solverVariable2;
  }
  
  public void minimize() throws Exception {
    Metrics metrics = sMetrics;
    if (metrics != null)
      metrics.minimize++; 
    if (this.graphOptimizer || this.newgraphOptimizer) {
      metrics = sMetrics;
      if (metrics != null)
        metrics.graphOptimizer++; 
      boolean bool = false;
      byte b = 0;
      while (true) {
        if (b < this.mNumRows) {
          if (!(this.mRows[b]).isSimpleDefinition) {
            b = bool;
            break;
          } 
          b++;
          continue;
        } 
        b = 1;
        break;
      } 
      if (b == 0) {
        minimizeGoal(this.mGoal);
      } else {
        metrics = sMetrics;
        if (metrics != null)
          metrics.fullySolved++; 
        computeValues();
      } 
      return;
    } 
    minimizeGoal(this.mGoal);
  }
  
  void minimizeGoal(Row paramRow) throws Exception {
    Metrics metrics = sMetrics;
    if (metrics != null) {
      metrics.minimizeGoal++;
      metrics = sMetrics;
      metrics.maxVariables = Math.max(metrics.maxVariables, this.mNumColumns);
      metrics = sMetrics;
      metrics.maxRows = Math.max(metrics.maxRows, this.mNumRows);
    } 
    enforceBFS(paramRow);
    optimize(paramRow, false);
    computeValues();
  }
  
  public void removeRow(ArrayRow paramArrayRow) {
    if (paramArrayRow.isSimpleDefinition && paramArrayRow.variable != null) {
      if (paramArrayRow.variable.definitionId != -1) {
        int i = paramArrayRow.variable.definitionId;
        while (true) {
          int j = this.mNumRows;
          if (i < j - 1) {
            ArrayRow[] arrayOfArrayRow = this.mRows;
            j = i + 1;
            arrayOfArrayRow[i] = arrayOfArrayRow[j];
            i = j;
            continue;
          } 
          this.mNumRows = j - 1;
          break;
        } 
      } 
      paramArrayRow.variable.setFinalValue(this, paramArrayRow.constantValue);
    } 
  }
  
  public void reset() {
    byte b;
    for (b = 0; b < this.mCache.mIndexedVariables.length; b++) {
      SolverVariable solverVariable = this.mCache.mIndexedVariables[b];
      if (solverVariable != null)
        solverVariable.reset(); 
    } 
    this.mCache.solverVariablePool.releaseAll(this.mPoolVariables, this.mPoolVariablesCount);
    this.mPoolVariablesCount = 0;
    Arrays.fill((Object[])this.mCache.mIndexedVariables, (Object)null);
    HashMap<String, SolverVariable> hashMap = this.mVariables;
    if (hashMap != null)
      hashMap.clear(); 
    this.mVariablesID = 0;
    this.mGoal.clear();
    this.mNumColumns = 1;
    for (b = 0; b < this.mNumRows; b++)
      (this.mRows[b]).used = false; 
    releaseRows();
    this.mNumRows = 0;
    if (OPTIMIZED_ENGINE) {
      this.mTempGoal = new ValuesRow(this.mCache);
    } else {
      this.mTempGoal = new ArrayRow(this.mCache);
    } 
  }
  
  static interface Row {
    void addError(SolverVariable param1SolverVariable);
    
    void clear();
    
    SolverVariable getKey();
    
    SolverVariable getPivotCandidate(LinearSystem param1LinearSystem, boolean[] param1ArrayOfboolean);
    
    void initFromRow(Row param1Row);
    
    boolean isEmpty();
    
    void updateFromFinalVariable(LinearSystem param1LinearSystem, SolverVariable param1SolverVariable, boolean param1Boolean);
    
    void updateFromRow(ArrayRow param1ArrayRow, boolean param1Boolean);
    
    void updateFromSystem(LinearSystem param1LinearSystem);
  }
  
  class ValuesRow extends ArrayRow {
    public ValuesRow(Cache param1Cache) {
      this.variables = new SolverVariableValues(this, param1Cache);
    }
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/LinearSystem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */