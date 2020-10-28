package androidx.appcompat.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.appcompat.R;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.ViewCompat;

public class AppCompatSpinner extends Spinner implements TintableBackgroundView {
  private static final int[] ATTRS_ANDROID_SPINNERMODE = new int[] { 16843505 };
  
  private static final int MAX_ITEMS_MEASURED = 15;
  
  private static final int MODE_DIALOG = 0;
  
  private static final int MODE_DROPDOWN = 1;
  
  private static final int MODE_THEME = -1;
  
  private static final String TAG = "AppCompatSpinner";
  
  private final AppCompatBackgroundHelper mBackgroundTintHelper;
  
  int mDropDownWidth;
  
  private ForwardingListener mForwardingListener;
  
  private SpinnerPopup mPopup;
  
  private final Context mPopupContext;
  
  private final boolean mPopupSet;
  
  private SpinnerAdapter mTempAdapter;
  
  final Rect mTempRect;
  
  public AppCompatSpinner(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public AppCompatSpinner(Context paramContext, int paramInt) {
    this(paramContext, (AttributeSet)null, R.attr.spinnerStyle, paramInt);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, R.attr.spinnerStyle);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    this(paramContext, paramAttributeSet, paramInt, -1);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    this(paramContext, paramAttributeSet, paramInt1, paramInt2, (Resources.Theme)null);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2, Resources.Theme paramTheme) {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_2
    //   3: iload_3
    //   4: invokespecial <init> : (Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   7: aload_0
    //   8: new android/graphics/Rect
    //   11: dup
    //   12: invokespecial <init> : ()V
    //   15: putfield mTempRect : Landroid/graphics/Rect;
    //   18: aload_0
    //   19: aload_0
    //   20: invokevirtual getContext : ()Landroid/content/Context;
    //   23: invokestatic checkAppCompatTheme : (Landroid/view/View;Landroid/content/Context;)V
    //   26: aload_1
    //   27: aload_2
    //   28: getstatic androidx/appcompat/R$styleable.Spinner : [I
    //   31: iload_3
    //   32: iconst_0
    //   33: invokestatic obtainStyledAttributes : (Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;
    //   36: astore #6
    //   38: aload_0
    //   39: new androidx/appcompat/widget/AppCompatBackgroundHelper
    //   42: dup
    //   43: aload_0
    //   44: invokespecial <init> : (Landroid/view/View;)V
    //   47: putfield mBackgroundTintHelper : Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    //   50: aload #5
    //   52: ifnull -> 72
    //   55: aload_0
    //   56: new androidx/appcompat/view/ContextThemeWrapper
    //   59: dup
    //   60: aload_1
    //   61: aload #5
    //   63: invokespecial <init> : (Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    //   66: putfield mPopupContext : Landroid/content/Context;
    //   69: goto -> 110
    //   72: aload #6
    //   74: getstatic androidx/appcompat/R$styleable.Spinner_popupTheme : I
    //   77: iconst_0
    //   78: invokevirtual getResourceId : (II)I
    //   81: istore #7
    //   83: iload #7
    //   85: ifeq -> 105
    //   88: aload_0
    //   89: new androidx/appcompat/view/ContextThemeWrapper
    //   92: dup
    //   93: aload_1
    //   94: iload #7
    //   96: invokespecial <init> : (Landroid/content/Context;I)V
    //   99: putfield mPopupContext : Landroid/content/Context;
    //   102: goto -> 110
    //   105: aload_0
    //   106: aload_1
    //   107: putfield mPopupContext : Landroid/content/Context;
    //   110: iload #4
    //   112: istore #8
    //   114: iload #4
    //   116: iconst_m1
    //   117: if_icmpne -> 243
    //   120: aload_1
    //   121: aload_2
    //   122: getstatic androidx/appcompat/widget/AppCompatSpinner.ATTRS_ANDROID_SPINNERMODE : [I
    //   125: iload_3
    //   126: iconst_0
    //   127: invokevirtual obtainStyledAttributes : (Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    //   130: astore #5
    //   132: iload #4
    //   134: istore #7
    //   136: aload #5
    //   138: astore #9
    //   140: aload #5
    //   142: iconst_0
    //   143: invokevirtual hasValue : (I)Z
    //   146: ifeq -> 162
    //   149: aload #5
    //   151: astore #9
    //   153: aload #5
    //   155: iconst_0
    //   156: iconst_0
    //   157: invokevirtual getInt : (II)I
    //   160: istore #7
    //   162: iload #7
    //   164: istore #8
    //   166: aload #5
    //   168: ifnull -> 243
    //   171: iload #7
    //   173: istore #4
    //   175: aload #5
    //   177: invokevirtual recycle : ()V
    //   180: iload #4
    //   182: istore #8
    //   184: goto -> 243
    //   187: astore #10
    //   189: goto -> 204
    //   192: astore_1
    //   193: aconst_null
    //   194: astore #9
    //   196: goto -> 231
    //   199: astore #10
    //   201: aconst_null
    //   202: astore #5
    //   204: aload #5
    //   206: astore #9
    //   208: ldc 'AppCompatSpinner'
    //   210: ldc 'Could not read android:spinnerMode'
    //   212: aload #10
    //   214: invokestatic i : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   217: pop
    //   218: iload #4
    //   220: istore #8
    //   222: aload #5
    //   224: ifnull -> 243
    //   227: goto -> 175
    //   230: astore_1
    //   231: aload #9
    //   233: ifnull -> 241
    //   236: aload #9
    //   238: invokevirtual recycle : ()V
    //   241: aload_1
    //   242: athrow
    //   243: iload #8
    //   245: ifeq -> 357
    //   248: iload #8
    //   250: iconst_1
    //   251: if_icmpeq -> 257
    //   254: goto -> 386
    //   257: new androidx/appcompat/widget/AppCompatSpinner$DropdownPopup
    //   260: dup
    //   261: aload_0
    //   262: aload_0
    //   263: getfield mPopupContext : Landroid/content/Context;
    //   266: aload_2
    //   267: iload_3
    //   268: invokespecial <init> : (Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   271: astore #5
    //   273: aload_0
    //   274: getfield mPopupContext : Landroid/content/Context;
    //   277: aload_2
    //   278: getstatic androidx/appcompat/R$styleable.Spinner : [I
    //   281: iload_3
    //   282: iconst_0
    //   283: invokestatic obtainStyledAttributes : (Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;
    //   286: astore #9
    //   288: aload_0
    //   289: aload #9
    //   291: getstatic androidx/appcompat/R$styleable.Spinner_android_dropDownWidth : I
    //   294: bipush #-2
    //   296: invokevirtual getLayoutDimension : (II)I
    //   299: putfield mDropDownWidth : I
    //   302: aload #5
    //   304: aload #9
    //   306: getstatic androidx/appcompat/R$styleable.Spinner_android_popupBackground : I
    //   309: invokevirtual getDrawable : (I)Landroid/graphics/drawable/Drawable;
    //   312: invokevirtual setBackgroundDrawable : (Landroid/graphics/drawable/Drawable;)V
    //   315: aload #5
    //   317: aload #6
    //   319: getstatic androidx/appcompat/R$styleable.Spinner_android_prompt : I
    //   322: invokevirtual getString : (I)Ljava/lang/String;
    //   325: invokevirtual setPromptText : (Ljava/lang/CharSequence;)V
    //   328: aload #9
    //   330: invokevirtual recycle : ()V
    //   333: aload_0
    //   334: aload #5
    //   336: putfield mPopup : Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;
    //   339: aload_0
    //   340: new androidx/appcompat/widget/AppCompatSpinner$1
    //   343: dup
    //   344: aload_0
    //   345: aload_0
    //   346: aload #5
    //   348: invokespecial <init> : (Landroidx/appcompat/widget/AppCompatSpinner;Landroid/view/View;Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;)V
    //   351: putfield mForwardingListener : Landroidx/appcompat/widget/ForwardingListener;
    //   354: goto -> 386
    //   357: aload_0
    //   358: new androidx/appcompat/widget/AppCompatSpinner$DialogPopup
    //   361: dup
    //   362: aload_0
    //   363: invokespecial <init> : (Landroidx/appcompat/widget/AppCompatSpinner;)V
    //   366: putfield mPopup : Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;
    //   369: aload_0
    //   370: getfield mPopup : Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;
    //   373: aload #6
    //   375: getstatic androidx/appcompat/R$styleable.Spinner_android_prompt : I
    //   378: invokevirtual getString : (I)Ljava/lang/String;
    //   381: invokeinterface setPromptText : (Ljava/lang/CharSequence;)V
    //   386: aload #6
    //   388: getstatic androidx/appcompat/R$styleable.Spinner_android_entries : I
    //   391: invokevirtual getTextArray : (I)[Ljava/lang/CharSequence;
    //   394: astore #5
    //   396: aload #5
    //   398: ifnull -> 426
    //   401: new android/widget/ArrayAdapter
    //   404: dup
    //   405: aload_1
    //   406: ldc 17367048
    //   408: aload #5
    //   410: invokespecial <init> : (Landroid/content/Context;I[Ljava/lang/Object;)V
    //   413: astore_1
    //   414: aload_1
    //   415: getstatic androidx/appcompat/R$layout.support_simple_spinner_dropdown_item : I
    //   418: invokevirtual setDropDownViewResource : (I)V
    //   421: aload_0
    //   422: aload_1
    //   423: invokevirtual setAdapter : (Landroid/widget/SpinnerAdapter;)V
    //   426: aload #6
    //   428: invokevirtual recycle : ()V
    //   431: aload_0
    //   432: iconst_1
    //   433: putfield mPopupSet : Z
    //   436: aload_0
    //   437: getfield mTempAdapter : Landroid/widget/SpinnerAdapter;
    //   440: astore_1
    //   441: aload_1
    //   442: ifnull -> 455
    //   445: aload_0
    //   446: aload_1
    //   447: invokevirtual setAdapter : (Landroid/widget/SpinnerAdapter;)V
    //   450: aload_0
    //   451: aconst_null
    //   452: putfield mTempAdapter : Landroid/widget/SpinnerAdapter;
    //   455: aload_0
    //   456: getfield mBackgroundTintHelper : Landroidx/appcompat/widget/AppCompatBackgroundHelper;
    //   459: aload_2
    //   460: iload_3
    //   461: invokevirtual loadFromAttributes : (Landroid/util/AttributeSet;I)V
    //   464: return
    // Exception table:
    //   from	to	target	type
    //   120	132	199	java/lang/Exception
    //   120	132	192	finally
    //   140	149	187	java/lang/Exception
    //   140	149	230	finally
    //   153	162	187	java/lang/Exception
    //   153	162	230	finally
    //   208	218	230	finally
  }
  
  int compatMeasureContentWidth(SpinnerAdapter paramSpinnerAdapter, Drawable paramDrawable) {
    int i = 0;
    if (paramSpinnerAdapter == null)
      return 0; 
    int j = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
    int k = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
    int m = Math.max(0, getSelectedItemPosition());
    int n = Math.min(paramSpinnerAdapter.getCount(), m + 15);
    int i1 = Math.max(0, m - 15 - n - m);
    View view = null;
    m = 0;
    while (i1 < n) {
      int i2 = paramSpinnerAdapter.getItemViewType(i1);
      int i3 = i;
      if (i2 != i) {
        view = null;
        i3 = i2;
      } 
      view = paramSpinnerAdapter.getView(i1, view, (ViewGroup)this);
      if (view.getLayoutParams() == null)
        view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2)); 
      view.measure(j, k);
      m = Math.max(m, view.getMeasuredWidth());
      i1++;
      i = i3;
    } 
    i1 = m;
    if (paramDrawable != null) {
      paramDrawable.getPadding(this.mTempRect);
      i1 = m + this.mTempRect.left + this.mTempRect.right;
    } 
    return i1;
  }
  
  protected void drawableStateChanged() {
    super.drawableStateChanged();
    AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
    if (appCompatBackgroundHelper != null)
      appCompatBackgroundHelper.applySupportBackgroundTint(); 
  }
  
  public int getDropDownHorizontalOffset() {
    SpinnerPopup spinnerPopup = this.mPopup;
    return (spinnerPopup != null) ? spinnerPopup.getHorizontalOffset() : ((Build.VERSION.SDK_INT >= 16) ? super.getDropDownHorizontalOffset() : 0);
  }
  
  public int getDropDownVerticalOffset() {
    SpinnerPopup spinnerPopup = this.mPopup;
    return (spinnerPopup != null) ? spinnerPopup.getVerticalOffset() : ((Build.VERSION.SDK_INT >= 16) ? super.getDropDownVerticalOffset() : 0);
  }
  
  public int getDropDownWidth() {
    return (this.mPopup != null) ? this.mDropDownWidth : ((Build.VERSION.SDK_INT >= 16) ? super.getDropDownWidth() : 0);
  }
  
  final SpinnerPopup getInternalPopup() {
    return this.mPopup;
  }
  
  public Drawable getPopupBackground() {
    SpinnerPopup spinnerPopup = this.mPopup;
    return (spinnerPopup != null) ? spinnerPopup.getBackground() : ((Build.VERSION.SDK_INT >= 16) ? super.getPopupBackground() : null);
  }
  
  public Context getPopupContext() {
    return this.mPopupContext;
  }
  
  public CharSequence getPrompt() {
    CharSequence charSequence;
    SpinnerPopup spinnerPopup = this.mPopup;
    if (spinnerPopup != null) {
      charSequence = spinnerPopup.getHintText();
    } else {
      charSequence = super.getPrompt();
    } 
    return charSequence;
  }
  
  public ColorStateList getSupportBackgroundTintList() {
    AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
    if (appCompatBackgroundHelper != null) {
      ColorStateList colorStateList = appCompatBackgroundHelper.getSupportBackgroundTintList();
    } else {
      appCompatBackgroundHelper = null;
    } 
    return (ColorStateList)appCompatBackgroundHelper;
  }
  
  public PorterDuff.Mode getSupportBackgroundTintMode() {
    AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
    if (appCompatBackgroundHelper != null) {
      PorterDuff.Mode mode = appCompatBackgroundHelper.getSupportBackgroundTintMode();
    } else {
      appCompatBackgroundHelper = null;
    } 
    return (PorterDuff.Mode)appCompatBackgroundHelper;
  }
  
  protected void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    SpinnerPopup spinnerPopup = this.mPopup;
    if (spinnerPopup != null && spinnerPopup.isShowing())
      this.mPopup.dismiss(); 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    super.onMeasure(paramInt1, paramInt2);
    if (this.mPopup != null && View.MeasureSpec.getMode(paramInt1) == Integer.MIN_VALUE)
      setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), compatMeasureContentWidth(getAdapter(), getBackground())), View.MeasureSpec.getSize(paramInt1)), getMeasuredHeight()); 
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable) {
    SavedState savedState = (SavedState)paramParcelable;
    super.onRestoreInstanceState(savedState.getSuperState());
    if (savedState.mShowDropdown) {
      ViewTreeObserver viewTreeObserver = getViewTreeObserver();
      if (viewTreeObserver != null)
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
              public void onGlobalLayout() {
                if (!AppCompatSpinner.this.getInternalPopup().isShowing())
                  AppCompatSpinner.this.showPopup(); 
                ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
                if (viewTreeObserver != null)
                  if (Build.VERSION.SDK_INT >= 16) {
                    viewTreeObserver.removeOnGlobalLayoutListener(this);
                  } else {
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                  }  
              }
            }); 
    } 
  }
  
  public Parcelable onSaveInstanceState() {
    boolean bool;
    SavedState savedState = new SavedState(super.onSaveInstanceState());
    SpinnerPopup spinnerPopup = this.mPopup;
    if (spinnerPopup != null && spinnerPopup.isShowing()) {
      bool = true;
    } else {
      bool = false;
    } 
    savedState.mShowDropdown = bool;
    return (Parcelable)savedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    ForwardingListener forwardingListener = this.mForwardingListener;
    return (forwardingListener != null && forwardingListener.onTouch((View)this, paramMotionEvent)) ? true : super.onTouchEvent(paramMotionEvent);
  }
  
  public boolean performClick() {
    SpinnerPopup spinnerPopup = this.mPopup;
    if (spinnerPopup != null) {
      if (!spinnerPopup.isShowing())
        showPopup(); 
      return true;
    } 
    return super.performClick();
  }
  
  public void setAdapter(SpinnerAdapter paramSpinnerAdapter) {
    if (!this.mPopupSet) {
      this.mTempAdapter = paramSpinnerAdapter;
      return;
    } 
    super.setAdapter(paramSpinnerAdapter);
    if (this.mPopup != null) {
      Context context1 = this.mPopupContext;
      Context context2 = context1;
      if (context1 == null)
        context2 = getContext(); 
      this.mPopup.setAdapter(new DropDownAdapter(paramSpinnerAdapter, context2.getTheme()));
    } 
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable) {
    super.setBackgroundDrawable(paramDrawable);
    AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
    if (appCompatBackgroundHelper != null)
      appCompatBackgroundHelper.onSetBackgroundDrawable(paramDrawable); 
  }
  
  public void setBackgroundResource(int paramInt) {
    super.setBackgroundResource(paramInt);
    AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
    if (appCompatBackgroundHelper != null)
      appCompatBackgroundHelper.onSetBackgroundResource(paramInt); 
  }
  
  public void setDropDownHorizontalOffset(int paramInt) {
    SpinnerPopup spinnerPopup = this.mPopup;
    if (spinnerPopup != null) {
      spinnerPopup.setHorizontalOriginalOffset(paramInt);
      this.mPopup.setHorizontalOffset(paramInt);
    } else if (Build.VERSION.SDK_INT >= 16) {
      super.setDropDownHorizontalOffset(paramInt);
    } 
  }
  
  public void setDropDownVerticalOffset(int paramInt) {
    SpinnerPopup spinnerPopup = this.mPopup;
    if (spinnerPopup != null) {
      spinnerPopup.setVerticalOffset(paramInt);
    } else if (Build.VERSION.SDK_INT >= 16) {
      super.setDropDownVerticalOffset(paramInt);
    } 
  }
  
  public void setDropDownWidth(int paramInt) {
    if (this.mPopup != null) {
      this.mDropDownWidth = paramInt;
    } else if (Build.VERSION.SDK_INT >= 16) {
      super.setDropDownWidth(paramInt);
    } 
  }
  
  public void setPopupBackgroundDrawable(Drawable paramDrawable) {
    SpinnerPopup spinnerPopup = this.mPopup;
    if (spinnerPopup != null) {
      spinnerPopup.setBackgroundDrawable(paramDrawable);
    } else if (Build.VERSION.SDK_INT >= 16) {
      super.setPopupBackgroundDrawable(paramDrawable);
    } 
  }
  
  public void setPopupBackgroundResource(int paramInt) {
    setPopupBackgroundDrawable(AppCompatResources.getDrawable(getPopupContext(), paramInt));
  }
  
  public void setPrompt(CharSequence paramCharSequence) {
    SpinnerPopup spinnerPopup = this.mPopup;
    if (spinnerPopup != null) {
      spinnerPopup.setPromptText(paramCharSequence);
    } else {
      super.setPrompt(paramCharSequence);
    } 
  }
  
  public void setSupportBackgroundTintList(ColorStateList paramColorStateList) {
    AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
    if (appCompatBackgroundHelper != null)
      appCompatBackgroundHelper.setSupportBackgroundTintList(paramColorStateList); 
  }
  
  public void setSupportBackgroundTintMode(PorterDuff.Mode paramMode) {
    AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
    if (appCompatBackgroundHelper != null)
      appCompatBackgroundHelper.setSupportBackgroundTintMode(paramMode); 
  }
  
  void showPopup() {
    if (Build.VERSION.SDK_INT >= 17) {
      this.mPopup.show(getTextDirection(), getTextAlignment());
    } else {
      this.mPopup.show(-1, -1);
    } 
  }
  
  class DialogPopup implements SpinnerPopup, DialogInterface.OnClickListener {
    private ListAdapter mListAdapter;
    
    AlertDialog mPopup;
    
    private CharSequence mPrompt;
    
    public void dismiss() {
      AlertDialog alertDialog = this.mPopup;
      if (alertDialog != null) {
        alertDialog.dismiss();
        this.mPopup = null;
      } 
    }
    
    public Drawable getBackground() {
      return null;
    }
    
    public CharSequence getHintText() {
      return this.mPrompt;
    }
    
    public int getHorizontalOffset() {
      return 0;
    }
    
    public int getHorizontalOriginalOffset() {
      return 0;
    }
    
    public int getVerticalOffset() {
      return 0;
    }
    
    public boolean isShowing() {
      boolean bool;
      AlertDialog alertDialog = this.mPopup;
      if (alertDialog != null) {
        bool = alertDialog.isShowing();
      } else {
        bool = false;
      } 
      return bool;
    }
    
    public void onClick(DialogInterface param1DialogInterface, int param1Int) {
      AppCompatSpinner.this.setSelection(param1Int);
      if (AppCompatSpinner.this.getOnItemClickListener() != null)
        AppCompatSpinner.this.performItemClick(null, param1Int, this.mListAdapter.getItemId(param1Int)); 
      dismiss();
    }
    
    public void setAdapter(ListAdapter param1ListAdapter) {
      this.mListAdapter = param1ListAdapter;
    }
    
    public void setBackgroundDrawable(Drawable param1Drawable) {
      Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
    }
    
    public void setHorizontalOffset(int param1Int) {
      Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }
    
    public void setHorizontalOriginalOffset(int param1Int) {
      Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
    }
    
    public void setPromptText(CharSequence param1CharSequence) {
      this.mPrompt = param1CharSequence;
    }
    
    public void setVerticalOffset(int param1Int) {
      Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }
    
    public void show(int param1Int1, int param1Int2) {
      if (this.mListAdapter == null)
        return; 
      AlertDialog.Builder builder = new AlertDialog.Builder(AppCompatSpinner.this.getPopupContext());
      CharSequence charSequence = this.mPrompt;
      if (charSequence != null)
        builder.setTitle(charSequence); 
      this.mPopup = builder.setSingleChoiceItems(this.mListAdapter, AppCompatSpinner.this.getSelectedItemPosition(), this).create();
      ListView listView = this.mPopup.getListView();
      if (Build.VERSION.SDK_INT >= 17) {
        listView.setTextDirection(param1Int1);
        listView.setTextAlignment(param1Int2);
      } 
      this.mPopup.show();
    }
  }
  
  private static class DropDownAdapter implements ListAdapter, SpinnerAdapter {
    private SpinnerAdapter mAdapter;
    
    private ListAdapter mListAdapter;
    
    public DropDownAdapter(SpinnerAdapter param1SpinnerAdapter, Resources.Theme param1Theme) {
      this.mAdapter = param1SpinnerAdapter;
      if (param1SpinnerAdapter instanceof ListAdapter)
        this.mListAdapter = (ListAdapter)param1SpinnerAdapter; 
      if (param1Theme != null) {
        ThemedSpinnerAdapter themedSpinnerAdapter;
        if (Build.VERSION.SDK_INT >= 23 && param1SpinnerAdapter instanceof ThemedSpinnerAdapter) {
          themedSpinnerAdapter = (ThemedSpinnerAdapter)param1SpinnerAdapter;
          if (themedSpinnerAdapter.getDropDownViewTheme() != param1Theme)
            themedSpinnerAdapter.setDropDownViewTheme(param1Theme); 
        } else if (themedSpinnerAdapter instanceof ThemedSpinnerAdapter) {
          ThemedSpinnerAdapter themedSpinnerAdapter1 = (ThemedSpinnerAdapter)themedSpinnerAdapter;
          if (themedSpinnerAdapter1.getDropDownViewTheme() == null)
            themedSpinnerAdapter1.setDropDownViewTheme(param1Theme); 
        } 
      } 
    }
    
    public boolean areAllItemsEnabled() {
      ListAdapter listAdapter = this.mListAdapter;
      return (listAdapter != null) ? listAdapter.areAllItemsEnabled() : true;
    }
    
    public int getCount() {
      int i;
      SpinnerAdapter spinnerAdapter = this.mAdapter;
      if (spinnerAdapter == null) {
        i = 0;
      } else {
        i = spinnerAdapter.getCount();
      } 
      return i;
    }
    
    public View getDropDownView(int param1Int, View param1View, ViewGroup param1ViewGroup) {
      SpinnerAdapter spinnerAdapter = this.mAdapter;
      if (spinnerAdapter == null) {
        param1View = null;
      } else {
        param1View = spinnerAdapter.getDropDownView(param1Int, param1View, param1ViewGroup);
      } 
      return param1View;
    }
    
    public Object getItem(int param1Int) {
      Object object = this.mAdapter;
      if (object == null) {
        object = null;
      } else {
        object = object.getItem(param1Int);
      } 
      return object;
    }
    
    public long getItemId(int param1Int) {
      long l;
      SpinnerAdapter spinnerAdapter = this.mAdapter;
      if (spinnerAdapter == null) {
        l = -1L;
      } else {
        l = spinnerAdapter.getItemId(param1Int);
      } 
      return l;
    }
    
    public int getItemViewType(int param1Int) {
      return 0;
    }
    
    public View getView(int param1Int, View param1View, ViewGroup param1ViewGroup) {
      return getDropDownView(param1Int, param1View, param1ViewGroup);
    }
    
    public int getViewTypeCount() {
      return 1;
    }
    
    public boolean hasStableIds() {
      boolean bool;
      SpinnerAdapter spinnerAdapter = this.mAdapter;
      if (spinnerAdapter != null && spinnerAdapter.hasStableIds()) {
        bool = true;
      } else {
        bool = false;
      } 
      return bool;
    }
    
    public boolean isEmpty() {
      boolean bool;
      if (getCount() == 0) {
        bool = true;
      } else {
        bool = false;
      } 
      return bool;
    }
    
    public boolean isEnabled(int param1Int) {
      ListAdapter listAdapter = this.mListAdapter;
      return (listAdapter != null) ? listAdapter.isEnabled(param1Int) : true;
    }
    
    public void registerDataSetObserver(DataSetObserver param1DataSetObserver) {
      SpinnerAdapter spinnerAdapter = this.mAdapter;
      if (spinnerAdapter != null)
        spinnerAdapter.registerDataSetObserver(param1DataSetObserver); 
    }
    
    public void unregisterDataSetObserver(DataSetObserver param1DataSetObserver) {
      SpinnerAdapter spinnerAdapter = this.mAdapter;
      if (spinnerAdapter != null)
        spinnerAdapter.unregisterDataSetObserver(param1DataSetObserver); 
    }
  }
  
  class DropdownPopup extends ListPopupWindow implements SpinnerPopup {
    ListAdapter mAdapter;
    
    private CharSequence mHintText;
    
    private int mOriginalHorizontalOffset;
    
    private final Rect mVisibleRect = new Rect();
    
    public DropdownPopup(Context param1Context, AttributeSet param1AttributeSet, int param1Int) {
      super(param1Context, param1AttributeSet, param1Int);
      setAnchorView((View)AppCompatSpinner.this);
      setModal(true);
      setPromptPosition(0);
      setOnItemClickListener(new AdapterView.OnItemClickListener() {
            public void onItemClick(AdapterView<?> param2AdapterView, View param2View, int param2Int, long param2Long) {
              AppCompatSpinner.this.setSelection(param2Int);
              if (AppCompatSpinner.this.getOnItemClickListener() != null)
                AppCompatSpinner.this.performItemClick(param2View, param2Int, AppCompatSpinner.DropdownPopup.this.mAdapter.getItemId(param2Int)); 
              AppCompatSpinner.DropdownPopup.this.dismiss();
            }
          });
    }
    
    void computeContentWidth() {
      Drawable drawable = getBackground();
      int i = 0;
      if (drawable != null) {
        drawable.getPadding(AppCompatSpinner.this.mTempRect);
        if (ViewUtils.isLayoutRtl((View)AppCompatSpinner.this)) {
          i = AppCompatSpinner.this.mTempRect.right;
        } else {
          i = -AppCompatSpinner.this.mTempRect.left;
        } 
      } else {
        Rect rect = AppCompatSpinner.this.mTempRect;
        AppCompatSpinner.this.mTempRect.right = 0;
        rect.left = 0;
      } 
      int j = AppCompatSpinner.this.getPaddingLeft();
      int k = AppCompatSpinner.this.getPaddingRight();
      int m = AppCompatSpinner.this.getWidth();
      if (AppCompatSpinner.this.mDropDownWidth == -2) {
        int n = AppCompatSpinner.this.compatMeasureContentWidth((SpinnerAdapter)this.mAdapter, getBackground());
        int i1 = (AppCompatSpinner.this.getContext().getResources().getDisplayMetrics()).widthPixels - AppCompatSpinner.this.mTempRect.left - AppCompatSpinner.this.mTempRect.right;
        int i2 = n;
        if (n > i1)
          i2 = i1; 
        setContentWidth(Math.max(i2, m - j - k));
      } else if (AppCompatSpinner.this.mDropDownWidth == -1) {
        setContentWidth(m - j - k);
      } else {
        setContentWidth(AppCompatSpinner.this.mDropDownWidth);
      } 
      if (ViewUtils.isLayoutRtl((View)AppCompatSpinner.this)) {
        i += m - k - getWidth() - getHorizontalOriginalOffset();
      } else {
        i += j + getHorizontalOriginalOffset();
      } 
      setHorizontalOffset(i);
    }
    
    public CharSequence getHintText() {
      return this.mHintText;
    }
    
    public int getHorizontalOriginalOffset() {
      return this.mOriginalHorizontalOffset;
    }
    
    boolean isVisibleToUser(View param1View) {
      boolean bool;
      if (ViewCompat.isAttachedToWindow(param1View) && param1View.getGlobalVisibleRect(this.mVisibleRect)) {
        bool = true;
      } else {
        bool = false;
      } 
      return bool;
    }
    
    public void setAdapter(ListAdapter param1ListAdapter) {
      super.setAdapter(param1ListAdapter);
      this.mAdapter = param1ListAdapter;
    }
    
    public void setHorizontalOriginalOffset(int param1Int) {
      this.mOriginalHorizontalOffset = param1Int;
    }
    
    public void setPromptText(CharSequence param1CharSequence) {
      this.mHintText = param1CharSequence;
    }
    
    public void show(int param1Int1, int param1Int2) {
      boolean bool = isShowing();
      computeContentWidth();
      setInputMethodMode(2);
      show();
      ListView listView = getListView();
      listView.setChoiceMode(1);
      if (Build.VERSION.SDK_INT >= 17) {
        listView.setTextDirection(param1Int1);
        listView.setTextAlignment(param1Int2);
      } 
      setSelection(AppCompatSpinner.this.getSelectedItemPosition());
      if (bool)
        return; 
      ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
      if (viewTreeObserver != null) {
        final ViewTreeObserver.OnGlobalLayoutListener layoutListener = new ViewTreeObserver.OnGlobalLayoutListener() {
            public void onGlobalLayout() {
              AppCompatSpinner.DropdownPopup dropdownPopup = AppCompatSpinner.DropdownPopup.this;
              if (!dropdownPopup.isVisibleToUser((View)AppCompatSpinner.this)) {
                AppCompatSpinner.DropdownPopup.this.dismiss();
              } else {
                AppCompatSpinner.DropdownPopup.this.computeContentWidth();
                AppCompatSpinner.DropdownPopup.this.show();
              } 
            }
          };
        viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
        setOnDismissListener(new PopupWindow.OnDismissListener() {
              public void onDismiss() {
                ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
                if (viewTreeObserver != null)
                  viewTreeObserver.removeGlobalOnLayoutListener(layoutListener); 
              }
            });
      } 
    }
  }
  
  class null implements AdapterView.OnItemClickListener {
    public void onItemClick(AdapterView<?> param1AdapterView, View param1View, int param1Int, long param1Long) {
      AppCompatSpinner.this.setSelection(param1Int);
      if (AppCompatSpinner.this.getOnItemClickListener() != null)
        AppCompatSpinner.this.performItemClick(param1View, param1Int, this.this$1.mAdapter.getItemId(param1Int)); 
      this.this$1.dismiss();
    }
  }
  
  class null implements ViewTreeObserver.OnGlobalLayoutListener {
    public void onGlobalLayout() {
      AppCompatSpinner.DropdownPopup dropdownPopup = this.this$1;
      if (!dropdownPopup.isVisibleToUser((View)AppCompatSpinner.this)) {
        this.this$1.dismiss();
      } else {
        this.this$1.computeContentWidth();
        this.this$1.show();
      } 
    }
  }
  
  class null implements PopupWindow.OnDismissListener {
    public void onDismiss() {
      ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
      if (viewTreeObserver != null)
        viewTreeObserver.removeGlobalOnLayoutListener(layoutListener); 
    }
  }
  
  static class SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
        public AppCompatSpinner.SavedState createFromParcel(Parcel param2Parcel) {
          return new AppCompatSpinner.SavedState(param2Parcel);
        }
        
        public AppCompatSpinner.SavedState[] newArray(int param2Int) {
          return new AppCompatSpinner.SavedState[param2Int];
        }
      };
    
    boolean mShowDropdown;
    
    SavedState(Parcel param1Parcel) {
      super(param1Parcel);
      boolean bool;
      if (param1Parcel.readByte() != 0) {
        bool = true;
      } else {
        bool = false;
      } 
      this.mShowDropdown = bool;
    }
    
    SavedState(Parcelable param1Parcelable) {
      super(param1Parcelable);
    }
    
    public void writeToParcel(Parcel param1Parcel, int param1Int) {
      super.writeToParcel(param1Parcel, param1Int);
      param1Parcel.writeByte((byte)this.mShowDropdown);
    }
  }
  
  class null implements Parcelable.Creator<SavedState> {
    public AppCompatSpinner.SavedState createFromParcel(Parcel param1Parcel) {
      return new AppCompatSpinner.SavedState(param1Parcel);
    }
    
    public AppCompatSpinner.SavedState[] newArray(int param1Int) {
      return new AppCompatSpinner.SavedState[param1Int];
    }
  }
  
  static interface SpinnerPopup {
    void dismiss();
    
    Drawable getBackground();
    
    CharSequence getHintText();
    
    int getHorizontalOffset();
    
    int getHorizontalOriginalOffset();
    
    int getVerticalOffset();
    
    boolean isShowing();
    
    void setAdapter(ListAdapter param1ListAdapter);
    
    void setBackgroundDrawable(Drawable param1Drawable);
    
    void setHorizontalOffset(int param1Int);
    
    void setHorizontalOriginalOffset(int param1Int);
    
    void setPromptText(CharSequence param1CharSequence);
    
    void setVerticalOffset(int param1Int);
    
    void show(int param1Int1, int param1Int2);
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/appcompat/widget/AppCompatSpinner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */