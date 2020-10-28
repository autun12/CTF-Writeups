package androidx.constraintlayout.solver;

public class Cache {
  Pools.Pool<ArrayRow> arrayRowPool = new Pools.SimplePool<ArrayRow>(256);
  
  SolverVariable[] mIndexedVariables = new SolverVariable[32];
  
  Pools.Pool<ArrayRow> optimizedArrayRowPool = new Pools.SimplePool<ArrayRow>(256);
  
  Pools.Pool<SolverVariable> solverVariablePool = new Pools.SimplePool<SolverVariable>(256);
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/Cache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */