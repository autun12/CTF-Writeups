package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class Flow extends VirtualLayout {
  public static final int HORIZONTAL_ALIGN_CENTER = 2;
  
  public static final int HORIZONTAL_ALIGN_END = 1;
  
  public static final int HORIZONTAL_ALIGN_START = 0;
  
  public static final int VERTICAL_ALIGN_BASELINE = 3;
  
  public static final int VERTICAL_ALIGN_BOTTOM = 1;
  
  public static final int VERTICAL_ALIGN_CENTER = 2;
  
  public static final int VERTICAL_ALIGN_TOP = 0;
  
  public static final int WRAP_ALIGNED = 2;
  
  public static final int WRAP_CHAIN = 1;
  
  public static final int WRAP_NONE = 0;
  
  private ConstraintWidget[] mAlignedBiggestElementsInCols = null;
  
  private ConstraintWidget[] mAlignedBiggestElementsInRows = null;
  
  private int[] mAlignedDimensions = null;
  
  private ArrayList<WidgetsList> mChainList = new ArrayList<WidgetsList>();
  
  private ConstraintWidget[] mDisplayedWidgets;
  
  private int mDisplayedWidgetsCount = 0;
  
  private float mFirstHorizontalBias = 0.5F;
  
  private int mFirstHorizontalStyle = -1;
  
  private float mFirstVerticalBias = 0.5F;
  
  private int mFirstVerticalStyle = -1;
  
  private int mHorizontalAlign = 2;
  
  private float mHorizontalBias = 0.5F;
  
  private int mHorizontalGap = 0;
  
  private int mHorizontalStyle = -1;
  
  private float mLastHorizontalBias = 0.5F;
  
  private int mLastHorizontalStyle = -1;
  
  private float mLastVerticalBias = 0.5F;
  
  private int mLastVerticalStyle = -1;
  
  private int mMaxElementsWrap = -1;
  
  private int mOrientation = 0;
  
  private int mVerticalAlign = 2;
  
  private float mVerticalBias = 0.5F;
  
  private int mVerticalGap = 0;
  
  private int mVerticalStyle = -1;
  
  private int mWrapMode = 0;
  
  private void createAlignedConstraints(boolean paramBoolean) {
    if (this.mAlignedDimensions != null && this.mAlignedBiggestElementsInCols != null && this.mAlignedBiggestElementsInRows != null) {
      ConstraintWidget constraintWidget;
      byte b;
      for (b = 0; b < this.mDisplayedWidgetsCount; b++)
        this.mDisplayedWidgets[b].resetAnchors(); 
      int[] arrayOfInt = this.mAlignedDimensions;
      int i = arrayOfInt[0];
      int j = arrayOfInt[1];
      arrayOfInt = null;
      b = 0;
      while (b < i) {
        byte b1;
        ConstraintWidget constraintWidget2;
        if (paramBoolean) {
          b1 = i - b - 1;
        } else {
          b1 = b;
        } 
        ConstraintWidget constraintWidget1 = this.mAlignedBiggestElementsInCols[b1];
        int[] arrayOfInt1 = arrayOfInt;
        if (constraintWidget1 != null)
          if (constraintWidget1.getVisibility() == 8) {
            arrayOfInt1 = arrayOfInt;
          } else {
            if (b == 0) {
              constraintWidget1.connect(constraintWidget1.mLeft, this.mLeft, getPaddingLeft());
              constraintWidget1.setHorizontalChainStyle(this.mHorizontalStyle);
              constraintWidget1.setHorizontalBiasPercent(this.mHorizontalBias);
            } 
            if (b == i - 1)
              constraintWidget1.connect(constraintWidget1.mRight, this.mRight, getPaddingRight()); 
            if (b > 0) {
              constraintWidget1.connect(constraintWidget1.mLeft, ((ConstraintWidget)arrayOfInt).mRight, this.mHorizontalGap);
              arrayOfInt.connect(((ConstraintWidget)arrayOfInt).mRight, constraintWidget1.mLeft, 0);
            } 
            constraintWidget2 = constraintWidget1;
          }  
        b++;
        constraintWidget = constraintWidget2;
      } 
      b = 0;
      while (b < j) {
        ConstraintWidget constraintWidget1 = this.mAlignedBiggestElementsInRows[b];
        ConstraintWidget constraintWidget2 = constraintWidget;
        if (constraintWidget1 != null)
          if (constraintWidget1.getVisibility() == 8) {
            constraintWidget2 = constraintWidget;
          } else {
            if (b == 0) {
              constraintWidget1.connect(constraintWidget1.mTop, this.mTop, getPaddingTop());
              constraintWidget1.setVerticalChainStyle(this.mVerticalStyle);
              constraintWidget1.setVerticalBiasPercent(this.mVerticalBias);
            } 
            if (b == j - 1)
              constraintWidget1.connect(constraintWidget1.mBottom, this.mBottom, getPaddingBottom()); 
            if (b > 0) {
              constraintWidget1.connect(constraintWidget1.mTop, constraintWidget.mBottom, this.mVerticalGap);
              constraintWidget.connect(constraintWidget.mBottom, constraintWidget1.mTop, 0);
            } 
            constraintWidget2 = constraintWidget1;
          }  
        b++;
        constraintWidget = constraintWidget2;
      } 
      for (b = 0; b < i; b++) {
        for (byte b1 = 0; b1 < j; b1++) {
          int k = b1 * i + b;
          if (this.mOrientation == 1)
            k = b * j + b1; 
          ConstraintWidget[] arrayOfConstraintWidget = this.mDisplayedWidgets;
          if (k < arrayOfConstraintWidget.length) {
            ConstraintWidget constraintWidget1 = arrayOfConstraintWidget[k];
            if (constraintWidget1 != null && constraintWidget1.getVisibility() != 8) {
              ConstraintWidget constraintWidget3 = this.mAlignedBiggestElementsInCols[b];
              ConstraintWidget constraintWidget2 = this.mAlignedBiggestElementsInRows[b1];
              if (constraintWidget1 != constraintWidget3) {
                constraintWidget1.connect(constraintWidget1.mLeft, constraintWidget3.mLeft, 0);
                constraintWidget1.connect(constraintWidget1.mRight, constraintWidget3.mRight, 0);
              } 
              if (constraintWidget1 != constraintWidget2) {
                constraintWidget1.connect(constraintWidget1.mTop, constraintWidget2.mTop, 0);
                constraintWidget1.connect(constraintWidget1.mBottom, constraintWidget2.mBottom, 0);
              } 
            } 
          } 
        } 
      } 
    } 
  }
  
  private final int getWidgetHeight(ConstraintWidget paramConstraintWidget, int paramInt) {
    if (paramConstraintWidget == null)
      return 0; 
    if (paramConstraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
      if (paramConstraintWidget.mMatchConstraintDefaultHeight == 0)
        return 0; 
      if (paramConstraintWidget.mMatchConstraintDefaultHeight == 2) {
        paramInt = (int)(paramConstraintWidget.mMatchConstraintPercentHeight * paramInt);
        if (paramInt != paramConstraintWidget.getHeight())
          measure(paramConstraintWidget, paramConstraintWidget.getHorizontalDimensionBehaviour(), paramConstraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, paramInt); 
        return paramInt;
      } 
      if (paramConstraintWidget.mMatchConstraintDefaultHeight == 1)
        return paramConstraintWidget.getHeight(); 
      if (paramConstraintWidget.mMatchConstraintDefaultHeight == 3)
        return (int)(paramConstraintWidget.getWidth() * paramConstraintWidget.mDimensionRatio + 0.5F); 
    } 
    return paramConstraintWidget.getHeight();
  }
  
  private final int getWidgetWidth(ConstraintWidget paramConstraintWidget, int paramInt) {
    if (paramConstraintWidget == null)
      return 0; 
    if (paramConstraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
      if (paramConstraintWidget.mMatchConstraintDefaultWidth == 0)
        return 0; 
      if (paramConstraintWidget.mMatchConstraintDefaultWidth == 2) {
        paramInt = (int)(paramConstraintWidget.mMatchConstraintPercentWidth * paramInt);
        if (paramInt != paramConstraintWidget.getWidth())
          measure(paramConstraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, paramInt, paramConstraintWidget.getVerticalDimensionBehaviour(), paramConstraintWidget.getHeight()); 
        return paramInt;
      } 
      if (paramConstraintWidget.mMatchConstraintDefaultWidth == 1)
        return paramConstraintWidget.getWidth(); 
      if (paramConstraintWidget.mMatchConstraintDefaultWidth == 3)
        return (int)(paramConstraintWidget.getHeight() * paramConstraintWidget.mDimensionRatio + 0.5F); 
    } 
    return paramConstraintWidget.getWidth();
  }
  
  private void measureAligned(ConstraintWidget[] paramArrayOfConstraintWidget, int paramInt1, int paramInt2, int paramInt3, int[] paramArrayOfint) {
    int k;
    int m;
    if (paramInt2 == 0) {
      int n = this.mMaxElementsWrap;
      if (n <= 0) {
        byte b1 = 0;
        int i1 = 0;
        byte b2 = 0;
        while (true) {
          n = b2;
          if (b1 < paramInt1) {
            n = i1;
            if (b1 > 0)
              n = i1 + this.mHorizontalGap; 
            ConstraintWidget constraintWidget = paramArrayOfConstraintWidget[b1];
            if (constraintWidget == null) {
              i1 = n;
            } else {
              i1 = n + getWidgetWidth(constraintWidget, paramInt3);
              if (i1 > paramInt3) {
                n = b2;
                break;
              } 
              b2++;
            } 
            b1++;
            continue;
          } 
          break;
        } 
      } 
      i = 0;
      j = n;
    } else {
      j = this.mMaxElementsWrap;
      i = j;
      if (j <= 0) {
        byte b = 0;
        i = 0;
        j = 0;
        while (b < paramInt1) {
          int n = i;
          if (b > 0)
            n = i + this.mVerticalGap; 
          ConstraintWidget constraintWidget = paramArrayOfConstraintWidget[b];
          if (constraintWidget == null) {
            i = n;
          } else {
            i = n + getWidgetHeight(constraintWidget, paramInt3);
            if (i > paramInt3)
              break; 
            j++;
          } 
          b++;
        } 
        i = j;
      } 
      j = 0;
    } 
    if (this.mAlignedDimensions == null)
      this.mAlignedDimensions = new int[2]; 
    if ((i == 0 && paramInt2 == 1) || (j == 0 && paramInt2 == 0)) {
      k = i;
      m = j;
    } else {
      boolean bool1 = false;
      while (true) {
        if (!bool1) {
          if (paramInt2 == 0) {
            i = (int)Math.ceil((paramInt1 / j));
          } else {
            j = (int)Math.ceil((paramInt1 / i));
          } 
          ConstraintWidget[] arrayOfConstraintWidget = this.mAlignedBiggestElementsInCols;
          if (arrayOfConstraintWidget == null || arrayOfConstraintWidget.length < j) {
            this.mAlignedBiggestElementsInCols = new ConstraintWidget[j];
          } else {
            Arrays.fill((Object[])arrayOfConstraintWidget, (Object)null);
          } 
          arrayOfConstraintWidget = this.mAlignedBiggestElementsInRows;
          if (arrayOfConstraintWidget == null || arrayOfConstraintWidget.length < i) {
            this.mAlignedBiggestElementsInRows = new ConstraintWidget[i];
          } else {
            Arrays.fill((Object[])arrayOfConstraintWidget, (Object)null);
          } 
          int n;
          for (n = 0; n < j; n++) {
            for (byte b = 0; b < i; b++) {
              int i2 = b * j + n;
              if (paramInt2 == 1)
                i2 = n * i + b; 
              if (i2 < paramArrayOfConstraintWidget.length) {
                ConstraintWidget constraintWidget = paramArrayOfConstraintWidget[i2];
                if (constraintWidget != null) {
                  i2 = getWidgetWidth(constraintWidget, paramInt3);
                  ConstraintWidget[] arrayOfConstraintWidget1 = this.mAlignedBiggestElementsInCols;
                  if (arrayOfConstraintWidget1[n] == null || arrayOfConstraintWidget1[n].getWidth() < i2)
                    this.mAlignedBiggestElementsInCols[n] = constraintWidget; 
                  i2 = getWidgetHeight(constraintWidget, paramInt3);
                  arrayOfConstraintWidget1 = this.mAlignedBiggestElementsInRows;
                  if (arrayOfConstraintWidget1[b] == null || arrayOfConstraintWidget1[b].getHeight() < i2)
                    this.mAlignedBiggestElementsInRows[b] = constraintWidget; 
                } 
              } 
            } 
          } 
          int i1 = 0;
          for (n = 0; i1 < j; n = i2) {
            ConstraintWidget constraintWidget = this.mAlignedBiggestElementsInCols[i1];
            int i2 = n;
            if (constraintWidget != null) {
              i2 = n;
              if (i1 > 0)
                i2 = n + this.mHorizontalGap; 
              i2 += getWidgetWidth(constraintWidget, paramInt3);
            } 
            i1++;
          } 
          k = 0;
          for (i1 = 0; k < i; i1 = m) {
            ConstraintWidget constraintWidget = this.mAlignedBiggestElementsInRows[k];
            m = i1;
            if (constraintWidget != null) {
              m = i1;
              if (k > 0)
                m = i1 + this.mVerticalGap; 
              m += getWidgetHeight(constraintWidget, paramInt3);
            } 
            k++;
          } 
          paramArrayOfint[0] = n;
          paramArrayOfint[1] = i1;
          if (paramInt2 == 0) {
            m = j;
            k = i;
            if (n > paramInt3) {
              m = j;
              k = i;
              if (j > 1) {
                j--;
                continue;
              } 
            } 
          } else {
            m = j;
            k = i;
            if (i1 > paramInt3) {
              m = j;
              k = i;
              if (i > 1) {
                i--;
                continue;
              } 
            } 
          } 
        } else {
          break;
        } 
        bool1 = true;
        j = m;
        i = k;
      } 
      int[] arrayOfInt = this.mAlignedDimensions;
      arrayOfInt[0] = j;
      arrayOfInt[1] = i;
      return;
    } 
    boolean bool = true;
    int j = m;
    int i = k;
    continue;
  }
  
  private void measureChainWrap(ConstraintWidget[] paramArrayOfConstraintWidget, int paramInt1, int paramInt2, int paramInt3, int[] paramArrayOfint) {
    if (paramInt1 == 0)
      return; 
    this.mChainList.clear();
    WidgetsList widgetsList = new WidgetsList(paramInt2, this.mLeft, this.mTop, this.mRight, this.mBottom, paramInt3);
    this.mChainList.add(widgetsList);
    if (paramInt2 == 0) {
      int i4 = 0;
      int i5 = 0;
      byte b1 = 0;
      while (true) {
        m = i4;
        if (b1 < paramInt1) {
          ConstraintWidget constraintWidget = paramArrayOfConstraintWidget[b1];
          m = getWidgetWidth(constraintWidget, paramInt3);
          int i6 = i4;
          if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)
            i6 = i4 + 1; 
          if ((i5 == paramInt3 || this.mHorizontalGap + i5 + m > paramInt3) && widgetsList.biggest != null) {
            i4 = 1;
          } else {
            i4 = 0;
          } 
          int i7 = i4;
          if (i4 == 0) {
            i7 = i4;
            if (b1 > 0) {
              int i8 = this.mMaxElementsWrap;
              i7 = i4;
              if (i8 > 0) {
                i7 = i4;
                if (b1 % i8 == 0)
                  i7 = 1; 
              } 
            } 
          } 
          if (i7 != 0) {
            widgetsList = new WidgetsList(paramInt2, this.mLeft, this.mTop, this.mRight, this.mBottom, paramInt3);
            widgetsList.setStartIndex(b1);
            this.mChainList.add(widgetsList);
          } else if (b1 > 0) {
            m = i5 + this.mHorizontalGap + m;
          } 
          widgetsList.add(constraintWidget);
          b1++;
          i4 = i6;
          i5 = m;
          continue;
        } 
        break;
      } 
    } else {
      int i4 = 0;
      int i5 = 0;
      byte b1 = 0;
      while (true) {
        m = i4;
        if (b1 < paramInt1) {
          ConstraintWidget constraintWidget = paramArrayOfConstraintWidget[b1];
          m = getWidgetHeight(constraintWidget, paramInt3);
          int i6 = i4;
          if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)
            i6 = i4 + 1; 
          if ((i5 == paramInt3 || this.mVerticalGap + i5 + m > paramInt3) && widgetsList.biggest != null) {
            i4 = 1;
          } else {
            i4 = 0;
          } 
          int i7 = i4;
          if (i4 == 0) {
            i7 = i4;
            if (b1 > 0) {
              int i8 = this.mMaxElementsWrap;
              i7 = i4;
              if (i8 > 0) {
                i7 = i4;
                if (b1 % i8 == 0)
                  i7 = 1; 
              } 
            } 
          } 
          if (i7 != 0) {
            widgetsList = new WidgetsList(paramInt2, this.mLeft, this.mTop, this.mRight, this.mBottom, paramInt3);
            widgetsList.setStartIndex(b1);
            this.mChainList.add(widgetsList);
          } else if (b1 > 0) {
            m = i5 + this.mVerticalGap + m;
          } 
          widgetsList.add(constraintWidget);
          b1++;
          i4 = i6;
          i5 = m;
          continue;
        } 
        break;
      } 
    } 
    int i2 = this.mChainList.size();
    ConstraintAnchor constraintAnchor1 = this.mLeft;
    ConstraintAnchor constraintAnchor2 = this.mTop;
    ConstraintAnchor constraintAnchor3 = this.mRight;
    ConstraintAnchor constraintAnchor4 = this.mBottom;
    int k = getPaddingLeft();
    int i = getPaddingTop();
    int j = getPaddingRight();
    int n = getPaddingBottom();
    if (getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
      paramInt1 = 1;
    } else {
      paramInt1 = 0;
    } 
    if (m > 0 && paramInt1 != 0)
      for (paramInt1 = 0; paramInt1 < i2; paramInt1++) {
        WidgetsList widgetsList1 = this.mChainList.get(paramInt1);
        if (paramInt2 == 0) {
          widgetsList1.measureMatchConstraints(paramInt3 - widgetsList1.getWidth());
        } else {
          widgetsList1.measureMatchConstraints(paramInt3 - widgetsList1.getHeight());
        } 
      }  
    int m = i;
    byte b = 0;
    int i3 = 0;
    int i1 = 0;
    while (b < i2) {
      ConstraintAnchor constraintAnchor;
      int i4;
      WidgetsList widgetsList1 = this.mChainList.get(b);
      if (paramInt2 == 0) {
        if (b < i2 - 1) {
          constraintAnchor = ((WidgetsList)this.mChainList.get(b + 1)).biggest.mTop;
          paramInt1 = 0;
        } else {
          constraintAnchor = this.mBottom;
          paramInt1 = getPaddingBottom();
        } 
        constraintAnchor4 = widgetsList1.biggest.mBottom;
        widgetsList1.setup(paramInt2, constraintAnchor1, constraintAnchor2, constraintAnchor3, constraintAnchor, k, m, j, paramInt1, paramInt3);
        m = Math.max(i3, widgetsList1.getWidth());
        n = i1 + widgetsList1.getHeight();
        i = n;
        if (b > 0)
          i = n + this.mVerticalGap; 
        n = 0;
        constraintAnchor2 = constraintAnchor4;
        i4 = paramInt1;
      } else {
        if (b < i2 - 1) {
          constraintAnchor = ((WidgetsList)this.mChainList.get(b + 1)).biggest.mLeft;
          i = 0;
        } else {
          constraintAnchor = this.mRight;
          i = getPaddingRight();
        } 
        ConstraintAnchor constraintAnchor5 = widgetsList1.biggest.mRight;
        widgetsList1.setup(paramInt2, constraintAnchor1, constraintAnchor2, constraintAnchor, constraintAnchor4, k, m, i, n, paramInt3);
        k = i3 + widgetsList1.getWidth();
        i1 = Math.max(i1, widgetsList1.getHeight());
        paramInt1 = k;
        if (b > 0)
          paramInt1 = k + this.mHorizontalGap; 
        k = 0;
        j = i;
        constraintAnchor3 = constraintAnchor;
        i4 = n;
        n = m;
        constraintAnchor = constraintAnchor4;
        constraintAnchor1 = constraintAnchor5;
        i = i1;
        m = paramInt1;
      } 
      b++;
      i3 = m;
      i1 = i;
      constraintAnchor4 = constraintAnchor;
      m = n;
      n = i4;
    } 
    paramArrayOfint[0] = i3;
    paramArrayOfint[1] = i1;
  }
  
  private void measureNoWrap(ConstraintWidget[] paramArrayOfConstraintWidget, int paramInt1, int paramInt2, int paramInt3, int[] paramArrayOfint) {
    WidgetsList widgetsList;
    if (paramInt1 == 0)
      return; 
    if (this.mChainList.size() == 0) {
      widgetsList = new WidgetsList(paramInt2, this.mLeft, this.mTop, this.mRight, this.mBottom, paramInt3);
      this.mChainList.add(widgetsList);
    } else {
      widgetsList = this.mChainList.get(0);
      widgetsList.clear();
      ConstraintAnchor constraintAnchor1 = this.mLeft;
      ConstraintAnchor constraintAnchor2 = this.mTop;
      ConstraintAnchor constraintAnchor3 = this.mRight;
      ConstraintAnchor constraintAnchor4 = this.mBottom;
      int i = getPaddingLeft();
      int j = getPaddingTop();
      int k = getPaddingRight();
      int m = getPaddingBottom();
      widgetsList.setup(paramInt2, constraintAnchor1, constraintAnchor2, constraintAnchor3, constraintAnchor4, i, j, k, m, paramInt3);
    } 
    for (paramInt2 = 0; paramInt2 < paramInt1; paramInt2++)
      widgetsList.add(paramArrayOfConstraintWidget[paramInt2]); 
    paramArrayOfint[0] = widgetsList.getWidth();
    paramArrayOfint[1] = widgetsList.getHeight();
  }
  
  public void addToSolver(LinearSystem paramLinearSystem) {
    boolean bool;
    super.addToSolver(paramLinearSystem);
    if (getParent() != null) {
      bool = ((ConstraintWidgetContainer)getParent()).isRtl();
    } else {
      bool = false;
    } 
    int i = this.mWrapMode;
    if (i != 0) {
      if (i != 1) {
        if (i == 2)
          createAlignedConstraints(bool); 
      } else {
        int j = this.mChainList.size();
        for (i = 0; i < j; i++) {
          boolean bool1;
          WidgetsList widgetsList = this.mChainList.get(i);
          if (i == j - 1) {
            bool1 = true;
          } else {
            bool1 = false;
          } 
          widgetsList.createConstraints(bool, i, bool1);
        } 
      } 
    } else if (this.mChainList.size() > 0) {
      ((WidgetsList)this.mChainList.get(0)).createConstraints(bool, 0, true);
    } 
    needsCallbackFromSolver(false);
  }
  
  public void copy(ConstraintWidget paramConstraintWidget, HashMap<ConstraintWidget, ConstraintWidget> paramHashMap) {
    super.copy(paramConstraintWidget, paramHashMap);
    paramConstraintWidget = paramConstraintWidget;
    this.mHorizontalStyle = ((Flow)paramConstraintWidget).mHorizontalStyle;
    this.mVerticalStyle = ((Flow)paramConstraintWidget).mVerticalStyle;
    this.mFirstHorizontalStyle = ((Flow)paramConstraintWidget).mFirstHorizontalStyle;
    this.mFirstVerticalStyle = ((Flow)paramConstraintWidget).mFirstVerticalStyle;
    this.mLastHorizontalStyle = ((Flow)paramConstraintWidget).mLastHorizontalStyle;
    this.mLastVerticalStyle = ((Flow)paramConstraintWidget).mLastVerticalStyle;
    this.mHorizontalBias = ((Flow)paramConstraintWidget).mHorizontalBias;
    this.mVerticalBias = ((Flow)paramConstraintWidget).mVerticalBias;
    this.mFirstHorizontalBias = ((Flow)paramConstraintWidget).mFirstHorizontalBias;
    this.mFirstVerticalBias = ((Flow)paramConstraintWidget).mFirstVerticalBias;
    this.mLastHorizontalBias = ((Flow)paramConstraintWidget).mLastHorizontalBias;
    this.mLastVerticalBias = ((Flow)paramConstraintWidget).mLastVerticalBias;
    this.mHorizontalGap = ((Flow)paramConstraintWidget).mHorizontalGap;
    this.mVerticalGap = ((Flow)paramConstraintWidget).mVerticalGap;
    this.mHorizontalAlign = ((Flow)paramConstraintWidget).mHorizontalAlign;
    this.mVerticalAlign = ((Flow)paramConstraintWidget).mVerticalAlign;
    this.mWrapMode = ((Flow)paramConstraintWidget).mWrapMode;
    this.mMaxElementsWrap = ((Flow)paramConstraintWidget).mMaxElementsWrap;
    this.mOrientation = ((Flow)paramConstraintWidget).mOrientation;
  }
  
  public void measure(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (this.mWidgetsCount > 0 && !measureChildren()) {
      setMeasure(0, 0);
      needsCallbackFromSolver(false);
      return;
    } 
    int i = getPaddingLeft();
    int j = getPaddingRight();
    int k = getPaddingTop();
    int m = getPaddingBottom();
    int[] arrayOfInt = new int[2];
    int n = paramInt2 - i - j;
    if (this.mOrientation == 1)
      n = paramInt4 - k - m; 
    if (this.mOrientation == 0) {
      if (this.mHorizontalStyle == -1)
        this.mHorizontalStyle = 0; 
      if (this.mVerticalStyle == -1)
        this.mVerticalStyle = 0; 
    } else {
      if (this.mHorizontalStyle == -1)
        this.mHorizontalStyle = 0; 
      if (this.mVerticalStyle == -1)
        this.mVerticalStyle = 0; 
    } 
    ConstraintWidget[] arrayOfConstraintWidget = this.mWidgets;
    int i1 = 0;
    int i2;
    for (i2 = 0; i1 < this.mWidgetsCount; i2 = i3) {
      int i3 = i2;
      if (this.mWidgets[i1].getVisibility() == 8)
        i3 = i2 + 1; 
      i1++;
    } 
    i1 = this.mWidgetsCount;
    if (i2 > 0) {
      arrayOfConstraintWidget = new ConstraintWidget[this.mWidgetsCount - i2];
      byte b = 0;
      for (i2 = 0; b < this.mWidgetsCount; i2 = i1) {
        ConstraintWidget constraintWidget = this.mWidgets[b];
        i1 = i2;
        if (constraintWidget.getVisibility() != 8) {
          arrayOfConstraintWidget[i2] = constraintWidget;
          i1 = i2 + 1;
        } 
        b++;
      } 
      i1 = i2;
    } 
    this.mDisplayedWidgets = arrayOfConstraintWidget;
    this.mDisplayedWidgetsCount = i1;
    i2 = this.mWrapMode;
    if (i2 != 0) {
      if (i2 != 1) {
        if (i2 == 2)
          measureAligned(arrayOfConstraintWidget, i1, this.mOrientation, n, arrayOfInt); 
      } else {
        measureChainWrap(arrayOfConstraintWidget, i1, this.mOrientation, n, arrayOfInt);
      } 
    } else {
      measureNoWrap(arrayOfConstraintWidget, i1, this.mOrientation, n, arrayOfInt);
    } 
    boolean bool = true;
    n = arrayOfInt[0] + i + j;
    i2 = arrayOfInt[1] + k + m;
    if (paramInt1 == 1073741824) {
      paramInt1 = paramInt2;
    } else if (paramInt1 == Integer.MIN_VALUE) {
      paramInt1 = Math.min(n, paramInt2);
    } else if (paramInt1 == 0) {
      paramInt1 = n;
    } else {
      paramInt1 = 0;
    } 
    if (paramInt3 == 1073741824) {
      paramInt2 = paramInt4;
    } else if (paramInt3 == Integer.MIN_VALUE) {
      paramInt2 = Math.min(i2, paramInt4);
    } else if (paramInt3 == 0) {
      paramInt2 = i2;
    } else {
      paramInt2 = 0;
    } 
    setMeasure(paramInt1, paramInt2);
    setWidth(paramInt1);
    setHeight(paramInt2);
    if (this.mWidgetsCount <= 0)
      bool = false; 
    needsCallbackFromSolver(bool);
  }
  
  public void setFirstHorizontalBias(float paramFloat) {
    this.mFirstHorizontalBias = paramFloat;
  }
  
  public void setFirstHorizontalStyle(int paramInt) {
    this.mFirstHorizontalStyle = paramInt;
  }
  
  public void setFirstVerticalBias(float paramFloat) {
    this.mFirstVerticalBias = paramFloat;
  }
  
  public void setFirstVerticalStyle(int paramInt) {
    this.mFirstVerticalStyle = paramInt;
  }
  
  public void setHorizontalAlign(int paramInt) {
    this.mHorizontalAlign = paramInt;
  }
  
  public void setHorizontalBias(float paramFloat) {
    this.mHorizontalBias = paramFloat;
  }
  
  public void setHorizontalGap(int paramInt) {
    this.mHorizontalGap = paramInt;
  }
  
  public void setHorizontalStyle(int paramInt) {
    this.mHorizontalStyle = paramInt;
  }
  
  public void setLastHorizontalBias(float paramFloat) {
    this.mLastHorizontalBias = paramFloat;
  }
  
  public void setLastHorizontalStyle(int paramInt) {
    this.mLastHorizontalStyle = paramInt;
  }
  
  public void setLastVerticalBias(float paramFloat) {
    this.mLastVerticalBias = paramFloat;
  }
  
  public void setLastVerticalStyle(int paramInt) {
    this.mLastVerticalStyle = paramInt;
  }
  
  public void setMaxElementsWrap(int paramInt) {
    this.mMaxElementsWrap = paramInt;
  }
  
  public void setOrientation(int paramInt) {
    this.mOrientation = paramInt;
  }
  
  public void setVerticalAlign(int paramInt) {
    this.mVerticalAlign = paramInt;
  }
  
  public void setVerticalBias(float paramFloat) {
    this.mVerticalBias = paramFloat;
  }
  
  public void setVerticalGap(int paramInt) {
    this.mVerticalGap = paramInt;
  }
  
  public void setVerticalStyle(int paramInt) {
    this.mVerticalStyle = paramInt;
  }
  
  public void setWrapMode(int paramInt) {
    this.mWrapMode = paramInt;
  }
  
  private class WidgetsList {
    private ConstraintWidget biggest = null;
    
    int biggestDimension = 0;
    
    private ConstraintAnchor mBottom;
    
    private int mCount = 0;
    
    private int mHeight = 0;
    
    private ConstraintAnchor mLeft;
    
    private int mMax = 0;
    
    private int mNbMatchConstraintsWidgets = 0;
    
    private int mOrientation = 0;
    
    private int mPaddingBottom = 0;
    
    private int mPaddingLeft = 0;
    
    private int mPaddingRight = 0;
    
    private int mPaddingTop = 0;
    
    private ConstraintAnchor mRight;
    
    private int mStartIndex = 0;
    
    private ConstraintAnchor mTop;
    
    private int mWidth = 0;
    
    public WidgetsList(int param1Int1, ConstraintAnchor param1ConstraintAnchor1, ConstraintAnchor param1ConstraintAnchor2, ConstraintAnchor param1ConstraintAnchor3, ConstraintAnchor param1ConstraintAnchor4, int param1Int2) {
      this.mOrientation = param1Int1;
      this.mLeft = param1ConstraintAnchor1;
      this.mTop = param1ConstraintAnchor2;
      this.mRight = param1ConstraintAnchor3;
      this.mBottom = param1ConstraintAnchor4;
      this.mPaddingLeft = Flow.this.getPaddingLeft();
      this.mPaddingTop = Flow.this.getPaddingTop();
      this.mPaddingRight = Flow.this.getPaddingRight();
      this.mPaddingBottom = Flow.this.getPaddingBottom();
      this.mMax = param1Int2;
    }
    
    private void recomputeDimensions() {
      this.mWidth = 0;
      this.mHeight = 0;
      this.biggest = null;
      this.biggestDimension = 0;
      int i = this.mCount;
      for (byte b = 0; b < i && this.mStartIndex + b < Flow.this.mDisplayedWidgetsCount; b++) {
        ConstraintWidget constraintWidget = Flow.this.mDisplayedWidgets[this.mStartIndex + b];
        if (this.mOrientation == 0) {
          int j = constraintWidget.getWidth();
          int k = Flow.this.mHorizontalGap;
          if (constraintWidget.getVisibility() == 8)
            k = 0; 
          this.mWidth += j + k;
          k = Flow.this.getWidgetHeight(constraintWidget, this.mMax);
          if (this.biggest == null || this.biggestDimension < k) {
            this.biggest = constraintWidget;
            this.biggestDimension = k;
            this.mHeight = k;
          } 
        } else {
          int m = Flow.this.getWidgetWidth(constraintWidget, this.mMax);
          int j = Flow.this.getWidgetHeight(constraintWidget, this.mMax);
          int k = Flow.this.mVerticalGap;
          if (constraintWidget.getVisibility() == 8)
            k = 0; 
          this.mHeight += j + k;
          if (this.biggest == null || this.biggestDimension < m) {
            this.biggest = constraintWidget;
            this.biggestDimension = m;
            this.mWidth = m;
          } 
        } 
      } 
    }
    
    public void add(ConstraintWidget param1ConstraintWidget) {
      int i = this.mOrientation;
      int j = 0;
      int k = 0;
      if (i == 0) {
        i = Flow.this.getWidgetWidth(param1ConstraintWidget, this.mMax);
        if (param1ConstraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
          this.mNbMatchConstraintsWidgets++;
          i = 0;
        } 
        j = Flow.this.mHorizontalGap;
        if (param1ConstraintWidget.getVisibility() == 8)
          j = k; 
        this.mWidth += i + j;
        i = Flow.this.getWidgetHeight(param1ConstraintWidget, this.mMax);
        if (this.biggest == null || this.biggestDimension < i) {
          this.biggest = param1ConstraintWidget;
          this.biggestDimension = i;
          this.mHeight = i;
        } 
      } else {
        int m = Flow.this.getWidgetWidth(param1ConstraintWidget, this.mMax);
        i = Flow.this.getWidgetHeight(param1ConstraintWidget, this.mMax);
        if (param1ConstraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
          this.mNbMatchConstraintsWidgets++;
          i = 0;
        } 
        k = Flow.this.mVerticalGap;
        if (param1ConstraintWidget.getVisibility() != 8)
          j = k; 
        this.mHeight += i + j;
        if (this.biggest == null || this.biggestDimension < m) {
          this.biggest = param1ConstraintWidget;
          this.biggestDimension = m;
          this.mWidth = m;
        } 
      } 
      this.mCount++;
    }
    
    public void clear() {
      this.biggestDimension = 0;
      this.biggest = null;
      this.mWidth = 0;
      this.mHeight = 0;
      this.mStartIndex = 0;
      this.mCount = 0;
      this.mNbMatchConstraintsWidgets = 0;
    }
    
    public void createConstraints(boolean param1Boolean1, int param1Int, boolean param1Boolean2) {
      // Byte code:
      //   0: aload_0
      //   1: getfield mCount : I
      //   4: istore #4
      //   6: iconst_0
      //   7: istore #5
      //   9: iload #5
      //   11: iload #4
      //   13: if_icmpge -> 69
      //   16: aload_0
      //   17: getfield mStartIndex : I
      //   20: iload #5
      //   22: iadd
      //   23: aload_0
      //   24: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   27: invokestatic access$400 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   30: if_icmplt -> 36
      //   33: goto -> 69
      //   36: aload_0
      //   37: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   40: invokestatic access$500 : (Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
      //   43: aload_0
      //   44: getfield mStartIndex : I
      //   47: iload #5
      //   49: iadd
      //   50: aaload
      //   51: astore #6
      //   53: aload #6
      //   55: ifnull -> 63
      //   58: aload #6
      //   60: invokevirtual resetAnchors : ()V
      //   63: iinc #5, 1
      //   66: goto -> 9
      //   69: iload #4
      //   71: ifeq -> 1672
      //   74: aload_0
      //   75: getfield biggest : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
      //   78: ifnonnull -> 84
      //   81: goto -> 1672
      //   84: iload_3
      //   85: ifeq -> 98
      //   88: iload_2
      //   89: ifne -> 98
      //   92: iconst_1
      //   93: istore #7
      //   95: goto -> 101
      //   98: iconst_0
      //   99: istore #7
      //   101: iconst_0
      //   102: istore #5
      //   104: iconst_m1
      //   105: istore #8
      //   107: iconst_m1
      //   108: istore #9
      //   110: iload #5
      //   112: iload #4
      //   114: if_icmpge -> 222
      //   117: iload_1
      //   118: ifeq -> 133
      //   121: iload #4
      //   123: iconst_1
      //   124: isub
      //   125: iload #5
      //   127: isub
      //   128: istore #10
      //   130: goto -> 137
      //   133: iload #5
      //   135: istore #10
      //   137: aload_0
      //   138: getfield mStartIndex : I
      //   141: iload #10
      //   143: iadd
      //   144: aload_0
      //   145: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   148: invokestatic access$400 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   151: if_icmplt -> 157
      //   154: goto -> 222
      //   157: iload #8
      //   159: istore #11
      //   161: iload #9
      //   163: istore #12
      //   165: aload_0
      //   166: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   169: invokestatic access$500 : (Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
      //   172: aload_0
      //   173: getfield mStartIndex : I
      //   176: iload #10
      //   178: iadd
      //   179: aaload
      //   180: invokevirtual getVisibility : ()I
      //   183: ifne -> 208
      //   186: iload #8
      //   188: istore #9
      //   190: iload #8
      //   192: iconst_m1
      //   193: if_icmpne -> 200
      //   196: iload #5
      //   198: istore #9
      //   200: iload #5
      //   202: istore #12
      //   204: iload #9
      //   206: istore #11
      //   208: iinc #5, 1
      //   211: iload #11
      //   213: istore #8
      //   215: iload #12
      //   217: istore #9
      //   219: goto -> 110
      //   222: aload_0
      //   223: getfield mOrientation : I
      //   226: ifne -> 954
      //   229: aload_0
      //   230: getfield biggest : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
      //   233: astore #13
      //   235: aload #13
      //   237: aload_0
      //   238: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   241: invokestatic access$600 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   244: invokevirtual setVerticalChainStyle : (I)V
      //   247: aload_0
      //   248: getfield mPaddingTop : I
      //   251: istore #12
      //   253: iload #12
      //   255: istore #5
      //   257: iload_2
      //   258: ifle -> 273
      //   261: iload #12
      //   263: aload_0
      //   264: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   267: invokestatic access$100 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   270: iadd
      //   271: istore #5
      //   273: aload #13
      //   275: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   278: aload_0
      //   279: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   282: iload #5
      //   284: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   287: pop
      //   288: iload_3
      //   289: ifeq -> 309
      //   292: aload #13
      //   294: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   297: aload_0
      //   298: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   301: aload_0
      //   302: getfield mPaddingBottom : I
      //   305: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   308: pop
      //   309: iload_2
      //   310: ifle -> 333
      //   313: aload_0
      //   314: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   317: getfield mOwner : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
      //   320: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   323: aload #13
      //   325: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   328: iconst_0
      //   329: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   332: pop
      //   333: aload_0
      //   334: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   337: invokestatic access$700 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   340: iconst_3
      //   341: if_icmpne -> 432
      //   344: aload #13
      //   346: invokevirtual hasBaseline : ()Z
      //   349: ifne -> 432
      //   352: iconst_0
      //   353: istore_2
      //   354: iload_2
      //   355: iload #4
      //   357: if_icmpge -> 432
      //   360: iload_1
      //   361: ifeq -> 375
      //   364: iload #4
      //   366: iconst_1
      //   367: isub
      //   368: iload_2
      //   369: isub
      //   370: istore #5
      //   372: goto -> 378
      //   375: iload_2
      //   376: istore #5
      //   378: aload_0
      //   379: getfield mStartIndex : I
      //   382: iload #5
      //   384: iadd
      //   385: aload_0
      //   386: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   389: invokestatic access$400 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   392: if_icmplt -> 398
      //   395: goto -> 432
      //   398: aload_0
      //   399: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   402: invokestatic access$500 : (Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
      //   405: aload_0
      //   406: getfield mStartIndex : I
      //   409: iload #5
      //   411: iadd
      //   412: aaload
      //   413: astore #6
      //   415: aload #6
      //   417: invokevirtual hasBaseline : ()Z
      //   420: ifeq -> 426
      //   423: goto -> 436
      //   426: iinc #2, 1
      //   429: goto -> 354
      //   432: aload #13
      //   434: astore #6
      //   436: aconst_null
      //   437: astore #14
      //   439: iconst_0
      //   440: istore_2
      //   441: iload_2
      //   442: iload #4
      //   444: if_icmpge -> 1672
      //   447: iload_1
      //   448: ifeq -> 462
      //   451: iload #4
      //   453: iconst_1
      //   454: isub
      //   455: iload_2
      //   456: isub
      //   457: istore #5
      //   459: goto -> 465
      //   462: iload_2
      //   463: istore #5
      //   465: aload_0
      //   466: getfield mStartIndex : I
      //   469: iload #5
      //   471: iadd
      //   472: aload_0
      //   473: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   476: invokestatic access$400 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   479: if_icmplt -> 485
      //   482: goto -> 1672
      //   485: aload_0
      //   486: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   489: invokestatic access$500 : (Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
      //   492: aload_0
      //   493: getfield mStartIndex : I
      //   496: iload #5
      //   498: iadd
      //   499: aaload
      //   500: astore #15
      //   502: iload_2
      //   503: ifne -> 524
      //   506: aload #15
      //   508: aload #15
      //   510: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   513: aload_0
      //   514: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   517: aload_0
      //   518: getfield mPaddingLeft : I
      //   521: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V
      //   524: iload #5
      //   526: ifne -> 649
      //   529: aload_0
      //   530: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   533: invokestatic access$800 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   536: istore #12
      //   538: aload_0
      //   539: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   542: invokestatic access$900 : (Landroidx/constraintlayout/solver/widgets/Flow;)F
      //   545: fstore #16
      //   547: aload_0
      //   548: getfield mStartIndex : I
      //   551: ifne -> 586
      //   554: aload_0
      //   555: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   558: invokestatic access$1000 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   561: iconst_m1
      //   562: if_icmpeq -> 586
      //   565: aload_0
      //   566: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   569: invokestatic access$1000 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   572: istore #5
      //   574: aload_0
      //   575: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   578: invokestatic access$1100 : (Landroidx/constraintlayout/solver/widgets/Flow;)F
      //   581: fstore #17
      //   583: goto -> 635
      //   586: iload #12
      //   588: istore #5
      //   590: fload #16
      //   592: fstore #17
      //   594: iload_3
      //   595: ifeq -> 635
      //   598: iload #12
      //   600: istore #5
      //   602: fload #16
      //   604: fstore #17
      //   606: aload_0
      //   607: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   610: invokestatic access$1200 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   613: iconst_m1
      //   614: if_icmpeq -> 635
      //   617: aload_0
      //   618: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   621: invokestatic access$1200 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   624: istore #5
      //   626: aload_0
      //   627: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   630: invokestatic access$1300 : (Landroidx/constraintlayout/solver/widgets/Flow;)F
      //   633: fstore #17
      //   635: aload #15
      //   637: iload #5
      //   639: invokevirtual setHorizontalChainStyle : (I)V
      //   642: aload #15
      //   644: fload #17
      //   646: invokevirtual setHorizontalBiasPercent : (F)V
      //   649: iload_2
      //   650: iload #4
      //   652: iconst_1
      //   653: isub
      //   654: if_icmpne -> 675
      //   657: aload #15
      //   659: aload #15
      //   661: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   664: aload_0
      //   665: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   668: aload_0
      //   669: getfield mPaddingRight : I
      //   672: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V
      //   675: aload #14
      //   677: ifnull -> 754
      //   680: aload #15
      //   682: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   685: aload #14
      //   687: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   690: aload_0
      //   691: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   694: invokestatic access$000 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   697: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   700: pop
      //   701: iload_2
      //   702: iload #8
      //   704: if_icmpne -> 719
      //   707: aload #15
      //   709: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   712: aload_0
      //   713: getfield mPaddingLeft : I
      //   716: invokevirtual setGoneMargin : (I)V
      //   719: aload #14
      //   721: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   724: aload #15
      //   726: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   729: iconst_0
      //   730: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   733: pop
      //   734: iload_2
      //   735: iload #9
      //   737: iconst_1
      //   738: iadd
      //   739: if_icmpne -> 754
      //   742: aload #14
      //   744: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   747: aload_0
      //   748: getfield mPaddingRight : I
      //   751: invokevirtual setGoneMargin : (I)V
      //   754: aload #15
      //   756: aload #13
      //   758: if_acmpeq -> 944
      //   761: aload_0
      //   762: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   765: invokestatic access$700 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   768: iconst_3
      //   769: if_icmpne -> 813
      //   772: aload #6
      //   774: invokevirtual hasBaseline : ()Z
      //   777: ifeq -> 813
      //   780: aload #15
      //   782: aload #6
      //   784: if_acmpeq -> 813
      //   787: aload #15
      //   789: invokevirtual hasBaseline : ()Z
      //   792: ifeq -> 813
      //   795: aload #15
      //   797: getfield mBaseline : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   800: aload #6
      //   802: getfield mBaseline : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   805: iconst_0
      //   806: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   809: pop
      //   810: goto -> 944
      //   813: aload_0
      //   814: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   817: invokestatic access$700 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   820: istore #5
      //   822: iload #5
      //   824: ifeq -> 926
      //   827: iload #5
      //   829: iconst_1
      //   830: if_icmpeq -> 908
      //   833: iload #7
      //   835: ifeq -> 875
      //   838: aload #15
      //   840: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   843: aload_0
      //   844: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   847: aload_0
      //   848: getfield mPaddingTop : I
      //   851: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   854: pop
      //   855: aload #15
      //   857: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   860: aload_0
      //   861: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   864: aload_0
      //   865: getfield mPaddingBottom : I
      //   868: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   871: pop
      //   872: goto -> 944
      //   875: aload #15
      //   877: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   880: aload #13
      //   882: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   885: iconst_0
      //   886: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   889: pop
      //   890: aload #15
      //   892: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   895: aload #13
      //   897: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   900: iconst_0
      //   901: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   904: pop
      //   905: goto -> 944
      //   908: aload #15
      //   910: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   913: aload #13
      //   915: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   918: iconst_0
      //   919: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   922: pop
      //   923: goto -> 944
      //   926: aload #15
      //   928: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   931: aload #13
      //   933: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   936: iconst_0
      //   937: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   940: pop
      //   941: goto -> 944
      //   944: iinc #2, 1
      //   947: aload #15
      //   949: astore #14
      //   951: goto -> 441
      //   954: aload_0
      //   955: getfield biggest : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
      //   958: astore #13
      //   960: aload #13
      //   962: aload_0
      //   963: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   966: invokestatic access$800 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   969: invokevirtual setHorizontalChainStyle : (I)V
      //   972: aload_0
      //   973: getfield mPaddingLeft : I
      //   976: istore #12
      //   978: iload #12
      //   980: istore #5
      //   982: iload_2
      //   983: ifle -> 998
      //   986: iload #12
      //   988: aload_0
      //   989: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   992: invokestatic access$000 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   995: iadd
      //   996: istore #5
      //   998: iload_1
      //   999: ifeq -> 1065
      //   1002: aload #13
      //   1004: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1007: aload_0
      //   1008: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1011: iload #5
      //   1013: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   1016: pop
      //   1017: iload_3
      //   1018: ifeq -> 1038
      //   1021: aload #13
      //   1023: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1026: aload_0
      //   1027: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1030: aload_0
      //   1031: getfield mPaddingRight : I
      //   1034: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   1037: pop
      //   1038: iload_2
      //   1039: ifle -> 1125
      //   1042: aload_0
      //   1043: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1046: getfield mOwner : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
      //   1049: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1052: aload #13
      //   1054: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1057: iconst_0
      //   1058: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   1061: pop
      //   1062: goto -> 1125
      //   1065: aload #13
      //   1067: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1070: aload_0
      //   1071: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1074: iload #5
      //   1076: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   1079: pop
      //   1080: iload_3
      //   1081: ifeq -> 1101
      //   1084: aload #13
      //   1086: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1089: aload_0
      //   1090: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1093: aload_0
      //   1094: getfield mPaddingRight : I
      //   1097: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   1100: pop
      //   1101: iload_2
      //   1102: ifle -> 1125
      //   1105: aload_0
      //   1106: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1109: getfield mOwner : Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
      //   1112: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1115: aload #13
      //   1117: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1120: iconst_0
      //   1121: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   1124: pop
      //   1125: aconst_null
      //   1126: astore #6
      //   1128: iconst_0
      //   1129: istore #5
      //   1131: iload #5
      //   1133: iload #4
      //   1135: if_icmpge -> 1672
      //   1138: aload_0
      //   1139: getfield mStartIndex : I
      //   1142: iload #5
      //   1144: iadd
      //   1145: aload_0
      //   1146: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   1149: invokestatic access$400 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   1152: if_icmplt -> 1158
      //   1155: goto -> 1672
      //   1158: aload_0
      //   1159: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   1162: invokestatic access$500 : (Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
      //   1165: aload_0
      //   1166: getfield mStartIndex : I
      //   1169: iload #5
      //   1171: iadd
      //   1172: aaload
      //   1173: astore #14
      //   1175: iload #5
      //   1177: ifne -> 1313
      //   1180: aload #14
      //   1182: aload #14
      //   1184: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1187: aload_0
      //   1188: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1191: aload_0
      //   1192: getfield mPaddingTop : I
      //   1195: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V
      //   1198: aload_0
      //   1199: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   1202: invokestatic access$600 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   1205: istore #12
      //   1207: aload_0
      //   1208: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   1211: invokestatic access$1400 : (Landroidx/constraintlayout/solver/widgets/Flow;)F
      //   1214: fstore #16
      //   1216: aload_0
      //   1217: getfield mStartIndex : I
      //   1220: ifne -> 1254
      //   1223: aload_0
      //   1224: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   1227: invokestatic access$1500 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   1230: iconst_m1
      //   1231: if_icmpeq -> 1254
      //   1234: aload_0
      //   1235: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   1238: invokestatic access$1500 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   1241: istore_2
      //   1242: aload_0
      //   1243: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   1246: invokestatic access$1600 : (Landroidx/constraintlayout/solver/widgets/Flow;)F
      //   1249: fstore #17
      //   1251: goto -> 1300
      //   1254: iload #12
      //   1256: istore_2
      //   1257: fload #16
      //   1259: fstore #17
      //   1261: iload_3
      //   1262: ifeq -> 1300
      //   1265: iload #12
      //   1267: istore_2
      //   1268: fload #16
      //   1270: fstore #17
      //   1272: aload_0
      //   1273: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   1276: invokestatic access$1700 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   1279: iconst_m1
      //   1280: if_icmpeq -> 1300
      //   1283: aload_0
      //   1284: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   1287: invokestatic access$1700 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   1290: istore_2
      //   1291: aload_0
      //   1292: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   1295: invokestatic access$1800 : (Landroidx/constraintlayout/solver/widgets/Flow;)F
      //   1298: fstore #17
      //   1300: aload #14
      //   1302: iload_2
      //   1303: invokevirtual setVerticalChainStyle : (I)V
      //   1306: aload #14
      //   1308: fload #17
      //   1310: invokevirtual setVerticalBiasPercent : (F)V
      //   1313: iload #5
      //   1315: iload #4
      //   1317: iconst_1
      //   1318: isub
      //   1319: if_icmpne -> 1340
      //   1322: aload #14
      //   1324: aload #14
      //   1326: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1329: aload_0
      //   1330: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1333: aload_0
      //   1334: getfield mPaddingBottom : I
      //   1337: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V
      //   1340: aload #6
      //   1342: ifnull -> 1421
      //   1345: aload #14
      //   1347: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1350: aload #6
      //   1352: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1355: aload_0
      //   1356: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   1359: invokestatic access$100 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   1362: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   1365: pop
      //   1366: iload #5
      //   1368: iload #8
      //   1370: if_icmpne -> 1385
      //   1373: aload #14
      //   1375: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1378: aload_0
      //   1379: getfield mPaddingTop : I
      //   1382: invokevirtual setGoneMargin : (I)V
      //   1385: aload #6
      //   1387: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1390: aload #14
      //   1392: getfield mTop : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1395: iconst_0
      //   1396: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   1399: pop
      //   1400: iload #5
      //   1402: iload #9
      //   1404: iconst_1
      //   1405: iadd
      //   1406: if_icmpne -> 1421
      //   1409: aload #6
      //   1411: getfield mBottom : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1414: aload_0
      //   1415: getfield mPaddingBottom : I
      //   1418: invokevirtual setGoneMargin : (I)V
      //   1421: aload #14
      //   1423: aload #13
      //   1425: if_acmpeq -> 1662
      //   1428: iload_1
      //   1429: ifeq -> 1526
      //   1432: aload_0
      //   1433: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   1436: invokestatic access$1900 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   1439: istore_2
      //   1440: iload_2
      //   1441: ifeq -> 1508
      //   1444: iload_2
      //   1445: iconst_1
      //   1446: if_icmpeq -> 1490
      //   1449: iload_2
      //   1450: iconst_2
      //   1451: if_icmpeq -> 1457
      //   1454: goto -> 1662
      //   1457: aload #14
      //   1459: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1462: aload #13
      //   1464: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1467: iconst_0
      //   1468: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   1471: pop
      //   1472: aload #14
      //   1474: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1477: aload #13
      //   1479: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1482: iconst_0
      //   1483: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   1486: pop
      //   1487: goto -> 1662
      //   1490: aload #14
      //   1492: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1495: aload #13
      //   1497: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1500: iconst_0
      //   1501: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   1504: pop
      //   1505: goto -> 1662
      //   1508: aload #14
      //   1510: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1513: aload #13
      //   1515: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1518: iconst_0
      //   1519: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   1522: pop
      //   1523: goto -> 1662
      //   1526: aload_0
      //   1527: getfield this$0 : Landroidx/constraintlayout/solver/widgets/Flow;
      //   1530: invokestatic access$1900 : (Landroidx/constraintlayout/solver/widgets/Flow;)I
      //   1533: istore_2
      //   1534: iload_2
      //   1535: ifeq -> 1644
      //   1538: iload_2
      //   1539: iconst_1
      //   1540: if_icmpeq -> 1626
      //   1543: iload_2
      //   1544: iconst_2
      //   1545: if_icmpeq -> 1551
      //   1548: goto -> 1662
      //   1551: iload #7
      //   1553: ifeq -> 1593
      //   1556: aload #14
      //   1558: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1561: aload_0
      //   1562: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1565: aload_0
      //   1566: getfield mPaddingLeft : I
      //   1569: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   1572: pop
      //   1573: aload #14
      //   1575: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1578: aload_0
      //   1579: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1582: aload_0
      //   1583: getfield mPaddingRight : I
      //   1586: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   1589: pop
      //   1590: goto -> 1662
      //   1593: aload #14
      //   1595: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1598: aload #13
      //   1600: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1603: iconst_0
      //   1604: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   1607: pop
      //   1608: aload #14
      //   1610: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1613: aload #13
      //   1615: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1618: iconst_0
      //   1619: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   1622: pop
      //   1623: goto -> 1662
      //   1626: aload #14
      //   1628: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1631: aload #13
      //   1633: getfield mRight : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1636: iconst_0
      //   1637: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   1640: pop
      //   1641: goto -> 1662
      //   1644: aload #14
      //   1646: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1649: aload #13
      //   1651: getfield mLeft : Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
      //   1654: iconst_0
      //   1655: invokevirtual connect : (Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
      //   1658: pop
      //   1659: goto -> 1662
      //   1662: iinc #5, 1
      //   1665: aload #14
      //   1667: astore #6
      //   1669: goto -> 1131
      //   1672: return
    }
    
    public int getHeight() {
      return (this.mOrientation == 1) ? (this.mHeight - Flow.this.mVerticalGap) : this.mHeight;
    }
    
    public int getWidth() {
      return (this.mOrientation == 0) ? (this.mWidth - Flow.this.mHorizontalGap) : this.mWidth;
    }
    
    public void measureMatchConstraints(int param1Int) {
      int i = this.mNbMatchConstraintsWidgets;
      if (i == 0)
        return; 
      int j = this.mCount;
      i = param1Int / i;
      for (param1Int = 0; param1Int < j && this.mStartIndex + param1Int < Flow.this.mDisplayedWidgetsCount; param1Int++) {
        ConstraintWidget constraintWidget = Flow.this.mDisplayedWidgets[this.mStartIndex + param1Int];
        if (this.mOrientation == 0) {
          if (constraintWidget != null && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultWidth == 0)
            Flow.this.measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i, constraintWidget.getVerticalDimensionBehaviour(), constraintWidget.getHeight()); 
        } else if (constraintWidget != null && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultHeight == 0) {
          Flow.this.measure(constraintWidget, constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, i);
        } 
      } 
      recomputeDimensions();
    }
    
    public void setStartIndex(int param1Int) {
      this.mStartIndex = param1Int;
    }
    
    public void setup(int param1Int1, ConstraintAnchor param1ConstraintAnchor1, ConstraintAnchor param1ConstraintAnchor2, ConstraintAnchor param1ConstraintAnchor3, ConstraintAnchor param1ConstraintAnchor4, int param1Int2, int param1Int3, int param1Int4, int param1Int5, int param1Int6) {
      this.mOrientation = param1Int1;
      this.mLeft = param1ConstraintAnchor1;
      this.mTop = param1ConstraintAnchor2;
      this.mRight = param1ConstraintAnchor3;
      this.mBottom = param1ConstraintAnchor4;
      this.mPaddingLeft = param1Int2;
      this.mPaddingTop = param1Int3;
      this.mPaddingRight = param1Int4;
      this.mPaddingBottom = param1Int5;
      this.mMax = param1Int6;
    }
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/solver/widgets/Flow.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */