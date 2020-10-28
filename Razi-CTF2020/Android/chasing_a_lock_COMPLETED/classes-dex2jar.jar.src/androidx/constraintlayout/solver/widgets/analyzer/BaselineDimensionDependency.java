package androidx.constraintlayout.solver.widgets.analyzer;

class BaselineDimensionDependency extends DimensionDependency {
  public BaselineDimensionDependency(WidgetRun paramWidgetRun) {
    super(paramWidgetRun);
  }
  
  public void update(DependencyNode paramDependencyNode) {
    ((VerticalWidgetRun)this.run).baseline.margin = this.run.widget.getBaselineDistance();
    this.resolved = true;
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/widgets/analyzer/BaselineDimensionDependency.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */