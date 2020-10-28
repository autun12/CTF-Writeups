package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.Metrics;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyGraph;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;

public class ConstraintWidgetContainer extends WidgetContainer {
  private static final boolean DEBUG = false;
  
  static final boolean DEBUG_GRAPH = false;
  
  private static final boolean DEBUG_LAYOUT = false;
  
  private static final int MAX_ITERATIONS = 8;
  
  BasicMeasure mBasicMeasureSolver = new BasicMeasure(this);
  
  int mDebugSolverPassCount = 0;
  
  public DependencyGraph mDependencyGraph = new DependencyGraph(this);
  
  public boolean mGroupsWrapOptimized = false;
  
  private boolean mHeightMeasuredTooSmall = false;
  
  ChainHead[] mHorizontalChainsArray = new ChainHead[4];
  
  int mHorizontalChainsSize = 0;
  
  public boolean mHorizontalWrapOptimized = false;
  
  private boolean mIsRtl = false;
  
  protected BasicMeasure.Measurer mMeasurer = null;
  
  public Metrics mMetrics;
  
  private int mOptimizationLevel = 263;
  
  int mPaddingBottom;
  
  int mPaddingLeft;
  
  int mPaddingRight;
  
  int mPaddingTop;
  
  public boolean mSkipSolver = false;
  
  protected LinearSystem mSystem = new LinearSystem();
  
  ChainHead[] mVerticalChainsArray = new ChainHead[4];
  
  int mVerticalChainsSize = 0;
  
  public boolean mVerticalWrapOptimized = false;
  
  private boolean mWidthMeasuredTooSmall = false;
  
  public int mWrapFixedHeight = 0;
  
  public int mWrapFixedWidth = 0;
  
  public ConstraintWidgetContainer() {}
  
  public ConstraintWidgetContainer(int paramInt1, int paramInt2) {
    super(paramInt1, paramInt2);
  }
  
  public ConstraintWidgetContainer(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  private void addHorizontalChain(ConstraintWidget paramConstraintWidget) {
    int i = this.mHorizontalChainsSize;
    ChainHead[] arrayOfChainHead = this.mHorizontalChainsArray;
    if (i + 1 >= arrayOfChainHead.length)
      this.mHorizontalChainsArray = Arrays.<ChainHead>copyOf(arrayOfChainHead, arrayOfChainHead.length * 2); 
    this.mHorizontalChainsArray[this.mHorizontalChainsSize] = new ChainHead(paramConstraintWidget, 0, isRtl());
    this.mHorizontalChainsSize++;
  }
  
  private void addVerticalChain(ConstraintWidget paramConstraintWidget) {
    int i = this.mVerticalChainsSize;
    ChainHead[] arrayOfChainHead = this.mVerticalChainsArray;
    if (i + 1 >= arrayOfChainHead.length)
      this.mVerticalChainsArray = Arrays.<ChainHead>copyOf(arrayOfChainHead, arrayOfChainHead.length * 2); 
    this.mVerticalChainsArray[this.mVerticalChainsSize] = new ChainHead(paramConstraintWidget, 1, isRtl());
    this.mVerticalChainsSize++;
  }
  
  private void resetChains() {
    this.mHorizontalChainsSize = 0;
    this.mVerticalChainsSize = 0;
  }
  
  void addChain(ConstraintWidget paramConstraintWidget, int paramInt) {
    if (paramInt == 0) {
      addHorizontalChain(paramConstraintWidget);
    } else if (paramInt == 1) {
      addVerticalChain(paramConstraintWidget);
    } 
  }
  
  public boolean addChildrenToSolver(LinearSystem paramLinearSystem) {
    addToSolver(paramLinearSystem);
    int i = this.mChildren.size();
    byte b = 0;
    boolean bool = false;
    while (b < i) {
      ConstraintWidget constraintWidget = this.mChildren.get(b);
      constraintWidget.setInBarrier(0, false);
      constraintWidget.setInBarrier(1, false);
      if (constraintWidget instanceof Barrier)
        bool = true; 
      b++;
    } 
    if (bool)
      for (b = 0; b < i; b++) {
        ConstraintWidget constraintWidget = this.mChildren.get(b);
        if (constraintWidget instanceof Barrier)
          ((Barrier)constraintWidget).markWidgets(); 
      }  
    for (b = 0; b < i; b++) {
      ConstraintWidget constraintWidget = this.mChildren.get(b);
      if (constraintWidget.addFirst())
        constraintWidget.addToSolver(paramLinearSystem); 
    } 
    for (b = 0; b < i; b++) {
      ConstraintWidget constraintWidget = this.mChildren.get(b);
      if (constraintWidget instanceof ConstraintWidgetContainer) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour1 = constraintWidget.mListDimensionBehaviors[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidget.mListDimensionBehaviors[1];
        if (dimensionBehaviour1 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)
          constraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED); 
        if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)
          constraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED); 
        constraintWidget.addToSolver(paramLinearSystem);
        if (dimensionBehaviour1 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)
          constraintWidget.setHorizontalDimensionBehaviour(dimensionBehaviour1); 
        if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)
          constraintWidget.setVerticalDimensionBehaviour(dimensionBehaviour2); 
      } else {
        Optimizer.checkMatchParent(this, paramLinearSystem, constraintWidget);
        if (!constraintWidget.addFirst())
          constraintWidget.addToSolver(paramLinearSystem); 
      } 
    } 
    if (this.mHorizontalChainsSize > 0)
      Chain.applyChainConstraints(this, paramLinearSystem, 0); 
    if (this.mVerticalChainsSize > 0)
      Chain.applyChainConstraints(this, paramLinearSystem, 1); 
    return true;
  }
  
  public void defineTerminalWidgets() {
    this.mDependencyGraph.defineTerminalWidgets(getHorizontalDimensionBehaviour(), getVerticalDimensionBehaviour());
  }
  
  public boolean directMeasure(boolean paramBoolean) {
    return this.mDependencyGraph.directMeasure(paramBoolean);
  }
  
  public boolean directMeasureSetup(boolean paramBoolean) {
    return this.mDependencyGraph.directMeasureSetup(paramBoolean);
  }
  
  public boolean directMeasureWithOrientation(boolean paramBoolean, int paramInt) {
    return this.mDependencyGraph.directMeasureWithOrientation(paramBoolean, paramInt);
  }
  
  public void fillMetrics(Metrics paramMetrics) {
    this.mMetrics = paramMetrics;
    this.mSystem.fillMetrics(paramMetrics);
  }
  
  public ArrayList<Guideline> getHorizontalGuidelines() {
    ArrayList<ConstraintWidget> arrayList = new ArrayList();
    int i = this.mChildren.size();
    for (byte b = 0; b < i; b++) {
      ConstraintWidget constraintWidget = this.mChildren.get(b);
      if (constraintWidget instanceof Guideline) {
        constraintWidget = constraintWidget;
        if (constraintWidget.getOrientation() == 0)
          arrayList.add(constraintWidget); 
      } 
    } 
    return (ArrayList)arrayList;
  }
  
  public BasicMeasure.Measurer getMeasurer() {
    return this.mMeasurer;
  }
  
  public int getOptimizationLevel() {
    return this.mOptimizationLevel;
  }
  
  public LinearSystem getSystem() {
    return this.mSystem;
  }
  
  public String getType() {
    return "ConstraintLayout";
  }
  
  public ArrayList<Guideline> getVerticalGuidelines() {
    ArrayList<ConstraintWidget> arrayList = new ArrayList();
    int i = this.mChildren.size();
    for (byte b = 0; b < i; b++) {
      ConstraintWidget constraintWidget = this.mChildren.get(b);
      if (constraintWidget instanceof Guideline) {
        constraintWidget = constraintWidget;
        if (constraintWidget.getOrientation() == 1)
          arrayList.add(constraintWidget); 
      } 
    } 
    return (ArrayList)arrayList;
  }
  
  public boolean handlesInternalConstraints() {
    return false;
  }
  
  public void invalidateGraph() {
    this.mDependencyGraph.invalidateGraph();
  }
  
  public void invalidateMeasures() {
    this.mDependencyGraph.invalidateMeasures();
  }
  
  public boolean isHeightMeasuredTooSmall() {
    return this.mHeightMeasuredTooSmall;
  }
  
  public boolean isRtl() {
    return this.mIsRtl;
  }
  
  public boolean isWidthMeasuredTooSmall() {
    return this.mWidthMeasuredTooSmall;
  }
  
  public void layout() {
    boolean bool1;
    Object object;
    this.mX = 0;
    this.mY = 0;
    int i = Math.max(0, getWidth());
    int j = Math.max(0, getHeight());
    this.mWidthMeasuredTooSmall = false;
    this.mHeightMeasuredTooSmall = false;
    if (optimizeFor(64) || optimizeFor(128)) {
      k = 1;
    } else {
      k = 0;
    } 
    LinearSystem linearSystem = this.mSystem;
    linearSystem.graphOptimizer = false;
    linearSystem.newgraphOptimizer = false;
    if (this.mOptimizationLevel != 0 && k)
      linearSystem.newgraphOptimizer = true; 
    ConstraintWidget.DimensionBehaviour dimensionBehaviour1 = this.mListDimensionBehaviors[1];
    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.mListDimensionBehaviors[0];
    ArrayList<ConstraintWidget> arrayList = this.mChildren;
    if (getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    resetChains();
    int m = this.mChildren.size();
    int k;
    for (k = 0; k < m; k++) {
      ConstraintWidget constraintWidget = this.mChildren.get(k);
      if (constraintWidget instanceof WidgetContainer)
        ((WidgetContainer)constraintWidget).layout(); 
    } 
    boolean bool2 = false;
    boolean bool = true;
    k = 0;
    while (bool) {
      int i1 = object + 1;
      boolean bool3 = bool;
      try {
        this.mSystem.reset();
        bool3 = bool;
        resetChains();
        bool3 = bool;
        createObjectVariables(this.mSystem);
        for (byte b = 0; b < m; b++) {
          bool3 = bool;
          ((ConstraintWidget)this.mChildren.get(b)).createObjectVariables(this.mSystem);
        } 
        bool3 = bool;
        bool = addChildrenToSolver(this.mSystem);
        bool3 = bool;
        if (bool) {
          bool3 = bool;
          this.mSystem.minimize();
          bool3 = bool;
        } 
      } catch (Exception exception) {
        exception.printStackTrace();
        PrintStream printStream = System.out;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("EXCEPTION : ");
        stringBuilder.append(exception);
        printStream.println(stringBuilder.toString());
      } 
      if (bool3) {
        updateChildrenFromSolver(this.mSystem, Optimizer.flags);
      } else {
        updateFromSolver(this.mSystem);
        for (byte b = 0; b < m; b++)
          ((ConstraintWidget)this.mChildren.get(b)).updateFromSolver(this.mSystem); 
      } 
      if (bool1 && i1 < 8 && Optimizer.flags[2]) {
        byte b = 0;
        int i3 = 0;
        int i2 = 0;
        while (b < m) {
          ConstraintWidget constraintWidget = this.mChildren.get(b);
          i3 = Math.max(i3, constraintWidget.mX + constraintWidget.getWidth());
          i2 = Math.max(i2, constraintWidget.mY + constraintWidget.getHeight());
          b++;
        } 
        i3 = Math.max(this.mMinWidth, i3);
        i2 = Math.max(this.mMinHeight, i2);
        if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && getWidth() < i3) {
          setWidth(i3);
          this.mListDimensionBehaviors[0] = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
          bool3 = true;
          k = 1;
        } else {
          bool3 = false;
        } 
        if (dimensionBehaviour1 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && getHeight() < i2) {
          setHeight(i2);
          this.mListDimensionBehaviors[1] = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
          bool3 = true;
          k = 1;
        } 
      } else {
        bool3 = false;
      } 
      int n = Math.max(this.mMinWidth, getWidth());
      if (n > getWidth()) {
        setWidth(n);
        this.mListDimensionBehaviors[0] = ConstraintWidget.DimensionBehaviour.FIXED;
        bool3 = true;
        k = 1;
      } 
      n = Math.max(this.mMinHeight, getHeight());
      if (n > getHeight()) {
        setHeight(n);
        this.mListDimensionBehaviors[1] = ConstraintWidget.DimensionBehaviour.FIXED;
        bool3 = true;
        k = 1;
      } 
      bool = bool3;
      n = k;
      if (k == 0) {
        boolean bool4 = bool3;
        int i2 = k;
        if (this.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
          bool4 = bool3;
          i2 = k;
          if (i > 0) {
            bool4 = bool3;
            i2 = k;
            if (getWidth() > i) {
              this.mWidthMeasuredTooSmall = true;
              this.mListDimensionBehaviors[0] = ConstraintWidget.DimensionBehaviour.FIXED;
              setWidth(i);
              bool4 = true;
              i2 = 1;
            } 
          } 
        } 
        bool = bool4;
        n = i2;
        if (this.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
          bool = bool4;
          n = i2;
          if (j > 0) {
            bool = bool4;
            n = i2;
            if (getHeight() > j) {
              this.mHeightMeasuredTooSmall = true;
              this.mListDimensionBehaviors[1] = ConstraintWidget.DimensionBehaviour.FIXED;
              setHeight(j);
              bool = true;
              k = 1;
              continue;
            } 
          } 
        } 
      } 
      k = n;
      continue;
      object = SYNTHETIC_LOCAL_VARIABLE_12;
    } 
    this.mChildren = arrayList;
    if (k != 0) {
      this.mListDimensionBehaviors[0] = dimensionBehaviour2;
      this.mListDimensionBehaviors[1] = dimensionBehaviour1;
    } 
    resetSolverVariables(this.mSystem.getCache());
  }
  
  public long measure(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9) {
    this.mPaddingLeft = paramInt8;
    this.mPaddingTop = paramInt9;
    return this.mBasicMeasureSolver.solverMeasure(this, paramInt1, paramInt8, paramInt9, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7);
  }
  
  public boolean optimizeFor(int paramInt) {
    boolean bool;
    if ((this.mOptimizationLevel & paramInt) == paramInt) {
      bool = true;
    } else {
      bool = false;
    } 
    return bool;
  }
  
  public void reset() {
    this.mSystem.reset();
    this.mPaddingLeft = 0;
    this.mPaddingRight = 0;
    this.mPaddingTop = 0;
    this.mPaddingBottom = 0;
    this.mSkipSolver = false;
    super.reset();
  }
  
  public void setMeasurer(BasicMeasure.Measurer paramMeasurer) {
    this.mMeasurer = paramMeasurer;
    this.mDependencyGraph.setMeasurer(paramMeasurer);
  }
  
  public void setOptimizationLevel(int paramInt) {
    this.mOptimizationLevel = paramInt;
    LinearSystem.OPTIMIZED_ENGINE = Optimizer.enabled(paramInt, 256);
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this.mPaddingLeft = paramInt1;
    this.mPaddingTop = paramInt2;
    this.mPaddingRight = paramInt3;
    this.mPaddingBottom = paramInt4;
  }
  
  public void setRtl(boolean paramBoolean) {
    this.mIsRtl = paramBoolean;
  }
  
  public void updateChildrenFromSolver(LinearSystem paramLinearSystem, boolean[] paramArrayOfboolean) {
    byte b = 0;
    paramArrayOfboolean[2] = false;
    updateFromSolver(paramLinearSystem);
    int i = this.mChildren.size();
    while (b < i) {
      ((ConstraintWidget)this.mChildren.get(b)).updateFromSolver(paramLinearSystem);
      b++;
    } 
  }
  
  public void updateFromRuns(boolean paramBoolean1, boolean paramBoolean2) {
    super.updateFromRuns(paramBoolean1, paramBoolean2);
    int i = this.mChildren.size();
    for (byte b = 0; b < i; b++)
      ((ConstraintWidget)this.mChildren.get(b)).updateFromRuns(paramBoolean1, paramBoolean2); 
  }
  
  public void updateHierarchy() {
    this.mBasicMeasureSolver.updateHierarchy(this);
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/widgets/ConstraintWidgetContainer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */