package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.Metrics;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.Optimizer;
import androidx.constraintlayout.solver.widgets.VirtualLayout;
import java.util.ArrayList;

public class BasicMeasure {
  public static final int AT_MOST = -2147483648;
  
  private static final boolean DEBUG = false;
  
  public static final int EXACTLY = 1073741824;
  
  public static final int FIXED = -3;
  
  public static final int MATCH_PARENT = -1;
  
  private static final int MODE_SHIFT = 30;
  
  public static final int UNSPECIFIED = 0;
  
  public static final int WRAP_CONTENT = -2;
  
  private ConstraintWidgetContainer constraintWidgetContainer;
  
  private Measure mMeasure = new Measure();
  
  private final ArrayList<ConstraintWidget> mVariableDimensionsWidgets = new ArrayList<ConstraintWidget>();
  
  public BasicMeasure(ConstraintWidgetContainer paramConstraintWidgetContainer) {
    this.constraintWidgetContainer = paramConstraintWidgetContainer;
  }
  
  private boolean measure(Measurer paramMeasurer, ConstraintWidget paramConstraintWidget, boolean paramBoolean) {
    boolean bool1;
    boolean bool2;
    this.mMeasure.horizontalBehavior = paramConstraintWidget.getHorizontalDimensionBehaviour();
    this.mMeasure.verticalBehavior = paramConstraintWidget.getVerticalDimensionBehaviour();
    this.mMeasure.horizontalDimension = paramConstraintWidget.getWidth();
    this.mMeasure.verticalDimension = paramConstraintWidget.getHeight();
    Measure measure2 = this.mMeasure;
    measure2.measuredNeedsSolverPass = false;
    measure2.useCurrentDimensions = paramBoolean;
    if (measure2.horizontalBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (this.mMeasure.verticalBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    if (bool1 && paramConstraintWidget.mDimensionRatio > 0.0F) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (bool2 && paramConstraintWidget.mDimensionRatio > 0.0F) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    if (bool1 && paramConstraintWidget.mResolvedMatchConstraintDefault[0] == 4)
      this.mMeasure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.FIXED; 
    if (bool2 && paramConstraintWidget.mResolvedMatchConstraintDefault[1] == 4)
      this.mMeasure.verticalBehavior = ConstraintWidget.DimensionBehaviour.FIXED; 
    paramMeasurer.measure(paramConstraintWidget, this.mMeasure);
    paramConstraintWidget.setWidth(this.mMeasure.measuredWidth);
    paramConstraintWidget.setHeight(this.mMeasure.measuredHeight);
    paramConstraintWidget.setHasBaseline(this.mMeasure.measuredHasBaseline);
    paramConstraintWidget.setBaselineDistance(this.mMeasure.measuredBaseline);
    Measure measure1 = this.mMeasure;
    measure1.useCurrentDimensions = false;
    return measure1.measuredNeedsSolverPass;
  }
  
  private void measureChildren(ConstraintWidgetContainer paramConstraintWidgetContainer) {
    int i = paramConstraintWidgetContainer.mChildren.size();
    Measurer measurer = paramConstraintWidgetContainer.getMeasurer();
    for (byte b = 0; b < i; b++) {
      ConstraintWidget constraintWidget = paramConstraintWidgetContainer.mChildren.get(b);
      if (!(constraintWidget instanceof androidx.constraintlayout.solver.widgets.Guideline) && (!constraintWidget.horizontalRun.dimension.resolved || !constraintWidget.verticalRun.dimension.resolved)) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour1 = constraintWidget.getDimensionBehaviour(0);
        boolean bool = true;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidget.getDimensionBehaviour(1);
        if (dimensionBehaviour1 != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || constraintWidget.mMatchConstraintDefaultWidth == 1 || dimensionBehaviour2 != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || constraintWidget.mMatchConstraintDefaultHeight == 1)
          bool = false; 
        if (!bool) {
          measure(measurer, constraintWidget, false);
          if (paramConstraintWidgetContainer.mMetrics != null) {
            Metrics metrics = paramConstraintWidgetContainer.mMetrics;
            metrics.measuredWidgets++;
          } 
        } 
      } 
    } 
    measurer.didMeasures();
  }
  
  private void solveLinearSystem(ConstraintWidgetContainer paramConstraintWidgetContainer, String paramString, int paramInt1, int paramInt2) {
    int i = paramConstraintWidgetContainer.getMinWidth();
    int j = paramConstraintWidgetContainer.getMinHeight();
    paramConstraintWidgetContainer.setMinWidth(0);
    paramConstraintWidgetContainer.setMinHeight(0);
    paramConstraintWidgetContainer.setWidth(paramInt1);
    paramConstraintWidgetContainer.setHeight(paramInt2);
    paramConstraintWidgetContainer.setMinWidth(i);
    paramConstraintWidgetContainer.setMinHeight(j);
    this.constraintWidgetContainer.layout();
  }
  
  public long solverMeasure(ConstraintWidgetContainer paramConstraintWidgetContainer, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9) {
    boolean bool1;
    Measurer measurer = paramConstraintWidgetContainer.getMeasurer();
    paramInt9 = paramConstraintWidgetContainer.mChildren.size();
    int i = paramConstraintWidgetContainer.getWidth();
    int j = paramConstraintWidgetContainer.getHeight();
    boolean bool = Optimizer.enabled(paramInt1, 128);
    if (bool || Optimizer.enabled(paramInt1, 64)) {
      paramInt1 = 1;
    } else {
      paramInt1 = 0;
    } 
    paramInt3 = paramInt1;
    if (paramInt1 != 0) {
      paramInt2 = 0;
      while (true) {
        paramInt3 = paramInt1;
        if (paramInt2 < paramInt9) {
          ConstraintWidget constraintWidget = paramConstraintWidgetContainer.mChildren.get(paramInt2);
          if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            paramInt3 = 1;
          } else {
            paramInt3 = 0;
          } 
          if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            paramInt8 = 1;
          } else {
            paramInt8 = 0;
          } 
          if (paramInt3 != 0 && paramInt8 != 0 && constraintWidget.getDimensionRatio() > 0.0F) {
            paramInt3 = 1;
          } else {
            paramInt3 = 0;
          } 
          if ((constraintWidget.isInHorizontalChain() && paramInt3 != 0) || (constraintWidget.isInVerticalChain() && paramInt3 != 0) || constraintWidget instanceof VirtualLayout || constraintWidget.isInHorizontalChain() || constraintWidget.isInVerticalChain()) {
            paramInt3 = 0;
            break;
          } 
          paramInt2++;
          continue;
        } 
        break;
      } 
    } 
    if (paramInt3 != 0 && LinearSystem.sMetrics != null) {
      Metrics metrics = LinearSystem.sMetrics;
      metrics.measures++;
    } 
    if ((paramInt4 == 1073741824 && paramInt6 == 1073741824) || bool) {
      paramInt1 = 1;
    } else {
      paramInt1 = 0;
    } 
    if ((paramInt3 & paramInt1) != 0) {
      boolean bool2;
      paramInt1 = Math.min(paramConstraintWidgetContainer.getMaxWidth(), paramInt5);
      paramInt2 = Math.min(paramConstraintWidgetContainer.getMaxHeight(), paramInt7);
      if (paramInt4 == 1073741824 && paramConstraintWidgetContainer.getWidth() != paramInt1) {
        paramConstraintWidgetContainer.setWidth(paramInt1);
        paramConstraintWidgetContainer.invalidateGraph();
      } 
      if (paramInt6 == 1073741824 && paramConstraintWidgetContainer.getHeight() != paramInt2) {
        paramConstraintWidgetContainer.setHeight(paramInt2);
        paramConstraintWidgetContainer.invalidateGraph();
      } 
      if (paramInt4 == 1073741824 && paramInt6 == 1073741824) {
        bool2 = paramConstraintWidgetContainer.directMeasure(bool);
        paramInt1 = 2;
      } else {
        boolean bool3 = paramConstraintWidgetContainer.directMeasureSetup(bool);
        if (paramInt4 == 1073741824) {
          bool3 &= paramConstraintWidgetContainer.directMeasureWithOrientation(bool, 0);
          paramInt2 = 1;
        } else {
          paramInt2 = 0;
        } 
        bool2 = bool3;
        paramInt1 = paramInt2;
        if (paramInt6 == 1073741824) {
          bool2 = bool3 & paramConstraintWidgetContainer.directMeasureWithOrientation(bool, 1);
          paramInt1 = paramInt2 + 1;
        } 
      } 
      bool1 = bool2;
      paramInt2 = paramInt1;
      if (bool2) {
        if (paramInt4 == 1073741824) {
          bool1 = true;
        } else {
          bool1 = false;
        } 
        if (paramInt6 == 1073741824) {
          bool = true;
        } else {
          bool = false;
        } 
        paramConstraintWidgetContainer.updateFromRuns(bool1, bool);
        bool1 = bool2;
        paramInt2 = paramInt1;
      } 
    } else {
      bool1 = false;
      paramInt2 = 0;
    } 
    if (!bool1 || paramInt2 != 2) {
      int k;
      if (paramInt9 > 0)
        measureChildren(paramConstraintWidgetContainer); 
      paramInt3 = paramConstraintWidgetContainer.getOptimizationLevel();
      int m = this.mVariableDimensionsWidgets.size();
      if (paramInt9 > 0)
        solveLinearSystem(paramConstraintWidgetContainer, "First pass", i, j); 
      paramInt1 = paramInt3;
      if (m > 0) {
        boolean bool2;
        int n;
        if (paramConstraintWidgetContainer.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
          paramInt8 = 1;
        } else {
          paramInt8 = 0;
        } 
        if (paramConstraintWidgetContainer.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
          paramInt9 = 1;
        } else {
          paramInt9 = 0;
        } 
        paramInt2 = Math.max(paramConstraintWidgetContainer.getWidth(), this.constraintWidgetContainer.getMinWidth());
        paramInt1 = Math.max(paramConstraintWidgetContainer.getHeight(), this.constraintWidgetContainer.getMinHeight());
        int i1 = 0;
        paramInt6 = 0;
        paramInt4 = j;
        paramInt5 = i;
        while (i1 < m) {
          ConstraintWidget constraintWidget = this.mVariableDimensionsWidgets.get(i1);
          if (constraintWidget instanceof VirtualLayout) {
            int i2 = constraintWidget.getWidth();
            i = constraintWidget.getHeight();
            boolean bool3 = paramInt6 | measure(measurer, constraintWidget, true);
            if (paramConstraintWidgetContainer.mMetrics != null) {
              Metrics metrics = paramConstraintWidgetContainer.mMetrics;
              metrics.measuredMatchWidgets++;
            } 
            int i3 = constraintWidget.getWidth();
            j = constraintWidget.getHeight();
            paramInt6 = paramInt2;
            if (i3 != i2) {
              constraintWidget.setWidth(i3);
              paramInt6 = paramInt2;
              if (paramInt8 != 0) {
                paramInt6 = paramInt2;
                if (constraintWidget.getRight() > paramInt2)
                  paramInt6 = Math.max(paramInt2, constraintWidget.getRight() + constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT).getMargin()); 
              } 
              bool3 = true;
            } 
            paramInt2 = paramInt1;
            if (j != i) {
              constraintWidget.setHeight(j);
              paramInt2 = paramInt1;
              if (paramInt9 != 0) {
                paramInt2 = paramInt1;
                if (constraintWidget.getBottom() > paramInt1)
                  paramInt2 = Math.max(paramInt1, constraintWidget.getBottom() + constraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin()); 
              } 
              bool3 = true;
            } 
            bool3 = ((VirtualLayout)constraintWidget).needSolverPass() | bool3;
            paramInt1 = paramInt2;
            paramInt2 = paramInt6;
            bool2 = bool3;
          } 
          i1++;
        } 
        j = 0;
        paramInt7 = paramInt4;
        i1 = paramInt5;
        i = paramInt1;
        paramInt4 = m;
        paramInt5 = j;
        while (paramInt5 < 2) {
          int i2;
          j = 0;
          paramInt1 = i;
          i = paramInt5;
          while (j < paramInt4) {
            ConstraintWidget constraintWidget = this.mVariableDimensionsWidgets.get(j);
            if ((!(constraintWidget instanceof androidx.constraintlayout.solver.widgets.Helper) || constraintWidget instanceof VirtualLayout) && !(constraintWidget instanceof androidx.constraintlayout.solver.widgets.Guideline) && constraintWidget.getVisibility() != 8 && (!constraintWidget.horizontalRun.dimension.resolved || !constraintWidget.verticalRun.dimension.resolved) && !(constraintWidget instanceof VirtualLayout)) {
              int i4;
              paramInt5 = constraintWidget.getWidth();
              int i7 = constraintWidget.getHeight();
              m = constraintWidget.getBaselineDistance();
              int i6 = measure(measurer, constraintWidget, true);
              if (paramConstraintWidgetContainer.mMetrics != null) {
                Metrics metrics = paramConstraintWidgetContainer.mMetrics;
                metrics.measuredMatchWidgets++;
              } 
              int i9 = constraintWidget.getWidth();
              int i8 = constraintWidget.getHeight();
              if (i9 != paramInt5) {
                constraintWidget.setWidth(i9);
                paramInt5 = paramInt2;
                if (paramInt8 != 0) {
                  paramInt5 = paramInt2;
                  if (constraintWidget.getRight() > paramInt2)
                    paramInt5 = Math.max(paramInt2, constraintWidget.getRight() + constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT).getMargin()); 
                } 
                paramInt6 = 1;
                paramInt2 = paramInt5;
              } else {
                bool2 = paramInt6 | i6;
              } 
              int i5 = paramInt1;
              if (i8 != i7) {
                constraintWidget.setHeight(i8);
                int i10 = paramInt1;
                if (paramInt9 != 0) {
                  int i11 = paramInt1;
                  if (constraintWidget.getBottom() > paramInt1)
                    i4 = Math.max(paramInt1, constraintWidget.getBottom() + constraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin()); 
                } 
                bool2 = true;
              } 
              if (constraintWidget.hasBaseline() && m != constraintWidget.getBaselineDistance()) {
                bool2 = true;
                i2 = i4;
              } else {
                i2 = i4;
              } 
            } 
            j++;
          } 
          if (bool2) {
            solveLinearSystem(paramConstraintWidgetContainer, "intermediate pass", i1, paramInt7);
            bool2 = false;
          } 
          int i3 = i + 1;
          n = i2;
        } 
        if (bool2) {
          boolean bool3;
          solveLinearSystem(paramConstraintWidgetContainer, "2nd pass", i1, paramInt7);
          if (paramConstraintWidgetContainer.getWidth() < paramInt2) {
            paramConstraintWidgetContainer.setWidth(paramInt2);
            bool3 = true;
          } else {
            bool3 = false;
          } 
          if (paramConstraintWidgetContainer.getHeight() < n) {
            paramConstraintWidgetContainer.setHeight(n);
            bool3 = true;
          } 
          if (bool3)
            solveLinearSystem(paramConstraintWidgetContainer, "3rd pass", i1, paramInt7); 
        } 
        k = paramInt3;
      } 
      paramConstraintWidgetContainer.setOptimizationLevel(k);
    } 
    return 0L;
  }
  
  public void updateHierarchy(ConstraintWidgetContainer paramConstraintWidgetContainer) {
    this.mVariableDimensionsWidgets.clear();
    int i = paramConstraintWidgetContainer.mChildren.size();
    for (byte b = 0; b < i; b++) {
      ConstraintWidget constraintWidget = paramConstraintWidgetContainer.mChildren.get(b);
      if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_PARENT || constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_PARENT)
        this.mVariableDimensionsWidgets.add(constraintWidget); 
    } 
    paramConstraintWidgetContainer.invalidateGraph();
  }
  
  public static class Measure {
    public ConstraintWidget.DimensionBehaviour horizontalBehavior;
    
    public int horizontalDimension;
    
    public int measuredBaseline;
    
    public boolean measuredHasBaseline;
    
    public int measuredHeight;
    
    public boolean measuredNeedsSolverPass;
    
    public int measuredWidth;
    
    public boolean useCurrentDimensions;
    
    public ConstraintWidget.DimensionBehaviour verticalBehavior;
    
    public int verticalDimension;
  }
  
  public enum MeasureType {
  
  }
  
  public static interface Measurer {
    void didMeasures();
    
    void measure(ConstraintWidget param1ConstraintWidget, BasicMeasure.Measure param1Measure);
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/widgets/analyzer/BasicMeasure.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */