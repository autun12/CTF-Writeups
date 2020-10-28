package androidx.constraintlayout.solver;

public class GoalRow extends ArrayRow {
  public GoalRow(Cache paramCache) {
    super(paramCache);
  }
  
  public void addError(SolverVariable paramSolverVariable) {
    super.addError(paramSolverVariable);
    paramSolverVariable.usageInRowCount--;
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/GoalRow.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */