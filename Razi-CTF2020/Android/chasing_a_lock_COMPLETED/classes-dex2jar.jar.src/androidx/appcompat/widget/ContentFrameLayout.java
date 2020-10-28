package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;

public class ContentFrameLayout extends FrameLayout {
  private OnAttachListener mAttachListener;
  
  private final Rect mDecorPadding = new Rect();
  
  private TypedValue mFixedHeightMajor;
  
  private TypedValue mFixedHeightMinor;
  
  private TypedValue mFixedWidthMajor;
  
  private TypedValue mFixedWidthMinor;
  
  private TypedValue mMinWidthMajor;
  
  private TypedValue mMinWidthMinor;
  
  public ContentFrameLayout(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public ContentFrameLayout(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ContentFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void dispatchFitSystemWindows(Rect paramRect) {
    fitSystemWindows(paramRect);
  }
  
  public TypedValue getFixedHeightMajor() {
    if (this.mFixedHeightMajor == null)
      this.mFixedHeightMajor = new TypedValue(); 
    return this.mFixedHeightMajor;
  }
  
  public TypedValue getFixedHeightMinor() {
    if (this.mFixedHeightMinor == null)
      this.mFixedHeightMinor = new TypedValue(); 
    return this.mFixedHeightMinor;
  }
  
  public TypedValue getFixedWidthMajor() {
    if (this.mFixedWidthMajor == null)
      this.mFixedWidthMajor = new TypedValue(); 
    return this.mFixedWidthMajor;
  }
  
  public TypedValue getFixedWidthMinor() {
    if (this.mFixedWidthMinor == null)
      this.mFixedWidthMinor = new TypedValue(); 
    return this.mFixedWidthMinor;
  }
  
  public TypedValue getMinWidthMajor() {
    if (this.mMinWidthMajor == null)
      this.mMinWidthMajor = new TypedValue(); 
    return this.mMinWidthMajor;
  }
  
  public TypedValue getMinWidthMinor() {
    if (this.mMinWidthMinor == null)
      this.mMinWidthMinor = new TypedValue(); 
    return this.mMinWidthMinor;
  }
  
  protected void onAttachedToWindow() {
    super.onAttachedToWindow();
    OnAttachListener onAttachListener = this.mAttachListener;
    if (onAttachListener != null)
      onAttachListener.onAttachedFromWindow(); 
  }
  
  protected void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    OnAttachListener onAttachListener = this.mAttachListener;
    if (onAttachListener != null)
      onAttachListener.onDetachedFromWindow(); 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual getContext : ()Landroid/content/Context;
    //   4: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   7: invokevirtual getDisplayMetrics : ()Landroid/util/DisplayMetrics;
    //   10: astore_3
    //   11: aload_3
    //   12: getfield widthPixels : I
    //   15: istore #4
    //   17: aload_3
    //   18: getfield heightPixels : I
    //   21: istore #5
    //   23: iconst_1
    //   24: istore #6
    //   26: iload #4
    //   28: iload #5
    //   30: if_icmpge -> 39
    //   33: iconst_1
    //   34: istore #4
    //   36: goto -> 42
    //   39: iconst_0
    //   40: istore #4
    //   42: iload_1
    //   43: invokestatic getMode : (I)I
    //   46: istore #7
    //   48: iload_2
    //   49: invokestatic getMode : (I)I
    //   52: istore #8
    //   54: iload #7
    //   56: ldc -2147483648
    //   58: if_icmpne -> 194
    //   61: iload #4
    //   63: ifeq -> 75
    //   66: aload_0
    //   67: getfield mFixedWidthMinor : Landroid/util/TypedValue;
    //   70: astore #9
    //   72: goto -> 81
    //   75: aload_0
    //   76: getfield mFixedWidthMajor : Landroid/util/TypedValue;
    //   79: astore #9
    //   81: aload #9
    //   83: ifnull -> 194
    //   86: aload #9
    //   88: getfield type : I
    //   91: ifeq -> 194
    //   94: aload #9
    //   96: getfield type : I
    //   99: iconst_5
    //   100: if_icmpne -> 119
    //   103: aload #9
    //   105: aload_3
    //   106: invokevirtual getDimension : (Landroid/util/DisplayMetrics;)F
    //   109: fstore #10
    //   111: fload #10
    //   113: f2i
    //   114: istore #5
    //   116: goto -> 152
    //   119: aload #9
    //   121: getfield type : I
    //   124: bipush #6
    //   126: if_icmpne -> 149
    //   129: aload #9
    //   131: aload_3
    //   132: getfield widthPixels : I
    //   135: i2f
    //   136: aload_3
    //   137: getfield widthPixels : I
    //   140: i2f
    //   141: invokevirtual getFraction : (FF)F
    //   144: fstore #10
    //   146: goto -> 111
    //   149: iconst_0
    //   150: istore #5
    //   152: iload #5
    //   154: ifle -> 194
    //   157: iload #5
    //   159: aload_0
    //   160: getfield mDecorPadding : Landroid/graphics/Rect;
    //   163: getfield left : I
    //   166: aload_0
    //   167: getfield mDecorPadding : Landroid/graphics/Rect;
    //   170: getfield right : I
    //   173: iadd
    //   174: isub
    //   175: iload_1
    //   176: invokestatic getSize : (I)I
    //   179: invokestatic min : (II)I
    //   182: ldc 1073741824
    //   184: invokestatic makeMeasureSpec : (II)I
    //   187: istore #11
    //   189: iconst_1
    //   190: istore_1
    //   191: goto -> 199
    //   194: iload_1
    //   195: istore #11
    //   197: iconst_0
    //   198: istore_1
    //   199: iload_2
    //   200: istore #5
    //   202: iload #8
    //   204: ldc -2147483648
    //   206: if_icmpne -> 346
    //   209: iload #4
    //   211: ifeq -> 223
    //   214: aload_0
    //   215: getfield mFixedHeightMajor : Landroid/util/TypedValue;
    //   218: astore #9
    //   220: goto -> 229
    //   223: aload_0
    //   224: getfield mFixedHeightMinor : Landroid/util/TypedValue;
    //   227: astore #9
    //   229: iload_2
    //   230: istore #5
    //   232: aload #9
    //   234: ifnull -> 346
    //   237: iload_2
    //   238: istore #5
    //   240: aload #9
    //   242: getfield type : I
    //   245: ifeq -> 346
    //   248: aload #9
    //   250: getfield type : I
    //   253: iconst_5
    //   254: if_icmpne -> 273
    //   257: aload #9
    //   259: aload_3
    //   260: invokevirtual getDimension : (Landroid/util/DisplayMetrics;)F
    //   263: fstore #10
    //   265: fload #10
    //   267: f2i
    //   268: istore #8
    //   270: goto -> 306
    //   273: aload #9
    //   275: getfield type : I
    //   278: bipush #6
    //   280: if_icmpne -> 303
    //   283: aload #9
    //   285: aload_3
    //   286: getfield heightPixels : I
    //   289: i2f
    //   290: aload_3
    //   291: getfield heightPixels : I
    //   294: i2f
    //   295: invokevirtual getFraction : (FF)F
    //   298: fstore #10
    //   300: goto -> 265
    //   303: iconst_0
    //   304: istore #8
    //   306: iload_2
    //   307: istore #5
    //   309: iload #8
    //   311: ifle -> 346
    //   314: iload #8
    //   316: aload_0
    //   317: getfield mDecorPadding : Landroid/graphics/Rect;
    //   320: getfield top : I
    //   323: aload_0
    //   324: getfield mDecorPadding : Landroid/graphics/Rect;
    //   327: getfield bottom : I
    //   330: iadd
    //   331: isub
    //   332: iload_2
    //   333: invokestatic getSize : (I)I
    //   336: invokestatic min : (II)I
    //   339: ldc 1073741824
    //   341: invokestatic makeMeasureSpec : (II)I
    //   344: istore #5
    //   346: aload_0
    //   347: iload #11
    //   349: iload #5
    //   351: invokespecial onMeasure : (II)V
    //   354: aload_0
    //   355: invokevirtual getMeasuredWidth : ()I
    //   358: istore #8
    //   360: iload #8
    //   362: ldc 1073741824
    //   364: invokestatic makeMeasureSpec : (II)I
    //   367: istore #11
    //   369: iload_1
    //   370: ifne -> 512
    //   373: iload #7
    //   375: ldc -2147483648
    //   377: if_icmpne -> 512
    //   380: iload #4
    //   382: ifeq -> 394
    //   385: aload_0
    //   386: getfield mMinWidthMinor : Landroid/util/TypedValue;
    //   389: astore #9
    //   391: goto -> 400
    //   394: aload_0
    //   395: getfield mMinWidthMajor : Landroid/util/TypedValue;
    //   398: astore #9
    //   400: aload #9
    //   402: ifnull -> 512
    //   405: aload #9
    //   407: getfield type : I
    //   410: ifeq -> 512
    //   413: aload #9
    //   415: getfield type : I
    //   418: iconst_5
    //   419: if_icmpne -> 437
    //   422: aload #9
    //   424: aload_3
    //   425: invokevirtual getDimension : (Landroid/util/DisplayMetrics;)F
    //   428: fstore #10
    //   430: fload #10
    //   432: f2i
    //   433: istore_1
    //   434: goto -> 469
    //   437: aload #9
    //   439: getfield type : I
    //   442: bipush #6
    //   444: if_icmpne -> 467
    //   447: aload #9
    //   449: aload_3
    //   450: getfield widthPixels : I
    //   453: i2f
    //   454: aload_3
    //   455: getfield widthPixels : I
    //   458: i2f
    //   459: invokevirtual getFraction : (FF)F
    //   462: fstore #10
    //   464: goto -> 430
    //   467: iconst_0
    //   468: istore_1
    //   469: iload_1
    //   470: istore_2
    //   471: iload_1
    //   472: ifle -> 493
    //   475: iload_1
    //   476: aload_0
    //   477: getfield mDecorPadding : Landroid/graphics/Rect;
    //   480: getfield left : I
    //   483: aload_0
    //   484: getfield mDecorPadding : Landroid/graphics/Rect;
    //   487: getfield right : I
    //   490: iadd
    //   491: isub
    //   492: istore_2
    //   493: iload #8
    //   495: iload_2
    //   496: if_icmpge -> 512
    //   499: iload_2
    //   500: ldc 1073741824
    //   502: invokestatic makeMeasureSpec : (II)I
    //   505: istore_1
    //   506: iload #6
    //   508: istore_2
    //   509: goto -> 517
    //   512: iconst_0
    //   513: istore_2
    //   514: iload #11
    //   516: istore_1
    //   517: iload_2
    //   518: ifeq -> 528
    //   521: aload_0
    //   522: iload_1
    //   523: iload #5
    //   525: invokespecial onMeasure : (II)V
    //   528: return
  }
  
  public void setAttachListener(OnAttachListener paramOnAttachListener) {
    this.mAttachListener = paramOnAttachListener;
  }
  
  public void setDecorPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this.mDecorPadding.set(paramInt1, paramInt2, paramInt3, paramInt4);
    if (ViewCompat.isLaidOut((View)this))
      requestLayout(); 
  }
  
  public static interface OnAttachListener {
    void onAttachedFromWindow();
    
    void onDetachedFromWindow();
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/appcompat/widget/ContentFrameLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */