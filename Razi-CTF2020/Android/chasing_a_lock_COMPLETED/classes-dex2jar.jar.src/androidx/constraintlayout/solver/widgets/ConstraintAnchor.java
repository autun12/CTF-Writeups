package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.Cache;
import androidx.constraintlayout.solver.SolverVariable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public class ConstraintAnchor {
  private static final boolean ALLOW_BINARY = false;
  
  private static final int UNSET_GONE_MARGIN = -1;
  
  private HashSet<ConstraintAnchor> mDependents = null;
  
  int mGoneMargin = -1;
  
  public int mMargin = 0;
  
  public final ConstraintWidget mOwner;
  
  SolverVariable mSolverVariable;
  
  public ConstraintAnchor mTarget;
  
  public final Type mType;
  
  public ConstraintAnchor(ConstraintWidget paramConstraintWidget, Type paramType) {
    this.mOwner = paramConstraintWidget;
    this.mType = paramType;
  }
  
  private boolean isConnectionToMe(ConstraintWidget paramConstraintWidget, HashSet<ConstraintWidget> paramHashSet) {
    if (paramHashSet.contains(paramConstraintWidget))
      return false; 
    paramHashSet.add(paramConstraintWidget);
    if (paramConstraintWidget == getOwner())
      return true; 
    ArrayList<ConstraintAnchor> arrayList = paramConstraintWidget.getAnchors();
    int i = arrayList.size();
    for (byte b = 0; b < i; b++) {
      ConstraintAnchor constraintAnchor = arrayList.get(b);
      if (constraintAnchor.isSimilarDimensionConnection(this) && constraintAnchor.isConnected() && isConnectionToMe(constraintAnchor.getTarget().getOwner(), paramHashSet))
        return true; 
    } 
    return false;
  }
  
  public boolean connect(ConstraintAnchor paramConstraintAnchor, int paramInt) {
    return connect(paramConstraintAnchor, paramInt, -1, false);
  }
  
  public boolean connect(ConstraintAnchor paramConstraintAnchor, int paramInt1, int paramInt2, boolean paramBoolean) {
    if (paramConstraintAnchor == null) {
      reset();
      return true;
    } 
    if (!paramBoolean && !isValidConnection(paramConstraintAnchor))
      return false; 
    this.mTarget = paramConstraintAnchor;
    paramConstraintAnchor = this.mTarget;
    if (paramConstraintAnchor.mDependents == null)
      paramConstraintAnchor.mDependents = new HashSet<ConstraintAnchor>(); 
    this.mTarget.mDependents.add(this);
    if (paramInt1 > 0) {
      this.mMargin = paramInt1;
    } else {
      this.mMargin = 0;
    } 
    this.mGoneMargin = paramInt2;
    return true;
  }
  
  public void copyFrom(ConstraintAnchor paramConstraintAnchor, HashMap<ConstraintWidget, ConstraintWidget> paramHashMap) {
    ConstraintAnchor constraintAnchor2 = this.mTarget;
    if (constraintAnchor2 != null) {
      HashSet<ConstraintAnchor> hashSet = constraintAnchor2.mDependents;
      if (hashSet != null)
        hashSet.remove(this); 
    } 
    constraintAnchor2 = paramConstraintAnchor.mTarget;
    if (constraintAnchor2 != null) {
      Type type = constraintAnchor2.getType();
      this.mTarget = ((ConstraintWidget)paramHashMap.get(paramConstraintAnchor.mTarget.mOwner)).getAnchor(type);
    } else {
      this.mTarget = null;
    } 
    ConstraintAnchor constraintAnchor1 = this.mTarget;
    if (constraintAnchor1 != null) {
      if (constraintAnchor1.mDependents == null)
        constraintAnchor1.mDependents = new HashSet<ConstraintAnchor>(); 
      this.mTarget.mDependents.add(this);
    } 
    this.mMargin = paramConstraintAnchor.mMargin;
    this.mGoneMargin = paramConstraintAnchor.mGoneMargin;
  }
  
  public int getMargin() {
    if (this.mOwner.getVisibility() == 8)
      return 0; 
    if (this.mGoneMargin > -1) {
      ConstraintAnchor constraintAnchor = this.mTarget;
      if (constraintAnchor != null && constraintAnchor.mOwner.getVisibility() == 8)
        return this.mGoneMargin; 
    } 
    return this.mMargin;
  }
  
  public final ConstraintAnchor getOpposite() {
    switch (this.mType) {
      default:
        throw new AssertionError(this.mType.name());
      case BOTTOM:
        return this.mOwner.mTop;
      case TOP:
        return this.mOwner.mBottom;
      case RIGHT:
        return this.mOwner.mLeft;
      case LEFT:
        return this.mOwner.mRight;
      case CENTER:
      case BASELINE:
      case CENTER_X:
      case CENTER_Y:
      case NONE:
        break;
    } 
    return null;
  }
  
  public ConstraintWidget getOwner() {
    return this.mOwner;
  }
  
  public SolverVariable getSolverVariable() {
    return this.mSolverVariable;
  }
  
  public ConstraintAnchor getTarget() {
    return this.mTarget;
  }
  
  public Type getType() {
    return this.mType;
  }
  
  public boolean hasCenteredDependents() {
    HashSet<ConstraintAnchor> hashSet = this.mDependents;
    if (hashSet == null)
      return false; 
    Iterator<ConstraintAnchor> iterator = hashSet.iterator();
    while (iterator.hasNext()) {
      if (((ConstraintAnchor)iterator.next()).getOpposite().isConnected())
        return true; 
    } 
    return false;
  }
  
  public boolean hasDependents() {
    HashSet<ConstraintAnchor> hashSet = this.mDependents;
    boolean bool = false;
    if (hashSet == null)
      return false; 
    if (hashSet.size() > 0)
      bool = true; 
    return bool;
  }
  
  public boolean isConnected() {
    boolean bool;
    if (this.mTarget != null) {
      bool = true;
    } else {
      bool = false;
    } 
    return bool;
  }
  
  public boolean isConnectionAllowed(ConstraintWidget paramConstraintWidget) {
    if (isConnectionToMe(paramConstraintWidget, new HashSet<ConstraintWidget>()))
      return false; 
    ConstraintWidget constraintWidget = getOwner().getParent();
    return (constraintWidget == paramConstraintWidget) ? true : ((paramConstraintWidget.getParent() == constraintWidget));
  }
  
  public boolean isConnectionAllowed(ConstraintWidget paramConstraintWidget, ConstraintAnchor paramConstraintAnchor) {
    return isConnectionAllowed(paramConstraintWidget);
  }
  
  public boolean isSideAnchor() {
    switch (this.mType) {
      default:
        throw new AssertionError(this.mType.name());
      case LEFT:
      case RIGHT:
      case TOP:
      case BOTTOM:
        return true;
      case CENTER:
      case BASELINE:
      case CENTER_X:
      case CENTER_Y:
      case NONE:
        break;
    } 
    return false;
  }
  
  public boolean isSimilarDimensionConnection(ConstraintAnchor paramConstraintAnchor) {
    Type type2 = paramConstraintAnchor.getType();
    Type type1 = this.mType;
    boolean bool1 = true;
    boolean bool2 = true;
    boolean bool3 = true;
    if (type2 == type1)
      return true; 
    switch (this.mType) {
      default:
        throw new AssertionError(this.mType.name());
      case NONE:
        return false;
      case TOP:
      case BOTTOM:
      case BASELINE:
      case CENTER_Y:
        bool2 = bool3;
        if (type2 != Type.TOP) {
          bool2 = bool3;
          if (type2 != Type.BOTTOM) {
            bool2 = bool3;
            if (type2 != Type.CENTER_Y)
              if (type2 == Type.BASELINE) {
                bool2 = bool3;
              } else {
                bool2 = false;
              }  
          } 
        } 
        return bool2;
      case LEFT:
      case RIGHT:
      case CENTER_X:
        bool2 = bool1;
        if (type2 != Type.LEFT) {
          bool2 = bool1;
          if (type2 != Type.RIGHT)
            if (type2 == Type.CENTER_X) {
              bool2 = bool1;
            } else {
              bool2 = false;
            }  
        } 
        return bool2;
      case CENTER:
        break;
    } 
    if (type2 == Type.BASELINE)
      bool2 = false; 
    return bool2;
  }
  
  public boolean isValidConnection(ConstraintAnchor paramConstraintAnchor) {
    boolean bool1 = false;
    if (paramConstraintAnchor == null)
      return false; 
    Type type1 = paramConstraintAnchor.getType();
    Type type2 = this.mType;
    if (type1 == type2)
      return !(type2 == Type.BASELINE && (!paramConstraintAnchor.getOwner().hasBaseline() || !getOwner().hasBaseline())); 
    switch (this.mType) {
      default:
        throw new AssertionError(this.mType.name());
      case BASELINE:
      case CENTER_X:
      case CENTER_Y:
      case NONE:
        return false;
      case TOP:
      case BOTTOM:
        if (type1 == Type.TOP || type1 == Type.BOTTOM) {
          bool1 = true;
        } else {
          bool1 = false;
        } 
        bool2 = bool1;
        if (paramConstraintAnchor.getOwner() instanceof Guideline) {
          if (bool1 || type1 == Type.CENTER_Y)
            return true; 
          bool2 = false;
        } 
        return bool2;
      case LEFT:
      case RIGHT:
        if (type1 == Type.LEFT || type1 == Type.RIGHT) {
          bool2 = true;
        } else {
          bool2 = false;
        } 
        bool1 = bool2;
        if (paramConstraintAnchor.getOwner() instanceof Guideline) {
          if (bool2 || type1 == Type.CENTER_X)
            return true; 
          bool1 = false;
        } 
        return bool1;
      case CENTER:
        break;
    } 
    boolean bool2 = bool1;
    if (type1 != Type.BASELINE) {
      bool2 = bool1;
      if (type1 != Type.CENTER_X) {
        bool2 = bool1;
        if (type1 != Type.CENTER_Y)
          bool2 = true; 
      } 
    } 
    return bool2;
  }
  
  public boolean isVerticalAnchor() {
    switch (this.mType) {
      default:
        throw new AssertionError(this.mType.name());
      case TOP:
      case BOTTOM:
      case BASELINE:
      case CENTER_Y:
      case NONE:
        return true;
      case CENTER:
      case LEFT:
      case RIGHT:
      case CENTER_X:
        break;
    } 
    return false;
  }
  
  public void reset() {
    ConstraintAnchor constraintAnchor = this.mTarget;
    if (constraintAnchor != null) {
      HashSet<ConstraintAnchor> hashSet = constraintAnchor.mDependents;
      if (hashSet != null)
        hashSet.remove(this); 
    } 
    this.mTarget = null;
    this.mMargin = 0;
    this.mGoneMargin = -1;
  }
  
  public void resetSolverVariable(Cache paramCache) {
    SolverVariable solverVariable = this.mSolverVariable;
    if (solverVariable == null) {
      this.mSolverVariable = new SolverVariable(SolverVariable.Type.UNRESTRICTED, null);
    } else {
      solverVariable.reset();
    } 
  }
  
  public void setGoneMargin(int paramInt) {
    if (isConnected())
      this.mGoneMargin = paramInt; 
  }
  
  public void setMargin(int paramInt) {
    if (isConnected())
      this.mMargin = paramInt; 
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(this.mOwner.getDebugName());
    stringBuilder.append(":");
    stringBuilder.append(this.mType.toString());
    return stringBuilder.toString();
  }
  
  public enum Type {
    BASELINE, BOTTOM, CENTER, CENTER_X, CENTER_Y, LEFT, NONE, RIGHT, TOP;
    
    static {
      RIGHT = new Type("RIGHT", 3);
      BOTTOM = new Type("BOTTOM", 4);
      BASELINE = new Type("BASELINE", 5);
      CENTER = new Type("CENTER", 6);
      CENTER_X = new Type("CENTER_X", 7);
      CENTER_Y = new Type("CENTER_Y", 8);
      $VALUES = new Type[] { NONE, LEFT, TOP, RIGHT, BOTTOM, BASELINE, CENTER, CENTER_X, CENTER_Y };
    }
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/widgets/ConstraintAnchor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */