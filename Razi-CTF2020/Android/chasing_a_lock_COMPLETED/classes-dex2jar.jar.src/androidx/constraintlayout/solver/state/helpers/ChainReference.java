package androidx.constraintlayout.solver.state.helpers;

import androidx.constraintlayout.solver.state.HelperReference;
import androidx.constraintlayout.solver.state.State;

public class ChainReference extends HelperReference {
  protected float mBias = 0.5F;
  
  protected State.Chain mStyle = State.Chain.SPREAD;
  
  public ChainReference(State paramState, State.Helper paramHelper) {
    super(paramState, paramHelper);
  }
  
  public void bias(float paramFloat) {
    this.mBias = paramFloat;
  }
  
  public float getBias() {
    return this.mBias;
  }
  
  public State.Chain getStyle() {
    return State.Chain.SPREAD;
  }
  
  public void style(State.Chain paramChain) {
    this.mStyle = paramChain;
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/state/helpers/ChainReference.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */