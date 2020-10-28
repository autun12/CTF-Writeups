package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.appcompat.R;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class LinearLayoutCompat extends ViewGroup {
  private static final String ACCESSIBILITY_CLASS_NAME = "androidx.appcompat.widget.LinearLayoutCompat";
  
  public static final int HORIZONTAL = 0;
  
  private static final int INDEX_BOTTOM = 2;
  
  private static final int INDEX_CENTER_VERTICAL = 0;
  
  private static final int INDEX_FILL = 3;
  
  private static final int INDEX_TOP = 1;
  
  public static final int SHOW_DIVIDER_BEGINNING = 1;
  
  public static final int SHOW_DIVIDER_END = 4;
  
  public static final int SHOW_DIVIDER_MIDDLE = 2;
  
  public static final int SHOW_DIVIDER_NONE = 0;
  
  public static final int VERTICAL = 1;
  
  private static final int VERTICAL_GRAVITY_COUNT = 4;
  
  private boolean mBaselineAligned = true;
  
  private int mBaselineAlignedChildIndex = -1;
  
  private int mBaselineChildTop = 0;
  
  private Drawable mDivider;
  
  private int mDividerHeight;
  
  private int mDividerPadding;
  
  private int mDividerWidth;
  
  private int mGravity = 8388659;
  
  private int[] mMaxAscent;
  
  private int[] mMaxDescent;
  
  private int mOrientation;
  
  private int mShowDividers;
  
  private int mTotalLength;
  
  private boolean mUseLargestChild;
  
  private float mWeightSum;
  
  public LinearLayoutCompat(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public LinearLayoutCompat(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public LinearLayoutCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.LinearLayoutCompat, paramInt, 0);
    ViewCompat.saveAttributeDataForStyleable((View)this, paramContext, R.styleable.LinearLayoutCompat, paramAttributeSet, tintTypedArray.getWrappedTypeArray(), paramInt, 0);
    paramInt = tintTypedArray.getInt(R.styleable.LinearLayoutCompat_android_orientation, -1);
    if (paramInt >= 0)
      setOrientation(paramInt); 
    paramInt = tintTypedArray.getInt(R.styleable.LinearLayoutCompat_android_gravity, -1);
    if (paramInt >= 0)
      setGravity(paramInt); 
    boolean bool = tintTypedArray.getBoolean(R.styleable.LinearLayoutCompat_android_baselineAligned, true);
    if (!bool)
      setBaselineAligned(bool); 
    this.mWeightSum = tintTypedArray.getFloat(R.styleable.LinearLayoutCompat_android_weightSum, -1.0F);
    this.mBaselineAlignedChildIndex = tintTypedArray.getInt(R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
    this.mUseLargestChild = tintTypedArray.getBoolean(R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
    setDividerDrawable(tintTypedArray.getDrawable(R.styleable.LinearLayoutCompat_divider));
    this.mShowDividers = tintTypedArray.getInt(R.styleable.LinearLayoutCompat_showDividers, 0);
    this.mDividerPadding = tintTypedArray.getDimensionPixelSize(R.styleable.LinearLayoutCompat_dividerPadding, 0);
    tintTypedArray.recycle();
  }
  
  private void forceUniformHeight(int paramInt1, int paramInt2) {
    int i = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
    for (byte b = 0; b < paramInt1; b++) {
      View view = getVirtualChildAt(b);
      if (view.getVisibility() != 8) {
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        if (layoutParams.height == -1) {
          int j = layoutParams.width;
          layoutParams.width = view.getMeasuredWidth();
          measureChildWithMargins(view, paramInt2, 0, i, 0);
          layoutParams.width = j;
        } 
      } 
    } 
  }
  
  private void forceUniformWidth(int paramInt1, int paramInt2) {
    int i = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
    for (byte b = 0; b < paramInt1; b++) {
      View view = getVirtualChildAt(b);
      if (view.getVisibility() != 8) {
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        if (layoutParams.width == -1) {
          int j = layoutParams.height;
          layoutParams.height = view.getMeasuredHeight();
          measureChildWithMargins(view, i, 0, paramInt2, 0);
          layoutParams.height = j;
        } 
      } 
    } 
  }
  
  private void setChildFrame(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    paramView.layout(paramInt1, paramInt2, paramInt3 + paramInt1, paramInt4 + paramInt2);
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  void drawDividersHorizontal(Canvas paramCanvas) {
    int i = getVirtualChildCount();
    boolean bool = ViewUtils.isLayoutRtl((View)this);
    int j;
    for (j = 0; j < i; j++) {
      View view = getVirtualChildAt(j);
      if (view != null && view.getVisibility() != 8 && hasDividerBeforeChildAt(j)) {
        int k;
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        if (bool) {
          k = view.getRight() + layoutParams.rightMargin;
        } else {
          k = view.getLeft() - layoutParams.leftMargin - this.mDividerWidth;
        } 
        drawVerticalDivider(paramCanvas, k);
      } 
    } 
    if (hasDividerBeforeChildAt(i)) {
      View view = getVirtualChildAt(i - 1);
      if (view == null) {
        if (bool) {
          j = getPaddingLeft();
        } else {
          int k = getWidth() - getPaddingRight();
          j = this.mDividerWidth;
          j = k - j;
        } 
      } else {
        int k;
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        if (bool) {
          k = view.getLeft() - layoutParams.leftMargin;
          j = this.mDividerWidth;
        } else {
          j = view.getRight() + layoutParams.rightMargin;
          drawVerticalDivider(paramCanvas, j);
        } 
        j = k - j;
      } 
    } else {
      return;
    } 
    drawVerticalDivider(paramCanvas, j);
  }
  
  void drawDividersVertical(Canvas paramCanvas) {
    int i = getVirtualChildCount();
    int j;
    for (j = 0; j < i; j++) {
      View view = getVirtualChildAt(j);
      if (view != null && view.getVisibility() != 8 && hasDividerBeforeChildAt(j)) {
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        drawHorizontalDivider(paramCanvas, view.getTop() - layoutParams.topMargin - this.mDividerHeight);
      } 
    } 
    if (hasDividerBeforeChildAt(i)) {
      View view = getVirtualChildAt(i - 1);
      if (view == null) {
        j = getHeight() - getPaddingBottom() - this.mDividerHeight;
      } else {
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        j = view.getBottom() + layoutParams.bottomMargin;
      } 
      drawHorizontalDivider(paramCanvas, j);
    } 
  }
  
  void drawHorizontalDivider(Canvas paramCanvas, int paramInt) {
    this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, paramInt, getWidth() - getPaddingRight() - this.mDividerPadding, this.mDividerHeight + paramInt);
    this.mDivider.draw(paramCanvas);
  }
  
  void drawVerticalDivider(Canvas paramCanvas, int paramInt) {
    this.mDivider.setBounds(paramInt, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + paramInt, getHeight() - getPaddingBottom() - this.mDividerPadding);
    this.mDivider.draw(paramCanvas);
  }
  
  protected LayoutParams generateDefaultLayoutParams() {
    int i = this.mOrientation;
    return (i == 0) ? new LayoutParams(-2, -2) : ((i == 1) ? new LayoutParams(-1, -2) : null);
  }
  
  public LayoutParams generateLayoutParams(AttributeSet paramAttributeSet) {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return new LayoutParams(paramLayoutParams);
  }
  
  public int getBaseline() {
    if (this.mBaselineAlignedChildIndex < 0)
      return super.getBaseline(); 
    int i = getChildCount();
    int j = this.mBaselineAlignedChildIndex;
    if (i > j) {
      View view = getChildAt(j);
      int k = view.getBaseline();
      if (k == -1) {
        if (this.mBaselineAlignedChildIndex == 0)
          return -1; 
        throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
      } 
      j = this.mBaselineChildTop;
      i = j;
      if (this.mOrientation == 1) {
        int m = this.mGravity & 0x70;
        i = j;
        if (m != 48)
          if (m != 16) {
            if (m != 80) {
              i = j;
            } else {
              i = getBottom() - getTop() - getPaddingBottom() - this.mTotalLength;
            } 
          } else {
            i = j + (getBottom() - getTop() - getPaddingTop() - getPaddingBottom() - this.mTotalLength) / 2;
          }  
      } 
      return i + ((LayoutParams)view.getLayoutParams()).topMargin + k;
    } 
    throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
  }
  
  public int getBaselineAlignedChildIndex() {
    return this.mBaselineAlignedChildIndex;
  }
  
  int getChildrenSkipCount(View paramView, int paramInt) {
    return 0;
  }
  
  public Drawable getDividerDrawable() {
    return this.mDivider;
  }
  
  public int getDividerPadding() {
    return this.mDividerPadding;
  }
  
  public int getDividerWidth() {
    return this.mDividerWidth;
  }
  
  public int getGravity() {
    return this.mGravity;
  }
  
  int getLocationOffset(View paramView) {
    return 0;
  }
  
  int getNextLocationOffset(View paramView) {
    return 0;
  }
  
  public int getOrientation() {
    return this.mOrientation;
  }
  
  public int getShowDividers() {
    return this.mShowDividers;
  }
  
  View getVirtualChildAt(int paramInt) {
    return getChildAt(paramInt);
  }
  
  int getVirtualChildCount() {
    return getChildCount();
  }
  
  public float getWeightSum() {
    return this.mWeightSum;
  }
  
  protected boolean hasDividerBeforeChildAt(int paramInt) {
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    if (paramInt == 0) {
      if ((this.mShowDividers & 0x1) != 0)
        bool3 = true; 
      return bool3;
    } 
    if (paramInt == getChildCount()) {
      bool3 = bool1;
      if ((this.mShowDividers & 0x4) != 0)
        bool3 = true; 
      return bool3;
    } 
    bool3 = bool2;
    if ((this.mShowDividers & 0x2) != 0) {
      paramInt--;
      while (true) {
        bool3 = bool2;
        if (paramInt >= 0) {
          if (getChildAt(paramInt).getVisibility() != 8) {
            bool3 = true;
            break;
          } 
          paramInt--;
          continue;
        } 
        break;
      } 
    } 
    return bool3;
  }
  
  public boolean isBaselineAligned() {
    return this.mBaselineAligned;
  }
  
  public boolean isMeasureWithLargestChildEnabled() {
    return this.mUseLargestChild;
  }
  
  void layoutHorizontal(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    byte b1;
    byte b2;
    boolean bool1 = ViewUtils.isLayoutRtl((View)this);
    int i = getPaddingTop();
    int j = paramInt4 - paramInt2;
    int k = getPaddingBottom();
    int m = getPaddingBottom();
    int n = getVirtualChildCount();
    paramInt4 = this.mGravity;
    paramInt2 = paramInt4 & 0x70;
    boolean bool2 = this.mBaselineAligned;
    int[] arrayOfInt1 = this.mMaxAscent;
    int[] arrayOfInt2 = this.mMaxDescent;
    paramInt4 = GravityCompat.getAbsoluteGravity(0x800007 & paramInt4, ViewCompat.getLayoutDirection((View)this));
    if (paramInt4 != 1) {
      if (paramInt4 != 5) {
        paramInt1 = getPaddingLeft();
      } else {
        paramInt1 = getPaddingLeft() + paramInt3 - paramInt1 - this.mTotalLength;
      } 
    } else {
      paramInt1 = getPaddingLeft() + (paramInt3 - paramInt1 - this.mTotalLength) / 2;
    } 
    if (bool1) {
      b1 = n - 1;
      b2 = -1;
    } else {
      b1 = 0;
      b2 = 1;
    } 
    paramInt4 = 0;
    paramInt3 = i;
    while (paramInt4 < n) {
      int i1 = b1 + b2 * paramInt4;
      View view = getVirtualChildAt(i1);
      if (view == null) {
        paramInt1 += measureNullChild(i1);
      } else if (view.getVisibility() != 8) {
        int i2 = view.getMeasuredWidth();
        int i3 = view.getMeasuredHeight();
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        if (bool2 && layoutParams.height != -1) {
          i4 = view.getBaseline();
        } else {
          i4 = -1;
        } 
        int i5 = layoutParams.gravity;
        int i6 = i5;
        if (i5 < 0)
          i6 = paramInt2; 
        i6 &= 0x70;
        if (i6 != 16) {
          if (i6 != 48) {
            if (i6 != 80) {
              i6 = paramInt3;
            } else {
              i5 = j - k - i3 - layoutParams.bottomMargin;
              i6 = i5;
              if (i4 != -1) {
                i6 = view.getMeasuredHeight();
                i6 = i5 - arrayOfInt2[2] - i6 - i4;
              } 
            } 
          } else {
            i5 = layoutParams.topMargin + paramInt3;
            i6 = i5;
            if (i4 != -1)
              i6 = i5 + arrayOfInt1[1] - i4; 
          } 
        } else {
          i6 = (j - i - m - i3) / 2 + paramInt3 + layoutParams.topMargin - layoutParams.bottomMargin;
        } 
        int i4 = paramInt1;
        if (hasDividerBeforeChildAt(i1))
          i4 = paramInt1 + this.mDividerWidth; 
        paramInt1 = layoutParams.leftMargin + i4;
        setChildFrame(view, paramInt1 + getLocationOffset(view), i6, i2, i3);
        i4 = layoutParams.rightMargin;
        i6 = getNextLocationOffset(view);
        paramInt4 += getChildrenSkipCount(view, i1);
        paramInt1 += i2 + i4 + i6;
      } 
      paramInt4++;
    } 
  }
  
  void layoutVertical(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    int i = getPaddingLeft();
    int j = paramInt3 - paramInt1;
    int k = getPaddingRight();
    int m = getPaddingRight();
    int n = getVirtualChildCount();
    int i1 = this.mGravity;
    paramInt1 = i1 & 0x70;
    if (paramInt1 != 16) {
      if (paramInt1 != 80) {
        paramInt1 = getPaddingTop();
      } else {
        paramInt1 = getPaddingTop() + paramInt4 - paramInt2 - this.mTotalLength;
      } 
    } else {
      paramInt1 = getPaddingTop() + (paramInt4 - paramInt2 - this.mTotalLength) / 2;
    } 
    paramInt2 = 0;
    while (paramInt2 < n) {
      View view = getVirtualChildAt(paramInt2);
      if (view == null) {
        paramInt3 = paramInt1 + measureNullChild(paramInt2);
        paramInt4 = paramInt2;
      } else {
        paramInt3 = paramInt1;
        paramInt4 = paramInt2;
        if (view.getVisibility() != 8) {
          int i2 = view.getMeasuredWidth();
          int i3 = view.getMeasuredHeight();
          LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
          paramInt4 = layoutParams.gravity;
          paramInt3 = paramInt4;
          if (paramInt4 < 0)
            paramInt3 = i1 & 0x800007; 
          paramInt3 = GravityCompat.getAbsoluteGravity(paramInt3, ViewCompat.getLayoutDirection((View)this)) & 0x7;
          if (paramInt3 != 1) {
            if (paramInt3 != 5) {
              paramInt3 = layoutParams.leftMargin + i;
            } else {
              paramInt3 = j - k - i2;
              paramInt4 = layoutParams.rightMargin;
              paramInt3 -= paramInt4;
            } 
          } else {
            paramInt3 = (j - i - m - i2) / 2 + i + layoutParams.leftMargin;
            paramInt4 = layoutParams.rightMargin;
            paramInt3 -= paramInt4;
          } 
          paramInt4 = paramInt1;
          if (hasDividerBeforeChildAt(paramInt2))
            paramInt4 = paramInt1 + this.mDividerHeight; 
          paramInt1 = paramInt4 + layoutParams.topMargin;
          setChildFrame(view, paramInt3, paramInt1 + getLocationOffset(view), i2, i3);
          i2 = layoutParams.bottomMargin;
          paramInt3 = getNextLocationOffset(view);
          paramInt4 = paramInt2 + getChildrenSkipCount(view, paramInt2);
          paramInt3 = paramInt1 + i3 + i2 + paramInt3;
        } 
      } 
      paramInt2 = paramInt4 + 1;
      paramInt1 = paramInt3;
    } 
  }
  
  void measureChildBeforeLayout(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {
    measureChildWithMargins(paramView, paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  void measureHorizontal(int paramInt1, int paramInt2) {
    // Byte code:
    //   0: aload_0
    //   1: iconst_0
    //   2: putfield mTotalLength : I
    //   5: aload_0
    //   6: invokevirtual getVirtualChildCount : ()I
    //   9: istore_3
    //   10: iload_1
    //   11: invokestatic getMode : (I)I
    //   14: istore #4
    //   16: iload_2
    //   17: invokestatic getMode : (I)I
    //   20: istore #5
    //   22: aload_0
    //   23: getfield mMaxAscent : [I
    //   26: ifnull -> 36
    //   29: aload_0
    //   30: getfield mMaxDescent : [I
    //   33: ifnonnull -> 50
    //   36: aload_0
    //   37: iconst_4
    //   38: newarray int
    //   40: putfield mMaxAscent : [I
    //   43: aload_0
    //   44: iconst_4
    //   45: newarray int
    //   47: putfield mMaxDescent : [I
    //   50: aload_0
    //   51: getfield mMaxAscent : [I
    //   54: astore #6
    //   56: aload_0
    //   57: getfield mMaxDescent : [I
    //   60: astore #7
    //   62: aload #6
    //   64: iconst_3
    //   65: iconst_m1
    //   66: iastore
    //   67: aload #6
    //   69: iconst_2
    //   70: iconst_m1
    //   71: iastore
    //   72: aload #6
    //   74: iconst_1
    //   75: iconst_m1
    //   76: iastore
    //   77: aload #6
    //   79: iconst_0
    //   80: iconst_m1
    //   81: iastore
    //   82: aload #7
    //   84: iconst_3
    //   85: iconst_m1
    //   86: iastore
    //   87: aload #7
    //   89: iconst_2
    //   90: iconst_m1
    //   91: iastore
    //   92: aload #7
    //   94: iconst_1
    //   95: iconst_m1
    //   96: iastore
    //   97: aload #7
    //   99: iconst_0
    //   100: iconst_m1
    //   101: iastore
    //   102: aload_0
    //   103: getfield mBaselineAligned : Z
    //   106: istore #8
    //   108: aload_0
    //   109: getfield mUseLargestChild : Z
    //   112: istore #9
    //   114: iload #4
    //   116: ldc 1073741824
    //   118: if_icmpne -> 127
    //   121: iconst_1
    //   122: istore #10
    //   124: goto -> 130
    //   127: iconst_0
    //   128: istore #10
    //   130: fconst_0
    //   131: fstore #11
    //   133: iconst_0
    //   134: istore #12
    //   136: iconst_0
    //   137: istore #13
    //   139: iconst_0
    //   140: istore #14
    //   142: iconst_0
    //   143: istore #15
    //   145: iconst_0
    //   146: istore #16
    //   148: iconst_0
    //   149: istore #17
    //   151: iconst_0
    //   152: istore #18
    //   154: iconst_1
    //   155: istore #19
    //   157: iconst_0
    //   158: istore #20
    //   160: iload #12
    //   162: iload_3
    //   163: if_icmpge -> 849
    //   166: aload_0
    //   167: iload #12
    //   169: invokevirtual getVirtualChildAt : (I)Landroid/view/View;
    //   172: astore #21
    //   174: aload #21
    //   176: ifnonnull -> 197
    //   179: aload_0
    //   180: aload_0
    //   181: getfield mTotalLength : I
    //   184: aload_0
    //   185: iload #12
    //   187: invokevirtual measureNullChild : (I)I
    //   190: iadd
    //   191: putfield mTotalLength : I
    //   194: goto -> 843
    //   197: aload #21
    //   199: invokevirtual getVisibility : ()I
    //   202: bipush #8
    //   204: if_icmpne -> 223
    //   207: iload #12
    //   209: aload_0
    //   210: aload #21
    //   212: iload #12
    //   214: invokevirtual getChildrenSkipCount : (Landroid/view/View;I)I
    //   217: iadd
    //   218: istore #12
    //   220: goto -> 194
    //   223: aload_0
    //   224: iload #12
    //   226: invokevirtual hasDividerBeforeChildAt : (I)Z
    //   229: ifeq -> 245
    //   232: aload_0
    //   233: aload_0
    //   234: getfield mTotalLength : I
    //   237: aload_0
    //   238: getfield mDividerWidth : I
    //   241: iadd
    //   242: putfield mTotalLength : I
    //   245: aload #21
    //   247: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   250: checkcast androidx/appcompat/widget/LinearLayoutCompat$LayoutParams
    //   253: astore #22
    //   255: fload #11
    //   257: aload #22
    //   259: getfield weight : F
    //   262: fadd
    //   263: fstore #11
    //   265: iload #4
    //   267: ldc 1073741824
    //   269: if_icmpne -> 381
    //   272: aload #22
    //   274: getfield width : I
    //   277: ifne -> 381
    //   280: aload #22
    //   282: getfield weight : F
    //   285: fconst_0
    //   286: fcmpl
    //   287: ifle -> 381
    //   290: iload #10
    //   292: ifeq -> 318
    //   295: aload_0
    //   296: aload_0
    //   297: getfield mTotalLength : I
    //   300: aload #22
    //   302: getfield leftMargin : I
    //   305: aload #22
    //   307: getfield rightMargin : I
    //   310: iadd
    //   311: iadd
    //   312: putfield mTotalLength : I
    //   315: goto -> 347
    //   318: aload_0
    //   319: getfield mTotalLength : I
    //   322: istore #23
    //   324: aload_0
    //   325: iload #23
    //   327: aload #22
    //   329: getfield leftMargin : I
    //   332: iload #23
    //   334: iadd
    //   335: aload #22
    //   337: getfield rightMargin : I
    //   340: iadd
    //   341: invokestatic max : (II)I
    //   344: putfield mTotalLength : I
    //   347: iload #8
    //   349: ifeq -> 375
    //   352: iconst_0
    //   353: iconst_0
    //   354: invokestatic makeMeasureSpec : (II)I
    //   357: istore #23
    //   359: aload #21
    //   361: iload #23
    //   363: iload #23
    //   365: invokevirtual measure : (II)V
    //   368: iload #13
    //   370: istore #23
    //   372: goto -> 566
    //   375: iconst_1
    //   376: istore #17
    //   378: goto -> 570
    //   381: aload #22
    //   383: getfield width : I
    //   386: ifne -> 412
    //   389: aload #22
    //   391: getfield weight : F
    //   394: fconst_0
    //   395: fcmpl
    //   396: ifle -> 412
    //   399: aload #22
    //   401: bipush #-2
    //   403: putfield width : I
    //   406: iconst_0
    //   407: istore #23
    //   409: goto -> 417
    //   412: ldc_w -2147483648
    //   415: istore #23
    //   417: fload #11
    //   419: fconst_0
    //   420: fcmpl
    //   421: ifne -> 433
    //   424: aload_0
    //   425: getfield mTotalLength : I
    //   428: istore #24
    //   430: goto -> 436
    //   433: iconst_0
    //   434: istore #24
    //   436: aload_0
    //   437: aload #21
    //   439: iload #12
    //   441: iload_1
    //   442: iload #24
    //   444: iload_2
    //   445: iconst_0
    //   446: invokevirtual measureChildBeforeLayout : (Landroid/view/View;IIIII)V
    //   449: iload #23
    //   451: ldc_w -2147483648
    //   454: if_icmpeq -> 464
    //   457: aload #22
    //   459: iload #23
    //   461: putfield width : I
    //   464: aload #21
    //   466: invokevirtual getMeasuredWidth : ()I
    //   469: istore #24
    //   471: iload #10
    //   473: ifeq -> 509
    //   476: aload_0
    //   477: aload_0
    //   478: getfield mTotalLength : I
    //   481: aload #22
    //   483: getfield leftMargin : I
    //   486: iload #24
    //   488: iadd
    //   489: aload #22
    //   491: getfield rightMargin : I
    //   494: iadd
    //   495: aload_0
    //   496: aload #21
    //   498: invokevirtual getNextLocationOffset : (Landroid/view/View;)I
    //   501: iadd
    //   502: iadd
    //   503: putfield mTotalLength : I
    //   506: goto -> 548
    //   509: aload_0
    //   510: getfield mTotalLength : I
    //   513: istore #23
    //   515: aload_0
    //   516: iload #23
    //   518: iload #23
    //   520: iload #24
    //   522: iadd
    //   523: aload #22
    //   525: getfield leftMargin : I
    //   528: iadd
    //   529: aload #22
    //   531: getfield rightMargin : I
    //   534: iadd
    //   535: aload_0
    //   536: aload #21
    //   538: invokevirtual getNextLocationOffset : (Landroid/view/View;)I
    //   541: iadd
    //   542: invokestatic max : (II)I
    //   545: putfield mTotalLength : I
    //   548: iload #13
    //   550: istore #23
    //   552: iload #9
    //   554: ifeq -> 566
    //   557: iload #24
    //   559: iload #13
    //   561: invokestatic max : (II)I
    //   564: istore #23
    //   566: iload #23
    //   568: istore #13
    //   570: iload #12
    //   572: istore #25
    //   574: iload #5
    //   576: ldc 1073741824
    //   578: if_icmpeq -> 599
    //   581: aload #22
    //   583: getfield height : I
    //   586: iconst_m1
    //   587: if_icmpne -> 599
    //   590: iconst_1
    //   591: istore #12
    //   593: iconst_1
    //   594: istore #20
    //   596: goto -> 602
    //   599: iconst_0
    //   600: istore #12
    //   602: aload #22
    //   604: getfield topMargin : I
    //   607: aload #22
    //   609: getfield bottomMargin : I
    //   612: iadd
    //   613: istore #23
    //   615: aload #21
    //   617: invokevirtual getMeasuredHeight : ()I
    //   620: iload #23
    //   622: iadd
    //   623: istore #24
    //   625: iload #18
    //   627: aload #21
    //   629: invokevirtual getMeasuredState : ()I
    //   632: invokestatic combineMeasuredStates : (II)I
    //   635: istore #26
    //   637: iload #8
    //   639: ifeq -> 726
    //   642: aload #21
    //   644: invokevirtual getBaseline : ()I
    //   647: istore #27
    //   649: iload #27
    //   651: iconst_m1
    //   652: if_icmpeq -> 726
    //   655: aload #22
    //   657: getfield gravity : I
    //   660: ifge -> 672
    //   663: aload_0
    //   664: getfield mGravity : I
    //   667: istore #18
    //   669: goto -> 679
    //   672: aload #22
    //   674: getfield gravity : I
    //   677: istore #18
    //   679: iload #18
    //   681: bipush #112
    //   683: iand
    //   684: iconst_4
    //   685: ishr
    //   686: bipush #-2
    //   688: iand
    //   689: iconst_1
    //   690: ishr
    //   691: istore #18
    //   693: aload #6
    //   695: iload #18
    //   697: aload #6
    //   699: iload #18
    //   701: iaload
    //   702: iload #27
    //   704: invokestatic max : (II)I
    //   707: iastore
    //   708: aload #7
    //   710: iload #18
    //   712: aload #7
    //   714: iload #18
    //   716: iaload
    //   717: iload #24
    //   719: iload #27
    //   721: isub
    //   722: invokestatic max : (II)I
    //   725: iastore
    //   726: iload #14
    //   728: iload #24
    //   730: invokestatic max : (II)I
    //   733: istore #14
    //   735: iload #19
    //   737: ifeq -> 755
    //   740: aload #22
    //   742: getfield height : I
    //   745: iconst_m1
    //   746: if_icmpne -> 755
    //   749: iconst_1
    //   750: istore #19
    //   752: goto -> 758
    //   755: iconst_0
    //   756: istore #19
    //   758: aload #22
    //   760: getfield weight : F
    //   763: fconst_0
    //   764: fcmpl
    //   765: ifle -> 792
    //   768: iload #12
    //   770: ifeq -> 776
    //   773: goto -> 780
    //   776: iload #24
    //   778: istore #23
    //   780: iload #16
    //   782: iload #23
    //   784: invokestatic max : (II)I
    //   787: istore #12
    //   789: goto -> 814
    //   792: iload #12
    //   794: ifeq -> 801
    //   797: iload #23
    //   799: istore #24
    //   801: iload #15
    //   803: iload #24
    //   805: invokestatic max : (II)I
    //   808: istore #15
    //   810: iload #16
    //   812: istore #12
    //   814: aload_0
    //   815: aload #21
    //   817: iload #25
    //   819: invokevirtual getChildrenSkipCount : (Landroid/view/View;I)I
    //   822: istore #16
    //   824: iload #26
    //   826: istore #18
    //   828: iload #16
    //   830: iload #25
    //   832: iadd
    //   833: istore #23
    //   835: iload #12
    //   837: istore #16
    //   839: iload #23
    //   841: istore #12
    //   843: iinc #12, 1
    //   846: goto -> 160
    //   849: iload #14
    //   851: istore #12
    //   853: aload_0
    //   854: getfield mTotalLength : I
    //   857: ifle -> 881
    //   860: aload_0
    //   861: iload_3
    //   862: invokevirtual hasDividerBeforeChildAt : (I)Z
    //   865: ifeq -> 881
    //   868: aload_0
    //   869: aload_0
    //   870: getfield mTotalLength : I
    //   873: aload_0
    //   874: getfield mDividerWidth : I
    //   877: iadd
    //   878: putfield mTotalLength : I
    //   881: aload #6
    //   883: iconst_1
    //   884: iaload
    //   885: iconst_m1
    //   886: if_icmpne -> 919
    //   889: aload #6
    //   891: iconst_0
    //   892: iaload
    //   893: iconst_m1
    //   894: if_icmpne -> 919
    //   897: aload #6
    //   899: iconst_2
    //   900: iaload
    //   901: iconst_m1
    //   902: if_icmpne -> 919
    //   905: aload #6
    //   907: iconst_3
    //   908: iaload
    //   909: iconst_m1
    //   910: if_icmpeq -> 916
    //   913: goto -> 919
    //   916: goto -> 977
    //   919: iload #12
    //   921: aload #6
    //   923: iconst_3
    //   924: iaload
    //   925: aload #6
    //   927: iconst_0
    //   928: iaload
    //   929: aload #6
    //   931: iconst_1
    //   932: iaload
    //   933: aload #6
    //   935: iconst_2
    //   936: iaload
    //   937: invokestatic max : (II)I
    //   940: invokestatic max : (II)I
    //   943: invokestatic max : (II)I
    //   946: aload #7
    //   948: iconst_3
    //   949: iaload
    //   950: aload #7
    //   952: iconst_0
    //   953: iaload
    //   954: aload #7
    //   956: iconst_1
    //   957: iaload
    //   958: aload #7
    //   960: iconst_2
    //   961: iaload
    //   962: invokestatic max : (II)I
    //   965: invokestatic max : (II)I
    //   968: invokestatic max : (II)I
    //   971: iadd
    //   972: invokestatic max : (II)I
    //   975: istore #12
    //   977: iload #18
    //   979: istore #14
    //   981: iload #12
    //   983: istore #23
    //   985: iload #9
    //   987: ifeq -> 1175
    //   990: iload #4
    //   992: ldc_w -2147483648
    //   995: if_icmpeq -> 1007
    //   998: iload #12
    //   1000: istore #23
    //   1002: iload #4
    //   1004: ifne -> 1175
    //   1007: aload_0
    //   1008: iconst_0
    //   1009: putfield mTotalLength : I
    //   1012: iconst_0
    //   1013: istore #18
    //   1015: iload #12
    //   1017: istore #23
    //   1019: iload #18
    //   1021: iload_3
    //   1022: if_icmpge -> 1175
    //   1025: aload_0
    //   1026: iload #18
    //   1028: invokevirtual getVirtualChildAt : (I)Landroid/view/View;
    //   1031: astore #22
    //   1033: aload #22
    //   1035: ifnonnull -> 1056
    //   1038: aload_0
    //   1039: aload_0
    //   1040: getfield mTotalLength : I
    //   1043: aload_0
    //   1044: iload #18
    //   1046: invokevirtual measureNullChild : (I)I
    //   1049: iadd
    //   1050: putfield mTotalLength : I
    //   1053: goto -> 1079
    //   1056: aload #22
    //   1058: invokevirtual getVisibility : ()I
    //   1061: bipush #8
    //   1063: if_icmpne -> 1082
    //   1066: iload #18
    //   1068: aload_0
    //   1069: aload #22
    //   1071: iload #18
    //   1073: invokevirtual getChildrenSkipCount : (Landroid/view/View;I)I
    //   1076: iadd
    //   1077: istore #18
    //   1079: goto -> 1169
    //   1082: aload #22
    //   1084: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   1087: checkcast androidx/appcompat/widget/LinearLayoutCompat$LayoutParams
    //   1090: astore #21
    //   1092: iload #10
    //   1094: ifeq -> 1130
    //   1097: aload_0
    //   1098: aload_0
    //   1099: getfield mTotalLength : I
    //   1102: aload #21
    //   1104: getfield leftMargin : I
    //   1107: iload #13
    //   1109: iadd
    //   1110: aload #21
    //   1112: getfield rightMargin : I
    //   1115: iadd
    //   1116: aload_0
    //   1117: aload #22
    //   1119: invokevirtual getNextLocationOffset : (Landroid/view/View;)I
    //   1122: iadd
    //   1123: iadd
    //   1124: putfield mTotalLength : I
    //   1127: goto -> 1079
    //   1130: aload_0
    //   1131: getfield mTotalLength : I
    //   1134: istore #23
    //   1136: aload_0
    //   1137: iload #23
    //   1139: iload #23
    //   1141: iload #13
    //   1143: iadd
    //   1144: aload #21
    //   1146: getfield leftMargin : I
    //   1149: iadd
    //   1150: aload #21
    //   1152: getfield rightMargin : I
    //   1155: iadd
    //   1156: aload_0
    //   1157: aload #22
    //   1159: invokevirtual getNextLocationOffset : (Landroid/view/View;)I
    //   1162: iadd
    //   1163: invokestatic max : (II)I
    //   1166: putfield mTotalLength : I
    //   1169: iinc #18, 1
    //   1172: goto -> 1015
    //   1175: aload_0
    //   1176: aload_0
    //   1177: getfield mTotalLength : I
    //   1180: aload_0
    //   1181: invokevirtual getPaddingLeft : ()I
    //   1184: aload_0
    //   1185: invokevirtual getPaddingRight : ()I
    //   1188: iadd
    //   1189: iadd
    //   1190: putfield mTotalLength : I
    //   1193: aload_0
    //   1194: getfield mTotalLength : I
    //   1197: aload_0
    //   1198: invokevirtual getSuggestedMinimumWidth : ()I
    //   1201: invokestatic max : (II)I
    //   1204: iload_1
    //   1205: iconst_0
    //   1206: invokestatic resolveSizeAndState : (III)I
    //   1209: istore #25
    //   1211: ldc_w 16777215
    //   1214: iload #25
    //   1216: iand
    //   1217: aload_0
    //   1218: getfield mTotalLength : I
    //   1221: isub
    //   1222: istore #24
    //   1224: iload #17
    //   1226: ifne -> 1358
    //   1229: iload #24
    //   1231: ifeq -> 1244
    //   1234: fload #11
    //   1236: fconst_0
    //   1237: fcmpl
    //   1238: ifle -> 1244
    //   1241: goto -> 1358
    //   1244: iload #15
    //   1246: iload #16
    //   1248: invokestatic max : (II)I
    //   1251: istore #18
    //   1253: iload #9
    //   1255: ifeq -> 1344
    //   1258: iload #4
    //   1260: ldc 1073741824
    //   1262: if_icmpeq -> 1344
    //   1265: iconst_0
    //   1266: istore #15
    //   1268: iload #15
    //   1270: iload_3
    //   1271: if_icmpge -> 1344
    //   1274: aload_0
    //   1275: iload #15
    //   1277: invokevirtual getVirtualChildAt : (I)Landroid/view/View;
    //   1280: astore #7
    //   1282: aload #7
    //   1284: ifnull -> 1338
    //   1287: aload #7
    //   1289: invokevirtual getVisibility : ()I
    //   1292: bipush #8
    //   1294: if_icmpne -> 1300
    //   1297: goto -> 1338
    //   1300: aload #7
    //   1302: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   1305: checkcast androidx/appcompat/widget/LinearLayoutCompat$LayoutParams
    //   1308: getfield weight : F
    //   1311: fconst_0
    //   1312: fcmpl
    //   1313: ifle -> 1338
    //   1316: aload #7
    //   1318: iload #13
    //   1320: ldc 1073741824
    //   1322: invokestatic makeMeasureSpec : (II)I
    //   1325: aload #7
    //   1327: invokevirtual getMeasuredHeight : ()I
    //   1330: ldc 1073741824
    //   1332: invokestatic makeMeasureSpec : (II)I
    //   1335: invokevirtual measure : (II)V
    //   1338: iinc #15, 1
    //   1341: goto -> 1268
    //   1344: iload_3
    //   1345: istore #12
    //   1347: iload #23
    //   1349: istore #15
    //   1351: iload #18
    //   1353: istore #13
    //   1355: goto -> 2093
    //   1358: aload_0
    //   1359: getfield mWeightSum : F
    //   1362: fstore #28
    //   1364: fload #28
    //   1366: fconst_0
    //   1367: fcmpl
    //   1368: ifle -> 1375
    //   1371: fload #28
    //   1373: fstore #11
    //   1375: aload #6
    //   1377: iconst_3
    //   1378: iconst_m1
    //   1379: iastore
    //   1380: aload #6
    //   1382: iconst_2
    //   1383: iconst_m1
    //   1384: iastore
    //   1385: aload #6
    //   1387: iconst_1
    //   1388: iconst_m1
    //   1389: iastore
    //   1390: aload #6
    //   1392: iconst_0
    //   1393: iconst_m1
    //   1394: iastore
    //   1395: aload #7
    //   1397: iconst_3
    //   1398: iconst_m1
    //   1399: iastore
    //   1400: aload #7
    //   1402: iconst_2
    //   1403: iconst_m1
    //   1404: iastore
    //   1405: aload #7
    //   1407: iconst_1
    //   1408: iconst_m1
    //   1409: iastore
    //   1410: aload #7
    //   1412: iconst_0
    //   1413: iconst_m1
    //   1414: iastore
    //   1415: aload_0
    //   1416: iconst_0
    //   1417: putfield mTotalLength : I
    //   1420: iconst_m1
    //   1421: istore #16
    //   1423: iconst_0
    //   1424: istore #17
    //   1426: iload #19
    //   1428: istore #12
    //   1430: iload_3
    //   1431: istore #13
    //   1433: iload #15
    //   1435: istore #18
    //   1437: iload #14
    //   1439: istore #19
    //   1441: iload #24
    //   1443: istore #15
    //   1445: iload #17
    //   1447: istore #14
    //   1449: iload #14
    //   1451: iload #13
    //   1453: if_icmpge -> 1959
    //   1456: aload_0
    //   1457: iload #14
    //   1459: invokevirtual getVirtualChildAt : (I)Landroid/view/View;
    //   1462: astore #22
    //   1464: aload #22
    //   1466: ifnull -> 1953
    //   1469: aload #22
    //   1471: invokevirtual getVisibility : ()I
    //   1474: bipush #8
    //   1476: if_icmpne -> 1482
    //   1479: goto -> 1953
    //   1482: aload #22
    //   1484: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   1487: checkcast androidx/appcompat/widget/LinearLayoutCompat$LayoutParams
    //   1490: astore #21
    //   1492: aload #21
    //   1494: getfield weight : F
    //   1497: fstore #28
    //   1499: fload #28
    //   1501: fconst_0
    //   1502: fcmpl
    //   1503: ifle -> 1666
    //   1506: iload #15
    //   1508: i2f
    //   1509: fload #28
    //   1511: fmul
    //   1512: fload #11
    //   1514: fdiv
    //   1515: f2i
    //   1516: istore #23
    //   1518: iload_2
    //   1519: aload_0
    //   1520: invokevirtual getPaddingTop : ()I
    //   1523: aload_0
    //   1524: invokevirtual getPaddingBottom : ()I
    //   1527: iadd
    //   1528: aload #21
    //   1530: getfield topMargin : I
    //   1533: iadd
    //   1534: aload #21
    //   1536: getfield bottomMargin : I
    //   1539: iadd
    //   1540: aload #21
    //   1542: getfield height : I
    //   1545: invokestatic getChildMeasureSpec : (III)I
    //   1548: istore #24
    //   1550: aload #21
    //   1552: getfield width : I
    //   1555: ifne -> 1600
    //   1558: iload #4
    //   1560: ldc 1073741824
    //   1562: if_icmpeq -> 1568
    //   1565: goto -> 1600
    //   1568: iload #23
    //   1570: ifle -> 1580
    //   1573: iload #23
    //   1575: istore #17
    //   1577: goto -> 1583
    //   1580: iconst_0
    //   1581: istore #17
    //   1583: aload #22
    //   1585: iload #17
    //   1587: ldc 1073741824
    //   1589: invokestatic makeMeasureSpec : (II)I
    //   1592: iload #24
    //   1594: invokevirtual measure : (II)V
    //   1597: goto -> 1633
    //   1600: aload #22
    //   1602: invokevirtual getMeasuredWidth : ()I
    //   1605: iload #23
    //   1607: iadd
    //   1608: istore_3
    //   1609: iload_3
    //   1610: istore #17
    //   1612: iload_3
    //   1613: ifge -> 1619
    //   1616: iconst_0
    //   1617: istore #17
    //   1619: aload #22
    //   1621: iload #17
    //   1623: ldc 1073741824
    //   1625: invokestatic makeMeasureSpec : (II)I
    //   1628: iload #24
    //   1630: invokevirtual measure : (II)V
    //   1633: iload #19
    //   1635: aload #22
    //   1637: invokevirtual getMeasuredState : ()I
    //   1640: ldc_w -16777216
    //   1643: iand
    //   1644: invokestatic combineMeasuredStates : (II)I
    //   1647: istore #19
    //   1649: fload #11
    //   1651: fload #28
    //   1653: fsub
    //   1654: fstore #11
    //   1656: iload #15
    //   1658: iload #23
    //   1660: isub
    //   1661: istore #15
    //   1663: goto -> 1666
    //   1666: iload #10
    //   1668: ifeq -> 1707
    //   1671: aload_0
    //   1672: aload_0
    //   1673: getfield mTotalLength : I
    //   1676: aload #22
    //   1678: invokevirtual getMeasuredWidth : ()I
    //   1681: aload #21
    //   1683: getfield leftMargin : I
    //   1686: iadd
    //   1687: aload #21
    //   1689: getfield rightMargin : I
    //   1692: iadd
    //   1693: aload_0
    //   1694: aload #22
    //   1696: invokevirtual getNextLocationOffset : (Landroid/view/View;)I
    //   1699: iadd
    //   1700: iadd
    //   1701: putfield mTotalLength : I
    //   1704: goto -> 1749
    //   1707: aload_0
    //   1708: getfield mTotalLength : I
    //   1711: istore #17
    //   1713: aload_0
    //   1714: iload #17
    //   1716: aload #22
    //   1718: invokevirtual getMeasuredWidth : ()I
    //   1721: iload #17
    //   1723: iadd
    //   1724: aload #21
    //   1726: getfield leftMargin : I
    //   1729: iadd
    //   1730: aload #21
    //   1732: getfield rightMargin : I
    //   1735: iadd
    //   1736: aload_0
    //   1737: aload #22
    //   1739: invokevirtual getNextLocationOffset : (Landroid/view/View;)I
    //   1742: iadd
    //   1743: invokestatic max : (II)I
    //   1746: putfield mTotalLength : I
    //   1749: iload #5
    //   1751: ldc 1073741824
    //   1753: if_icmpeq -> 1771
    //   1756: aload #21
    //   1758: getfield height : I
    //   1761: iconst_m1
    //   1762: if_icmpne -> 1771
    //   1765: iconst_1
    //   1766: istore #17
    //   1768: goto -> 1774
    //   1771: iconst_0
    //   1772: istore #17
    //   1774: aload #21
    //   1776: getfield topMargin : I
    //   1779: aload #21
    //   1781: getfield bottomMargin : I
    //   1784: iadd
    //   1785: istore #24
    //   1787: aload #22
    //   1789: invokevirtual getMeasuredHeight : ()I
    //   1792: iload #24
    //   1794: iadd
    //   1795: istore_3
    //   1796: iload #16
    //   1798: iload_3
    //   1799: invokestatic max : (II)I
    //   1802: istore #23
    //   1804: iload #17
    //   1806: ifeq -> 1816
    //   1809: iload #24
    //   1811: istore #16
    //   1813: goto -> 1819
    //   1816: iload_3
    //   1817: istore #16
    //   1819: iload #18
    //   1821: iload #16
    //   1823: invokestatic max : (II)I
    //   1826: istore #16
    //   1828: iload #12
    //   1830: ifeq -> 1848
    //   1833: aload #21
    //   1835: getfield height : I
    //   1838: iconst_m1
    //   1839: if_icmpne -> 1848
    //   1842: iconst_1
    //   1843: istore #12
    //   1845: goto -> 1851
    //   1848: iconst_0
    //   1849: istore #12
    //   1851: iload #8
    //   1853: ifeq -> 1942
    //   1856: aload #22
    //   1858: invokevirtual getBaseline : ()I
    //   1861: istore #17
    //   1863: iload #17
    //   1865: iconst_m1
    //   1866: if_icmpeq -> 1942
    //   1869: aload #21
    //   1871: getfield gravity : I
    //   1874: ifge -> 1886
    //   1877: aload_0
    //   1878: getfield mGravity : I
    //   1881: istore #18
    //   1883: goto -> 1893
    //   1886: aload #21
    //   1888: getfield gravity : I
    //   1891: istore #18
    //   1893: iload #18
    //   1895: bipush #112
    //   1897: iand
    //   1898: iconst_4
    //   1899: ishr
    //   1900: bipush #-2
    //   1902: iand
    //   1903: iconst_1
    //   1904: ishr
    //   1905: istore #18
    //   1907: aload #6
    //   1909: iload #18
    //   1911: aload #6
    //   1913: iload #18
    //   1915: iaload
    //   1916: iload #17
    //   1918: invokestatic max : (II)I
    //   1921: iastore
    //   1922: aload #7
    //   1924: iload #18
    //   1926: aload #7
    //   1928: iload #18
    //   1930: iaload
    //   1931: iload_3
    //   1932: iload #17
    //   1934: isub
    //   1935: invokestatic max : (II)I
    //   1938: iastore
    //   1939: goto -> 1942
    //   1942: iload #16
    //   1944: istore #18
    //   1946: iload #23
    //   1948: istore #16
    //   1950: goto -> 1953
    //   1953: iinc #14, 1
    //   1956: goto -> 1449
    //   1959: aload_0
    //   1960: aload_0
    //   1961: getfield mTotalLength : I
    //   1964: aload_0
    //   1965: invokevirtual getPaddingLeft : ()I
    //   1968: aload_0
    //   1969: invokevirtual getPaddingRight : ()I
    //   1972: iadd
    //   1973: iadd
    //   1974: putfield mTotalLength : I
    //   1977: aload #6
    //   1979: iconst_1
    //   1980: iaload
    //   1981: iconst_m1
    //   1982: if_icmpne -> 2019
    //   1985: aload #6
    //   1987: iconst_0
    //   1988: iaload
    //   1989: iconst_m1
    //   1990: if_icmpne -> 2019
    //   1993: aload #6
    //   1995: iconst_2
    //   1996: iaload
    //   1997: iconst_m1
    //   1998: if_icmpne -> 2019
    //   2001: aload #6
    //   2003: iconst_3
    //   2004: iaload
    //   2005: iconst_m1
    //   2006: if_icmpeq -> 2012
    //   2009: goto -> 2019
    //   2012: iload #16
    //   2014: istore #15
    //   2016: goto -> 2077
    //   2019: iload #16
    //   2021: aload #6
    //   2023: iconst_3
    //   2024: iaload
    //   2025: aload #6
    //   2027: iconst_0
    //   2028: iaload
    //   2029: aload #6
    //   2031: iconst_1
    //   2032: iaload
    //   2033: aload #6
    //   2035: iconst_2
    //   2036: iaload
    //   2037: invokestatic max : (II)I
    //   2040: invokestatic max : (II)I
    //   2043: invokestatic max : (II)I
    //   2046: aload #7
    //   2048: iconst_3
    //   2049: iaload
    //   2050: aload #7
    //   2052: iconst_0
    //   2053: iaload
    //   2054: aload #7
    //   2056: iconst_1
    //   2057: iaload
    //   2058: aload #7
    //   2060: iconst_2
    //   2061: iaload
    //   2062: invokestatic max : (II)I
    //   2065: invokestatic max : (II)I
    //   2068: invokestatic max : (II)I
    //   2071: iadd
    //   2072: invokestatic max : (II)I
    //   2075: istore #15
    //   2077: iload #19
    //   2079: istore #14
    //   2081: iload #12
    //   2083: istore #19
    //   2085: iload #13
    //   2087: istore #12
    //   2089: iload #18
    //   2091: istore #13
    //   2093: iload #19
    //   2095: ifne -> 2108
    //   2098: iload #5
    //   2100: ldc 1073741824
    //   2102: if_icmpeq -> 2108
    //   2105: goto -> 2112
    //   2108: iload #15
    //   2110: istore #13
    //   2112: aload_0
    //   2113: iload #25
    //   2115: iload #14
    //   2117: ldc_w -16777216
    //   2120: iand
    //   2121: ior
    //   2122: iload #13
    //   2124: aload_0
    //   2125: invokevirtual getPaddingTop : ()I
    //   2128: aload_0
    //   2129: invokevirtual getPaddingBottom : ()I
    //   2132: iadd
    //   2133: iadd
    //   2134: aload_0
    //   2135: invokevirtual getSuggestedMinimumHeight : ()I
    //   2138: invokestatic max : (II)I
    //   2141: iload_2
    //   2142: iload #14
    //   2144: bipush #16
    //   2146: ishl
    //   2147: invokestatic resolveSizeAndState : (III)I
    //   2150: invokevirtual setMeasuredDimension : (II)V
    //   2153: iload #20
    //   2155: ifeq -> 2165
    //   2158: aload_0
    //   2159: iload #12
    //   2161: iload_1
    //   2162: invokespecial forceUniformHeight : (II)V
    //   2165: return
  }
  
  int measureNullChild(int paramInt) {
    return 0;
  }
  
  void measureVertical(int paramInt1, int paramInt2) {
    this.mTotalLength = 0;
    int i = getVirtualChildCount();
    int j = View.MeasureSpec.getMode(paramInt1);
    int k = View.MeasureSpec.getMode(paramInt2);
    int m = this.mBaselineAlignedChildIndex;
    boolean bool = this.mUseLargestChild;
    float f = 0.0F;
    int n = 0;
    int i1 = 0;
    int i2 = 0;
    int i3 = 0;
    int i4 = 0;
    int i5 = 0;
    int i6 = 0;
    int i7 = 1;
    boolean bool1 = false;
    while (i5 < i) {
      View view = getVirtualChildAt(i5);
      if (view == null) {
        this.mTotalLength += measureNullChild(i5);
      } else if (view.getVisibility() == 8) {
        i5 += getChildrenSkipCount(view, i5);
      } else {
        if (hasDividerBeforeChildAt(i5))
          this.mTotalLength += this.mDividerHeight; 
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        f += layoutParams.weight;
        if (k == 1073741824 && layoutParams.height == 0 && layoutParams.weight > 0.0F) {
          i6 = this.mTotalLength;
          this.mTotalLength = Math.max(i6, layoutParams.topMargin + i6 + layoutParams.bottomMargin);
          i6 = 1;
        } else {
          if (layoutParams.height == 0 && layoutParams.weight > 0.0F) {
            layoutParams.height = -2;
            i11 = 0;
          } else {
            i11 = Integer.MIN_VALUE;
          } 
          if (f == 0.0F) {
            i12 = this.mTotalLength;
          } else {
            i12 = 0;
          } 
          measureChildBeforeLayout(view, i5, paramInt1, 0, paramInt2, i12);
          if (i11 != Integer.MIN_VALUE)
            layoutParams.height = i11; 
          int i12 = view.getMeasuredHeight();
          int i11 = this.mTotalLength;
          this.mTotalLength = Math.max(i11, i11 + i12 + layoutParams.topMargin + layoutParams.bottomMargin + getNextLocationOffset(view));
          if (bool)
            i2 = Math.max(i12, i2); 
        } 
        int i10 = i5;
        if (m >= 0 && m == i10 + 1)
          this.mBaselineChildTop = this.mTotalLength; 
        if (i10 >= m || layoutParams.weight <= 0.0F) {
          if (j != 1073741824 && layoutParams.width == -1) {
            i5 = 1;
            bool1 = true;
          } else {
            i5 = 0;
          } 
          int i12 = layoutParams.leftMargin + layoutParams.rightMargin;
          int i11 = view.getMeasuredWidth() + i12;
          i1 = Math.max(i1, i11);
          int i13 = View.combineMeasuredStates(n, view.getMeasuredState());
          if (i7 && layoutParams.width == -1) {
            n = 1;
          } else {
            n = 0;
          } 
          if (layoutParams.weight > 0.0F) {
            if (i5 == 0)
              i12 = i11; 
            i3 = Math.max(i3, i12);
            i7 = i4;
            i4 = i3;
          } else {
            if (i5 == 0)
              i12 = i11; 
            i7 = Math.max(i4, i12);
            i4 = i3;
          } 
          i11 = getChildrenSkipCount(view, i10);
          i5 = n;
          i3 = i4;
          i4 = i7;
          n = i13;
          i11 += i10;
          i7 = i5;
          i5 = i11;
        } else {
          throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
        } 
      } 
      i5++;
    } 
    if (this.mTotalLength > 0 && hasDividerBeforeChildAt(i))
      this.mTotalLength += this.mDividerHeight; 
    if (bool && (k == Integer.MIN_VALUE || k == 0)) {
      this.mTotalLength = 0;
      for (i5 = 0; i5 < i; i5++) {
        View view = getVirtualChildAt(i5);
        if (view == null) {
          this.mTotalLength += measureNullChild(i5);
        } else if (view.getVisibility() == 8) {
          i5 += getChildrenSkipCount(view, i5);
        } else {
          LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
          int i10 = this.mTotalLength;
          this.mTotalLength = Math.max(i10, i10 + i2 + layoutParams.topMargin + layoutParams.bottomMargin + getNextLocationOffset(view));
        } 
      } 
    } 
    this.mTotalLength += getPaddingTop() + getPaddingBottom();
    int i9 = View.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumHeight()), paramInt2, 0);
    int i8 = (0xFFFFFF & i9) - this.mTotalLength;
    if (i6 != 0 || (i8 != 0 && f > 0.0F)) {
      float f1 = this.mWeightSum;
      if (f1 > 0.0F)
        f = f1; 
      this.mTotalLength = 0;
      i5 = 0;
      i2 = i8;
      i3 = i1;
      while (i5 < i) {
        View view = getVirtualChildAt(i5);
        if (view.getVisibility() != 8) {
          LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
          f1 = layoutParams.weight;
          if (f1 > 0.0F) {
            i1 = (int)(i2 * f1 / f);
            int i10 = getPaddingLeft();
            i8 = getPaddingRight();
            i6 = i2 - i1;
            i2 = layoutParams.leftMargin;
            int i11 = layoutParams.rightMargin;
            m = layoutParams.width;
            f -= f1;
            i8 = getChildMeasureSpec(paramInt1, i10 + i8 + i2 + i11, m);
            if (layoutParams.height != 0 || k != 1073741824) {
              i1 = view.getMeasuredHeight() + i1;
              i2 = i1;
              if (i1 < 0)
                i2 = 0; 
              view.measure(i8, View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
            } else {
              if (i1 > 0) {
                i2 = i1;
              } else {
                i2 = 0;
              } 
              view.measure(i8, View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
            } 
            n = View.combineMeasuredStates(n, view.getMeasuredState() & 0xFFFFFF00);
            i2 = i6;
          } 
          i8 = layoutParams.leftMargin + layoutParams.rightMargin;
          i1 = view.getMeasuredWidth() + i8;
          i6 = Math.max(i3, i1);
          if (j != 1073741824 && layoutParams.width == -1) {
            i3 = 1;
          } else {
            i3 = 0;
          } 
          if (i3 != 0) {
            i3 = i8;
          } else {
            i3 = i1;
          } 
          i4 = Math.max(i4, i3);
          if (i7 != 0 && layoutParams.width == -1) {
            i7 = 1;
          } else {
            i7 = 0;
          } 
          i3 = this.mTotalLength;
          this.mTotalLength = Math.max(i3, view.getMeasuredHeight() + i3 + layoutParams.topMargin + layoutParams.bottomMargin + getNextLocationOffset(view));
          i3 = i6;
        } 
        i5++;
      } 
      this.mTotalLength += getPaddingTop() + getPaddingBottom();
      i2 = i4;
      i4 = n;
      n = i2;
    } else {
      i3 = Math.max(i4, i3);
      if (bool && k != 1073741824)
        for (i4 = 0; i4 < i; i4++) {
          View view = getVirtualChildAt(i4);
          if (view != null && view.getVisibility() != 8 && ((LayoutParams)view.getLayoutParams()).weight > 0.0F)
            view.measure(View.MeasureSpec.makeMeasureSpec(view.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824)); 
        }  
      i4 = n;
      n = i3;
      i3 = i1;
    } 
    if (i7 != 0 || j == 1073741824)
      n = i3; 
    setMeasuredDimension(View.resolveSizeAndState(Math.max(n + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), paramInt1, i4), i9);
    if (bool1)
      forceUniformWidth(i, paramInt2); 
  }
  
  protected void onDraw(Canvas paramCanvas) {
    if (this.mDivider == null)
      return; 
    if (this.mOrientation == 1) {
      drawDividersVertical(paramCanvas);
    } else {
      drawDividersHorizontal(paramCanvas);
    } 
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent) {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo) {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (this.mOrientation == 1) {
      layoutVertical(paramInt1, paramInt2, paramInt3, paramInt4);
    } else {
      layoutHorizontal(paramInt1, paramInt2, paramInt3, paramInt4);
    } 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    if (this.mOrientation == 1) {
      measureVertical(paramInt1, paramInt2);
    } else {
      measureHorizontal(paramInt1, paramInt2);
    } 
  }
  
  public void setBaselineAligned(boolean paramBoolean) {
    this.mBaselineAligned = paramBoolean;
  }
  
  public void setBaselineAlignedChildIndex(int paramInt) {
    if (paramInt >= 0 && paramInt < getChildCount()) {
      this.mBaselineAlignedChildIndex = paramInt;
      return;
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("base aligned child index out of range (0, ");
    stringBuilder.append(getChildCount());
    stringBuilder.append(")");
    throw new IllegalArgumentException(stringBuilder.toString());
  }
  
  public void setDividerDrawable(Drawable paramDrawable) {
    if (paramDrawable == this.mDivider)
      return; 
    this.mDivider = paramDrawable;
    boolean bool = false;
    if (paramDrawable != null) {
      this.mDividerWidth = paramDrawable.getIntrinsicWidth();
      this.mDividerHeight = paramDrawable.getIntrinsicHeight();
    } else {
      this.mDividerWidth = 0;
      this.mDividerHeight = 0;
    } 
    if (paramDrawable == null)
      bool = true; 
    setWillNotDraw(bool);
    requestLayout();
  }
  
  public void setDividerPadding(int paramInt) {
    this.mDividerPadding = paramInt;
  }
  
  public void setGravity(int paramInt) {
    if (this.mGravity != paramInt) {
      int i = paramInt;
      if ((0x800007 & paramInt) == 0)
        i = paramInt | 0x800003; 
      paramInt = i;
      if ((i & 0x70) == 0)
        paramInt = i | 0x30; 
      this.mGravity = paramInt;
      requestLayout();
    } 
  }
  
  public void setHorizontalGravity(int paramInt) {
    int i = paramInt & 0x800007;
    paramInt = this.mGravity;
    if ((0x800007 & paramInt) != i) {
      this.mGravity = i | 0xFF7FFFF8 & paramInt;
      requestLayout();
    } 
  }
  
  public void setMeasureWithLargestChildEnabled(boolean paramBoolean) {
    this.mUseLargestChild = paramBoolean;
  }
  
  public void setOrientation(int paramInt) {
    if (this.mOrientation != paramInt) {
      this.mOrientation = paramInt;
      requestLayout();
    } 
  }
  
  public void setShowDividers(int paramInt) {
    if (paramInt != this.mShowDividers)
      requestLayout(); 
    this.mShowDividers = paramInt;
  }
  
  public void setVerticalGravity(int paramInt) {
    paramInt &= 0x70;
    int i = this.mGravity;
    if ((i & 0x70) != paramInt) {
      this.mGravity = paramInt | i & 0xFFFFFF8F;
      requestLayout();
    } 
  }
  
  public void setWeightSum(float paramFloat) {
    this.mWeightSum = Math.max(0.0F, paramFloat);
  }
  
  public boolean shouldDelayChildPressedState() {
    return false;
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface DividerMode {}
  
  public static class LayoutParams extends ViewGroup.MarginLayoutParams {
    public int gravity = -1;
    
    public float weight;
    
    public LayoutParams(int param1Int1, int param1Int2) {
      super(param1Int1, param1Int2);
      this.weight = 0.0F;
    }
    
    public LayoutParams(int param1Int1, int param1Int2, float param1Float) {
      super(param1Int1, param1Int2);
      this.weight = param1Float;
    }
    
    public LayoutParams(Context param1Context, AttributeSet param1AttributeSet) {
      super(param1Context, param1AttributeSet);
      TypedArray typedArray = param1Context.obtainStyledAttributes(param1AttributeSet, R.styleable.LinearLayoutCompat_Layout);
      this.weight = typedArray.getFloat(R.styleable.LinearLayoutCompat_Layout_android_layout_weight, 0.0F);
      this.gravity = typedArray.getInt(R.styleable.LinearLayoutCompat_Layout_android_layout_gravity, -1);
      typedArray.recycle();
    }
    
    public LayoutParams(ViewGroup.LayoutParams param1LayoutParams) {
      super(param1LayoutParams);
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams param1MarginLayoutParams) {
      super(param1MarginLayoutParams);
    }
    
    public LayoutParams(LayoutParams param1LayoutParams) {
      super(param1LayoutParams);
      this.weight = param1LayoutParams.weight;
      this.gravity = param1LayoutParams.gravity;
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface OrientationMode {}
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/appcompat/widget/LinearLayoutCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */