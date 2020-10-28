package androidx.constraintlayout.solver.state;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;

public interface Reference {
  void apply();
  
  ConstraintWidget getConstraintWidget();
  
  Object getKey();
  
  void setConstraintWidget(ConstraintWidget paramConstraintWidget);
  
  void setKey(Object paramObject);
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/state/Reference.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */