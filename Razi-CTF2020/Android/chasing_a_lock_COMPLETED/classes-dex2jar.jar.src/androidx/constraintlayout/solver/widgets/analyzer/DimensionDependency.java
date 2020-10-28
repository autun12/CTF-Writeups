package androidx.constraintlayout.solver.widgets.analyzer;

class DimensionDependency extends DependencyNode {
  public int wrapValue;
  
  public DimensionDependency(WidgetRun paramWidgetRun) {
    super(paramWidgetRun);
    if (paramWidgetRun instanceof HorizontalWidgetRun) {
      this.type = DependencyNode.Type.HORIZONTAL_DIMENSION;
    } else {
      this.type = DependencyNode.Type.VERTICAL_DIMENSION;
    } 
  }
  
  public void resolve(int paramInt) {
    if (this.resolved)
      return; 
    this.resolved = true;
    this.value = paramInt;
    for (Dependency dependency : this.dependencies)
      dependency.update(dependency); 
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/widgets/analyzer/DimensionDependency.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */