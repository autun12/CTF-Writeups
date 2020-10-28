package androidx.constraintlayout.solver.widgets;

import java.util.Arrays;
import java.util.HashMap;

public class HelperWidget extends ConstraintWidget implements Helper {
  public ConstraintWidget[] mWidgets = new ConstraintWidget[4];
  
  public int mWidgetsCount = 0;
  
  public void add(ConstraintWidget paramConstraintWidget) {
    if (paramConstraintWidget != this && paramConstraintWidget != null) {
      int i = this.mWidgetsCount;
      ConstraintWidget[] arrayOfConstraintWidget = this.mWidgets;
      if (i + 1 > arrayOfConstraintWidget.length)
        this.mWidgets = Arrays.<ConstraintWidget>copyOf(arrayOfConstraintWidget, arrayOfConstraintWidget.length * 2); 
      arrayOfConstraintWidget = this.mWidgets;
      i = this.mWidgetsCount;
      arrayOfConstraintWidget[i] = paramConstraintWidget;
      this.mWidgetsCount = i + 1;
    } 
  }
  
  public void copy(ConstraintWidget paramConstraintWidget, HashMap<ConstraintWidget, ConstraintWidget> paramHashMap) {
    super.copy(paramConstraintWidget, paramHashMap);
    paramConstraintWidget = paramConstraintWidget;
    byte b = 0;
    this.mWidgetsCount = 0;
    int i = ((HelperWidget)paramConstraintWidget).mWidgetsCount;
    while (b < i) {
      add(paramHashMap.get(((HelperWidget)paramConstraintWidget).mWidgets[b]));
      b++;
    } 
  }
  
  public void removeAllIds() {
    this.mWidgetsCount = 0;
    Arrays.fill((Object[])this.mWidgets, (Object)null);
  }
  
  public void updateConstraints(ConstraintWidgetContainer paramConstraintWidgetContainer) {}
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/widgets/HelperWidget.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */