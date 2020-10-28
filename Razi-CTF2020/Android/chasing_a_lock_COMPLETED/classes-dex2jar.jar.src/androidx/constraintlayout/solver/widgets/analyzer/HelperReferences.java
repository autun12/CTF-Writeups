package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.Barrier;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.Iterator;

class HelperReferences extends WidgetRun {
  public HelperReferences(ConstraintWidget paramConstraintWidget) {
    super(paramConstraintWidget);
  }
  
  private void addDependency(DependencyNode paramDependencyNode) {
    this.start.dependencies.add(paramDependencyNode);
    paramDependencyNode.targets.add(this.start);
  }
  
  void apply() {
    if (this.widget instanceof Barrier) {
      this.start.delegateToWidgetRun = true;
      Barrier barrier = (Barrier)this.widget;
      int i = barrier.getBarrierType();
      boolean bool = barrier.allowsGoneWidget();
      boolean bool1 = false;
      boolean bool2 = false;
      boolean bool3 = false;
      byte b = 0;
      if (i != 0) {
        if (i != 1) {
          if (i != 2) {
            if (i == 3) {
              this.start.type = DependencyNode.Type.BOTTOM;
              while (b < barrier.mWidgetsCount) {
                ConstraintWidget constraintWidget = barrier.mWidgets[b];
                if (bool || constraintWidget.getVisibility() != 8) {
                  DependencyNode dependencyNode = constraintWidget.verticalRun.end;
                  dependencyNode.dependencies.add(this.start);
                  this.start.targets.add(dependencyNode);
                } 
                b++;
              } 
              addDependency(this.widget.verticalRun.start);
              addDependency(this.widget.verticalRun.end);
            } 
          } else {
            this.start.type = DependencyNode.Type.TOP;
            for (b = bool1; b < barrier.mWidgetsCount; b++) {
              ConstraintWidget constraintWidget = barrier.mWidgets[b];
              if (bool || constraintWidget.getVisibility() != 8) {
                DependencyNode dependencyNode = constraintWidget.verticalRun.start;
                dependencyNode.dependencies.add(this.start);
                this.start.targets.add(dependencyNode);
              } 
            } 
            addDependency(this.widget.verticalRun.start);
            addDependency(this.widget.verticalRun.end);
          } 
        } else {
          this.start.type = DependencyNode.Type.RIGHT;
          for (b = bool2; b < barrier.mWidgetsCount; b++) {
            ConstraintWidget constraintWidget = barrier.mWidgets[b];
            if (bool || constraintWidget.getVisibility() != 8) {
              DependencyNode dependencyNode = constraintWidget.horizontalRun.end;
              dependencyNode.dependencies.add(this.start);
              this.start.targets.add(dependencyNode);
            } 
          } 
          addDependency(this.widget.horizontalRun.start);
          addDependency(this.widget.horizontalRun.end);
        } 
      } else {
        this.start.type = DependencyNode.Type.LEFT;
        for (b = bool3; b < barrier.mWidgetsCount; b++) {
          ConstraintWidget constraintWidget = barrier.mWidgets[b];
          if (bool || constraintWidget.getVisibility() != 8) {
            DependencyNode dependencyNode = constraintWidget.horizontalRun.start;
            dependencyNode.dependencies.add(this.start);
            this.start.targets.add(dependencyNode);
          } 
        } 
        addDependency(this.widget.horizontalRun.start);
        addDependency(this.widget.horizontalRun.end);
      } 
    } 
  }
  
  public void applyToWidget() {
    if (this.widget instanceof Barrier) {
      int i = ((Barrier)this.widget).getBarrierType();
      if (i == 0 || i == 1) {
        this.widget.setX(this.start.value);
        return;
      } 
      this.widget.setY(this.start.value);
    } 
  }
  
  void clear() {
    this.runGroup = null;
    this.start.clear();
  }
  
  void reset() {
    this.start.resolved = false;
  }
  
  boolean supportsWrapComputation() {
    return false;
  }
  
  public void update(Dependency paramDependency) {
    Object object1;
    Object object2;
    Barrier barrier = (Barrier)this.widget;
    int i = barrier.getBarrierType();
    Iterator<DependencyNode> iterator = this.start.targets.iterator();
    byte b = -1;
    byte b1 = 0;
    while (true) {
      while (true)
        break; 
      if (b1 < SYNTHETIC_LOCAL_VARIABLE_6) {
        object2 = SYNTHETIC_LOCAL_VARIABLE_6;
        object1 = SYNTHETIC_LOCAL_VARIABLE_7;
      } 
    } 
    if (i == 0 || i == 2) {
      this.start.resolve(object1 + barrier.getMargin());
      return;
    } 
    this.start.resolve(object2 + barrier.getMargin());
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/widgets/analyzer/HelperReferences.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */