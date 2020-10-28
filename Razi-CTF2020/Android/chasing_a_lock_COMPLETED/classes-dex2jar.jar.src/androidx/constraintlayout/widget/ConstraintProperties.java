package androidx.constraintlayout.widget;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;

public class ConstraintProperties {
  public static final int BASELINE = 5;
  
  public static final int BOTTOM = 4;
  
  public static final int END = 7;
  
  public static final int LEFT = 1;
  
  public static final int MATCH_CONSTRAINT = 0;
  
  public static final int MATCH_CONSTRAINT_SPREAD = 0;
  
  public static final int MATCH_CONSTRAINT_WRAP = 1;
  
  public static final int PARENT_ID = 0;
  
  public static final int RIGHT = 2;
  
  public static final int START = 6;
  
  public static final int TOP = 3;
  
  public static final int UNSET = -1;
  
  public static final int WRAP_CONTENT = -2;
  
  ConstraintLayout.LayoutParams mParams;
  
  View mView;
  
  public ConstraintProperties(View paramView) {
    ViewGroup.LayoutParams layoutParams = paramView.getLayoutParams();
    if (layoutParams instanceof ConstraintLayout.LayoutParams) {
      this.mParams = (ConstraintLayout.LayoutParams)layoutParams;
      this.mView = paramView;
      return;
    } 
    throw new RuntimeException("Only children of ConstraintLayout.LayoutParams supported");
  }
  
  private String sideToString(int paramInt) {
    switch (paramInt) {
      default:
        return "undefined";
      case 7:
        return "end";
      case 6:
        return "start";
      case 5:
        return "baseline";
      case 4:
        return "bottom";
      case 3:
        return "top";
      case 2:
        return "right";
      case 1:
        break;
    } 
    return "left";
  }
  
  public ConstraintProperties addToHorizontalChain(int paramInt1, int paramInt2) {
    byte b;
    if (paramInt1 == 0) {
      b = 1;
    } else {
      b = 2;
    } 
    connect(1, paramInt1, b, 0);
    if (paramInt2 == 0) {
      b = 2;
    } else {
      b = 1;
    } 
    connect(2, paramInt2, b, 0);
    if (paramInt1 != 0)
      (new ConstraintProperties(((ViewGroup)this.mView.getParent()).findViewById(paramInt1))).connect(2, this.mView.getId(), 1, 0); 
    if (paramInt2 != 0)
      (new ConstraintProperties(((ViewGroup)this.mView.getParent()).findViewById(paramInt2))).connect(1, this.mView.getId(), 2, 0); 
    return this;
  }
  
  public ConstraintProperties addToHorizontalChainRTL(int paramInt1, int paramInt2) {
    byte b;
    if (paramInt1 == 0) {
      b = 6;
    } else {
      b = 7;
    } 
    connect(6, paramInt1, b, 0);
    if (paramInt2 == 0) {
      b = 7;
    } else {
      b = 6;
    } 
    connect(7, paramInt2, b, 0);
    if (paramInt1 != 0)
      (new ConstraintProperties(((ViewGroup)this.mView.getParent()).findViewById(paramInt1))).connect(7, this.mView.getId(), 6, 0); 
    if (paramInt2 != 0)
      (new ConstraintProperties(((ViewGroup)this.mView.getParent()).findViewById(paramInt2))).connect(6, this.mView.getId(), 7, 0); 
    return this;
  }
  
  public ConstraintProperties addToVerticalChain(int paramInt1, int paramInt2) {
    byte b;
    if (paramInt1 == 0) {
      b = 3;
    } else {
      b = 4;
    } 
    connect(3, paramInt1, b, 0);
    if (paramInt2 == 0) {
      b = 4;
    } else {
      b = 3;
    } 
    connect(4, paramInt2, b, 0);
    if (paramInt1 != 0)
      (new ConstraintProperties(((ViewGroup)this.mView.getParent()).findViewById(paramInt1))).connect(4, this.mView.getId(), 3, 0); 
    if (paramInt2 != 0)
      (new ConstraintProperties(((ViewGroup)this.mView.getParent()).findViewById(paramInt2))).connect(3, this.mView.getId(), 4, 0); 
    return this;
  }
  
  public ConstraintProperties alpha(float paramFloat) {
    this.mView.setAlpha(paramFloat);
    return this;
  }
  
  public void apply() {}
  
  public ConstraintProperties center(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, float paramFloat) {
    if (paramInt3 >= 0) {
      if (paramInt6 >= 0) {
        if (paramFloat > 0.0F && paramFloat <= 1.0F) {
          if (paramInt2 == 1 || paramInt2 == 2) {
            connect(1, paramInt1, paramInt2, paramInt3);
            connect(2, paramInt4, paramInt5, paramInt6);
            this.mParams.horizontalBias = paramFloat;
            return this;
          } 
          if (paramInt2 == 6 || paramInt2 == 7) {
            connect(6, paramInt1, paramInt2, paramInt3);
            connect(7, paramInt4, paramInt5, paramInt6);
            this.mParams.horizontalBias = paramFloat;
            return this;
          } 
          connect(3, paramInt1, paramInt2, paramInt3);
          connect(4, paramInt4, paramInt5, paramInt6);
          this.mParams.verticalBias = paramFloat;
          return this;
        } 
        throw new IllegalArgumentException("bias must be between 0 and 1 inclusive");
      } 
      throw new IllegalArgumentException("margin must be > 0");
    } 
    throw new IllegalArgumentException("margin must be > 0");
  }
  
  public ConstraintProperties centerHorizontally(int paramInt) {
    if (paramInt == 0) {
      center(0, 1, 0, 0, 2, 0, 0.5F);
    } else {
      center(paramInt, 2, 0, paramInt, 1, 0, 0.5F);
    } 
    return this;
  }
  
  public ConstraintProperties centerHorizontally(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, float paramFloat) {
    connect(1, paramInt1, paramInt2, paramInt3);
    connect(2, paramInt4, paramInt5, paramInt6);
    this.mParams.horizontalBias = paramFloat;
    return this;
  }
  
  public ConstraintProperties centerHorizontallyRtl(int paramInt) {
    if (paramInt == 0) {
      center(0, 6, 0, 0, 7, 0, 0.5F);
    } else {
      center(paramInt, 7, 0, paramInt, 6, 0, 0.5F);
    } 
    return this;
  }
  
  public ConstraintProperties centerHorizontallyRtl(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, float paramFloat) {
    connect(6, paramInt1, paramInt2, paramInt3);
    connect(7, paramInt4, paramInt5, paramInt6);
    this.mParams.horizontalBias = paramFloat;
    return this;
  }
  
  public ConstraintProperties centerVertically(int paramInt) {
    if (paramInt == 0) {
      center(0, 3, 0, 0, 4, 0, 0.5F);
    } else {
      center(paramInt, 4, 0, paramInt, 3, 0, 0.5F);
    } 
    return this;
  }
  
  public ConstraintProperties centerVertically(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, float paramFloat) {
    connect(3, paramInt1, paramInt2, paramInt3);
    connect(4, paramInt4, paramInt5, paramInt6);
    this.mParams.verticalBias = paramFloat;
    return this;
  }
  
  public ConstraintProperties connect(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    StringBuilder stringBuilder;
    switch (paramInt1) {
      default:
        stringBuilder = new StringBuilder();
        stringBuilder.append(sideToString(paramInt1));
        stringBuilder.append(" to ");
        stringBuilder.append(sideToString(paramInt3));
        stringBuilder.append(" unknown");
        throw new IllegalArgumentException(stringBuilder.toString());
      case 7:
        if (paramInt3 == 7) {
          ConstraintLayout.LayoutParams layoutParams = this.mParams;
          layoutParams.endToEnd = paramInt2;
          layoutParams.endToStart = -1;
        } else if (paramInt3 == 6) {
          ConstraintLayout.LayoutParams layoutParams = this.mParams;
          layoutParams.endToStart = paramInt2;
          layoutParams.endToEnd = -1;
        } else {
          stringBuilder = new StringBuilder();
          stringBuilder.append("right to ");
          stringBuilder.append(sideToString(paramInt3));
          stringBuilder.append(" undefined");
          throw new IllegalArgumentException(stringBuilder.toString());
        } 
        if (Build.VERSION.SDK_INT >= 17)
          this.mParams.setMarginEnd(paramInt4); 
        return this;
      case 6:
        if (paramInt3 == 6) {
          ConstraintLayout.LayoutParams layoutParams = this.mParams;
          layoutParams.startToStart = paramInt2;
          layoutParams.startToEnd = -1;
        } else if (paramInt3 == 7) {
          ConstraintLayout.LayoutParams layoutParams = this.mParams;
          layoutParams.startToEnd = paramInt2;
          layoutParams.startToStart = -1;
        } else {
          stringBuilder = new StringBuilder();
          stringBuilder.append("right to ");
          stringBuilder.append(sideToString(paramInt3));
          stringBuilder.append(" undefined");
          throw new IllegalArgumentException(stringBuilder.toString());
        } 
        if (Build.VERSION.SDK_INT >= 17)
          this.mParams.setMarginStart(paramInt4); 
        return this;
      case 5:
        if (paramInt3 == 5) {
          ConstraintLayout.LayoutParams layoutParams = this.mParams;
          layoutParams.baselineToBaseline = paramInt2;
          layoutParams.bottomToBottom = -1;
          layoutParams.bottomToTop = -1;
          layoutParams.topToTop = -1;
          layoutParams.topToBottom = -1;
        } else {
          stringBuilder = new StringBuilder();
          stringBuilder.append("right to ");
          stringBuilder.append(sideToString(paramInt3));
          stringBuilder.append(" undefined");
          throw new IllegalArgumentException(stringBuilder.toString());
        } 
        return this;
      case 4:
        if (paramInt3 == 4) {
          ConstraintLayout.LayoutParams layoutParams = this.mParams;
          layoutParams.bottomToBottom = paramInt2;
          layoutParams.bottomToTop = -1;
          layoutParams.baselineToBaseline = -1;
        } else if (paramInt3 == 3) {
          ConstraintLayout.LayoutParams layoutParams = this.mParams;
          layoutParams.bottomToTop = paramInt2;
          layoutParams.bottomToBottom = -1;
          layoutParams.baselineToBaseline = -1;
        } else {
          stringBuilder = new StringBuilder();
          stringBuilder.append("right to ");
          stringBuilder.append(sideToString(paramInt3));
          stringBuilder.append(" undefined");
          throw new IllegalArgumentException(stringBuilder.toString());
        } 
        this.mParams.bottomMargin = paramInt4;
        return this;
      case 3:
        if (paramInt3 == 3) {
          ConstraintLayout.LayoutParams layoutParams = this.mParams;
          layoutParams.topToTop = paramInt2;
          layoutParams.topToBottom = -1;
          layoutParams.baselineToBaseline = -1;
        } else if (paramInt3 == 4) {
          ConstraintLayout.LayoutParams layoutParams = this.mParams;
          layoutParams.topToBottom = paramInt2;
          layoutParams.topToTop = -1;
          layoutParams.baselineToBaseline = -1;
        } else {
          stringBuilder = new StringBuilder();
          stringBuilder.append("right to ");
          stringBuilder.append(sideToString(paramInt3));
          stringBuilder.append(" undefined");
          throw new IllegalArgumentException(stringBuilder.toString());
        } 
        this.mParams.topMargin = paramInt4;
        return this;
      case 2:
        if (paramInt3 == 1) {
          ConstraintLayout.LayoutParams layoutParams = this.mParams;
          layoutParams.rightToLeft = paramInt2;
          layoutParams.rightToRight = -1;
        } else if (paramInt3 == 2) {
          ConstraintLayout.LayoutParams layoutParams = this.mParams;
          layoutParams.rightToRight = paramInt2;
          layoutParams.rightToLeft = -1;
        } else {
          stringBuilder = new StringBuilder();
          stringBuilder.append("right to ");
          stringBuilder.append(sideToString(paramInt3));
          stringBuilder.append(" undefined");
          throw new IllegalArgumentException(stringBuilder.toString());
        } 
        this.mParams.rightMargin = paramInt4;
        return this;
      case 1:
        break;
    } 
    if (paramInt3 == 1) {
      ConstraintLayout.LayoutParams layoutParams = this.mParams;
      layoutParams.leftToLeft = paramInt2;
      layoutParams.leftToRight = -1;
    } else if (paramInt3 == 2) {
      ConstraintLayout.LayoutParams layoutParams = this.mParams;
      layoutParams.leftToRight = paramInt2;
      layoutParams.leftToLeft = -1;
    } else {
      stringBuilder = new StringBuilder();
      stringBuilder.append("Left to ");
      stringBuilder.append(sideToString(paramInt3));
      stringBuilder.append(" undefined");
      throw new IllegalArgumentException(stringBuilder.toString());
    } 
    this.mParams.leftMargin = paramInt4;
    return this;
  }
  
  public ConstraintProperties constrainDefaultHeight(int paramInt) {
    this.mParams.matchConstraintDefaultHeight = paramInt;
    return this;
  }
  
  public ConstraintProperties constrainDefaultWidth(int paramInt) {
    this.mParams.matchConstraintDefaultWidth = paramInt;
    return this;
  }
  
  public ConstraintProperties constrainHeight(int paramInt) {
    this.mParams.height = paramInt;
    return this;
  }
  
  public ConstraintProperties constrainMaxHeight(int paramInt) {
    this.mParams.matchConstraintMaxHeight = paramInt;
    return this;
  }
  
  public ConstraintProperties constrainMaxWidth(int paramInt) {
    this.mParams.matchConstraintMaxWidth = paramInt;
    return this;
  }
  
  public ConstraintProperties constrainMinHeight(int paramInt) {
    this.mParams.matchConstraintMinHeight = paramInt;
    return this;
  }
  
  public ConstraintProperties constrainMinWidth(int paramInt) {
    this.mParams.matchConstraintMinWidth = paramInt;
    return this;
  }
  
  public ConstraintProperties constrainWidth(int paramInt) {
    this.mParams.width = paramInt;
    return this;
  }
  
  public ConstraintProperties dimensionRatio(String paramString) {
    this.mParams.dimensionRatio = paramString;
    return this;
  }
  
  public ConstraintProperties elevation(float paramFloat) {
    if (Build.VERSION.SDK_INT >= 21)
      this.mView.setElevation(paramFloat); 
    return this;
  }
  
  public ConstraintProperties goneMargin(int paramInt1, int paramInt2) {
    switch (paramInt1) {
      default:
        throw new IllegalArgumentException("unknown constraint");
      case 7:
        this.mParams.goneEndMargin = paramInt2;
        return this;
      case 6:
        this.mParams.goneStartMargin = paramInt2;
        return this;
      case 5:
        throw new IllegalArgumentException("baseline does not support margins");
      case 4:
        this.mParams.goneBottomMargin = paramInt2;
        return this;
      case 3:
        this.mParams.goneTopMargin = paramInt2;
        return this;
      case 2:
        this.mParams.goneRightMargin = paramInt2;
        return this;
      case 1:
        break;
    } 
    this.mParams.goneLeftMargin = paramInt2;
    return this;
  }
  
  public ConstraintProperties horizontalBias(float paramFloat) {
    this.mParams.horizontalBias = paramFloat;
    return this;
  }
  
  public ConstraintProperties horizontalChainStyle(int paramInt) {
    this.mParams.horizontalChainStyle = paramInt;
    return this;
  }
  
  public ConstraintProperties horizontalWeight(float paramFloat) {
    this.mParams.horizontalWeight = paramFloat;
    return this;
  }
  
  public ConstraintProperties margin(int paramInt1, int paramInt2) {
    switch (paramInt1) {
      default:
        throw new IllegalArgumentException("unknown constraint");
      case 7:
        this.mParams.setMarginEnd(paramInt2);
        return this;
      case 6:
        this.mParams.setMarginStart(paramInt2);
        return this;
      case 5:
        throw new IllegalArgumentException("baseline does not support margins");
      case 4:
        this.mParams.bottomMargin = paramInt2;
        return this;
      case 3:
        this.mParams.topMargin = paramInt2;
        return this;
      case 2:
        this.mParams.rightMargin = paramInt2;
        return this;
      case 1:
        break;
    } 
    this.mParams.leftMargin = paramInt2;
    return this;
  }
  
  public ConstraintProperties removeConstraints(int paramInt) {
    switch (paramInt) {
      default:
        throw new IllegalArgumentException("unknown constraint");
      case 7:
        layoutParams = this.mParams;
        layoutParams.endToStart = -1;
        layoutParams.endToEnd = -1;
        layoutParams.setMarginEnd(-1);
        this.mParams.goneEndMargin = -1;
        return this;
      case 6:
        layoutParams = this.mParams;
        layoutParams.startToEnd = -1;
        layoutParams.startToStart = -1;
        layoutParams.setMarginStart(-1);
        this.mParams.goneStartMargin = -1;
        return this;
      case 5:
        this.mParams.baselineToBaseline = -1;
        return this;
      case 4:
        layoutParams = this.mParams;
        layoutParams.bottomToTop = -1;
        layoutParams.bottomToBottom = -1;
        layoutParams.bottomMargin = -1;
        layoutParams.goneBottomMargin = -1;
        return this;
      case 3:
        layoutParams = this.mParams;
        layoutParams.topToBottom = -1;
        layoutParams.topToTop = -1;
        layoutParams.topMargin = -1;
        layoutParams.goneTopMargin = -1;
        return this;
      case 2:
        layoutParams = this.mParams;
        layoutParams.rightToRight = -1;
        layoutParams.rightToLeft = -1;
        layoutParams.rightMargin = -1;
        layoutParams.goneRightMargin = -1;
        return this;
      case 1:
        break;
    } 
    ConstraintLayout.LayoutParams layoutParams = this.mParams;
    layoutParams.leftToRight = -1;
    layoutParams.leftToLeft = -1;
    layoutParams.leftMargin = -1;
    layoutParams.goneLeftMargin = -1;
    return this;
  }
  
  public ConstraintProperties removeFromHorizontalChain() {
    ConstraintProperties constraintProperties;
    int i = this.mParams.leftToRight;
    int j = this.mParams.rightToLeft;
    ConstraintLayout.LayoutParams layoutParams2 = this.mParams;
    if (i != -1 || j != -1) {
      ConstraintProperties constraintProperties1 = new ConstraintProperties(((ViewGroup)this.mView.getParent()).findViewById(i));
      constraintProperties = new ConstraintProperties(((ViewGroup)this.mView.getParent()).findViewById(j));
      ConstraintLayout.LayoutParams layoutParams = this.mParams;
      if (i != -1 && j != -1) {
        constraintProperties1.connect(2, j, 1, 0);
        constraintProperties.connect(1, i, 2, 0);
      } else {
        layoutParams = this.mParams;
        if (i != -1 || j != -1) {
          i = this.mParams.rightToRight;
          layoutParams = this.mParams;
          if (i != -1) {
            constraintProperties1.connect(2, layoutParams.rightToRight, 2, 0);
          } else {
            i = layoutParams.leftToLeft;
            ConstraintLayout.LayoutParams layoutParams3 = this.mParams;
            if (i != -1)
              constraintProperties.connect(1, layoutParams3.leftToLeft, 1, 0); 
          } 
        } 
      } 
      removeConstraints(1);
      removeConstraints(2);
      return this;
    } 
    int k = ((ConstraintLayout.LayoutParams)constraintProperties).startToEnd;
    j = this.mParams.endToStart;
    ConstraintLayout.LayoutParams layoutParams1 = this.mParams;
    if (k != -1 || j != -1) {
      ConstraintProperties constraintProperties2 = new ConstraintProperties(((ViewGroup)this.mView.getParent()).findViewById(k));
      ConstraintProperties constraintProperties1 = new ConstraintProperties(((ViewGroup)this.mView.getParent()).findViewById(j));
      ConstraintLayout.LayoutParams layoutParams = this.mParams;
      if (k != -1 && j != -1) {
        constraintProperties2.connect(7, j, 6, 0);
        constraintProperties1.connect(6, i, 7, 0);
      } else {
        layoutParams = this.mParams;
        if (i != -1 || j != -1) {
          i = this.mParams.rightToRight;
          layoutParams = this.mParams;
          if (i != -1) {
            constraintProperties2.connect(7, layoutParams.rightToRight, 7, 0);
          } else {
            i = layoutParams.leftToLeft;
            ConstraintLayout.LayoutParams layoutParams3 = this.mParams;
            if (i != -1)
              constraintProperties1.connect(6, layoutParams3.leftToLeft, 6, 0); 
          } 
        } 
      } 
    } 
    removeConstraints(6);
    removeConstraints(7);
    return this;
  }
  
  public ConstraintProperties removeFromVerticalChain() {
    int i = this.mParams.topToBottom;
    int j = this.mParams.bottomToTop;
    ConstraintLayout.LayoutParams layoutParams = this.mParams;
    if (i != -1 || j != -1) {
      ConstraintProperties constraintProperties2 = new ConstraintProperties(((ViewGroup)this.mView.getParent()).findViewById(i));
      ConstraintProperties constraintProperties1 = new ConstraintProperties(((ViewGroup)this.mView.getParent()).findViewById(j));
      ConstraintLayout.LayoutParams layoutParams1 = this.mParams;
      if (i != -1 && j != -1) {
        constraintProperties2.connect(4, j, 3, 0);
        constraintProperties1.connect(3, i, 4, 0);
      } else {
        layoutParams1 = this.mParams;
        if (i != -1 || j != -1) {
          j = this.mParams.bottomToBottom;
          layoutParams1 = this.mParams;
          if (j != -1) {
            constraintProperties2.connect(4, layoutParams1.bottomToBottom, 4, 0);
          } else {
            j = layoutParams1.topToTop;
            ConstraintLayout.LayoutParams layoutParams2 = this.mParams;
            if (j != -1)
              constraintProperties1.connect(3, layoutParams2.topToTop, 3, 0); 
          } 
        } 
      } 
    } 
    removeConstraints(3);
    removeConstraints(4);
    return this;
  }
  
  public ConstraintProperties rotation(float paramFloat) {
    this.mView.setRotation(paramFloat);
    return this;
  }
  
  public ConstraintProperties rotationX(float paramFloat) {
    this.mView.setRotationX(paramFloat);
    return this;
  }
  
  public ConstraintProperties rotationY(float paramFloat) {
    this.mView.setRotationY(paramFloat);
    return this;
  }
  
  public ConstraintProperties scaleX(float paramFloat) {
    this.mView.setScaleY(paramFloat);
    return this;
  }
  
  public ConstraintProperties scaleY(float paramFloat) {
    return this;
  }
  
  public ConstraintProperties transformPivot(float paramFloat1, float paramFloat2) {
    this.mView.setPivotX(paramFloat1);
    this.mView.setPivotY(paramFloat2);
    return this;
  }
  
  public ConstraintProperties transformPivotX(float paramFloat) {
    this.mView.setPivotX(paramFloat);
    return this;
  }
  
  public ConstraintProperties transformPivotY(float paramFloat) {
    this.mView.setPivotY(paramFloat);
    return this;
  }
  
  public ConstraintProperties translation(float paramFloat1, float paramFloat2) {
    this.mView.setTranslationX(paramFloat1);
    this.mView.setTranslationY(paramFloat2);
    return this;
  }
  
  public ConstraintProperties translationX(float paramFloat) {
    this.mView.setTranslationX(paramFloat);
    return this;
  }
  
  public ConstraintProperties translationY(float paramFloat) {
    this.mView.setTranslationY(paramFloat);
    return this;
  }
  
  public ConstraintProperties translationZ(float paramFloat) {
    if (Build.VERSION.SDK_INT >= 21)
      this.mView.setTranslationZ(paramFloat); 
    return this;
  }
  
  public ConstraintProperties verticalBias(float paramFloat) {
    this.mParams.verticalBias = paramFloat;
    return this;
  }
  
  public ConstraintProperties verticalChainStyle(int paramInt) {
    this.mParams.verticalChainStyle = paramInt;
    return this;
  }
  
  public ConstraintProperties verticalWeight(float paramFloat) {
    this.mParams.verticalWeight = paramFloat;
    return this;
  }
  
  public ConstraintProperties visibility(int paramInt) {
    this.mView.setVisibility(paramInt);
    return this;
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/widget/ConstraintProperties.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */