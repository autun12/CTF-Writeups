package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.AutoSizeableTextView;
import androidx.core.widget.TextViewCompat;
import java.lang.ref.WeakReference;
import java.util.Locale;

class AppCompatTextHelper {
  private static final int MONOSPACE = 3;
  
  private static final int SANS = 1;
  
  private static final int SERIF = 2;
  
  private static final int TEXT_FONT_WEIGHT_UNSPECIFIED = -1;
  
  private boolean mAsyncFontPending;
  
  private final AppCompatTextViewAutoSizeHelper mAutoSizeTextHelper;
  
  private TintInfo mDrawableBottomTint;
  
  private TintInfo mDrawableEndTint;
  
  private TintInfo mDrawableLeftTint;
  
  private TintInfo mDrawableRightTint;
  
  private TintInfo mDrawableStartTint;
  
  private TintInfo mDrawableTint;
  
  private TintInfo mDrawableTopTint;
  
  private Typeface mFontTypeface;
  
  private int mFontWeight = -1;
  
  private int mStyle = 0;
  
  private final TextView mView;
  
  AppCompatTextHelper(TextView paramTextView) {
    this.mView = paramTextView;
    this.mAutoSizeTextHelper = new AppCompatTextViewAutoSizeHelper(this.mView);
  }
  
  private void applyCompoundDrawableTint(Drawable paramDrawable, TintInfo paramTintInfo) {
    if (paramDrawable != null && paramTintInfo != null)
      AppCompatDrawableManager.tintDrawable(paramDrawable, paramTintInfo, this.mView.getDrawableState()); 
  }
  
  private static TintInfo createTintInfo(Context paramContext, AppCompatDrawableManager paramAppCompatDrawableManager, int paramInt) {
    ColorStateList colorStateList = paramAppCompatDrawableManager.getTintList(paramContext, paramInt);
    if (colorStateList != null) {
      TintInfo tintInfo = new TintInfo();
      tintInfo.mHasTintList = true;
      tintInfo.mTintList = colorStateList;
      return tintInfo;
    } 
    return null;
  }
  
  private void setCompoundDrawables(Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4, Drawable paramDrawable5, Drawable paramDrawable6) {
    TextView textView;
    Drawable[] arrayOfDrawable;
    if (Build.VERSION.SDK_INT >= 17 && (paramDrawable5 != null || paramDrawable6 != null)) {
      arrayOfDrawable = this.mView.getCompoundDrawablesRelative();
      textView = this.mView;
      if (paramDrawable5 == null)
        paramDrawable5 = arrayOfDrawable[0]; 
      if (paramDrawable2 == null)
        paramDrawable2 = arrayOfDrawable[1]; 
      if (paramDrawable6 == null)
        paramDrawable6 = arrayOfDrawable[2]; 
      if (paramDrawable4 == null)
        paramDrawable4 = arrayOfDrawable[3]; 
      textView.setCompoundDrawablesRelativeWithIntrinsicBounds(paramDrawable5, paramDrawable2, paramDrawable6, paramDrawable4);
    } else if (textView != null || paramDrawable2 != null || arrayOfDrawable != null || paramDrawable4 != null) {
      Drawable drawable1;
      Drawable drawable2;
      if (Build.VERSION.SDK_INT >= 17) {
        Drawable[] arrayOfDrawable2 = this.mView.getCompoundDrawablesRelative();
        if (arrayOfDrawable2[0] != null || arrayOfDrawable2[2] != null) {
          textView = this.mView;
          drawable2 = arrayOfDrawable2[0];
          if (paramDrawable2 == null)
            paramDrawable2 = arrayOfDrawable2[1]; 
          paramDrawable6 = arrayOfDrawable2[2];
          if (paramDrawable4 == null)
            paramDrawable4 = arrayOfDrawable2[3]; 
          textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable2, paramDrawable2, paramDrawable6, paramDrawable4);
          return;
        } 
      } 
      Drawable[] arrayOfDrawable1 = this.mView.getCompoundDrawables();
      TextView textView1 = this.mView;
      if (textView == null)
        drawable1 = arrayOfDrawable1[0]; 
      if (paramDrawable2 == null)
        paramDrawable2 = arrayOfDrawable1[1]; 
      if (drawable2 == null)
        drawable2 = arrayOfDrawable1[2]; 
      if (paramDrawable4 == null)
        paramDrawable4 = arrayOfDrawable1[3]; 
      textView1.setCompoundDrawablesWithIntrinsicBounds(drawable1, paramDrawable2, drawable2, paramDrawable4);
    } 
  }
  
  private void setCompoundTints() {
    TintInfo tintInfo = this.mDrawableTint;
    this.mDrawableLeftTint = tintInfo;
    this.mDrawableTopTint = tintInfo;
    this.mDrawableRightTint = tintInfo;
    this.mDrawableBottomTint = tintInfo;
    this.mDrawableStartTint = tintInfo;
    this.mDrawableEndTint = tintInfo;
  }
  
  private void setTextSizeInternal(int paramInt, float paramFloat) {
    this.mAutoSizeTextHelper.setTextSizeInternal(paramInt, paramFloat);
  }
  
  private void updateTypefaceAndStyle(Context paramContext, TintTypedArray paramTintTypedArray) {
    this.mStyle = paramTintTypedArray.getInt(R.styleable.TextAppearance_android_textStyle, this.mStyle);
    int i = Build.VERSION.SDK_INT;
    boolean bool = false;
    if (i >= 28) {
      this.mFontWeight = paramTintTypedArray.getInt(R.styleable.TextAppearance_android_textFontWeight, -1);
      if (this.mFontWeight != -1)
        this.mStyle = this.mStyle & 0x2 | 0x0; 
    } 
    if (paramTintTypedArray.hasValue(R.styleable.TextAppearance_android_fontFamily) || paramTintTypedArray.hasValue(R.styleable.TextAppearance_fontFamily)) {
      this.mFontTypeface = null;
      if (paramTintTypedArray.hasValue(R.styleable.TextAppearance_fontFamily)) {
        i = R.styleable.TextAppearance_fontFamily;
      } else {
        i = R.styleable.TextAppearance_android_fontFamily;
      } 
      final int fontWeight = this.mFontWeight;
      final int style = this.mStyle;
      if (!paramContext.isRestricted()) {
        ResourcesCompat.FontCallback fontCallback = new ResourcesCompat.FontCallback() {
            public void onFontRetrievalFailed(int param1Int) {}
            
            public void onFontRetrieved(Typeface param1Typeface) {
              Typeface typeface = param1Typeface;
              if (Build.VERSION.SDK_INT >= 28) {
                int i = fontWeight;
                typeface = param1Typeface;
                if (i != -1) {
                  boolean bool;
                  if ((style & 0x2) != 0) {
                    bool = true;
                  } else {
                    bool = false;
                  } 
                  typeface = Typeface.create(param1Typeface, i, bool);
                } 
              } 
              AppCompatTextHelper.this.onAsyncTypefaceReceived(textViewWeak, typeface);
            }
          };
        try {
          boolean bool1;
          Typeface typeface = paramTintTypedArray.getFont(i, this.mStyle, fontCallback);
          if (typeface != null)
            if (Build.VERSION.SDK_INT >= 28 && this.mFontWeight != -1) {
              typeface = Typeface.create(typeface, 0);
              k = this.mFontWeight;
              if ((this.mStyle & 0x2) != 0) {
                bool1 = true;
              } else {
                bool1 = false;
              } 
              this.mFontTypeface = Typeface.create(typeface, k, bool1);
            } else {
              this.mFontTypeface = typeface;
            }  
          if (this.mFontTypeface == null) {
            bool1 = true;
          } else {
            bool1 = false;
          } 
          this.mAsyncFontPending = bool1;
        } catch (UnsupportedOperationException|android.content.res.Resources.NotFoundException unsupportedOperationException) {}
      } 
      if (this.mFontTypeface == null) {
        String str = paramTintTypedArray.getString(i);
        if (str != null) {
          Typeface typeface;
          if (Build.VERSION.SDK_INT >= 28 && this.mFontWeight != -1) {
            typeface = Typeface.create(str, 0);
            i = this.mFontWeight;
            boolean bool1 = bool;
            if ((this.mStyle & 0x2) != 0)
              bool1 = true; 
            this.mFontTypeface = Typeface.create(typeface, i, bool1);
          } else {
            this.mFontTypeface = Typeface.create((String)typeface, this.mStyle);
          } 
        } 
      } 
      return;
    } 
    if (paramTintTypedArray.hasValue(R.styleable.TextAppearance_android_typeface)) {
      this.mAsyncFontPending = false;
      i = paramTintTypedArray.getInt(R.styleable.TextAppearance_android_typeface, 1);
      if (i != 1) {
        if (i != 2) {
          if (i == 3)
            this.mFontTypeface = Typeface.MONOSPACE; 
        } else {
          this.mFontTypeface = Typeface.SERIF;
        } 
      } else {
        this.mFontTypeface = Typeface.SANS_SERIF;
      } 
    } 
  }
  
  void applyCompoundDrawablesTints() {
    if (this.mDrawableLeftTint != null || this.mDrawableTopTint != null || this.mDrawableRightTint != null || this.mDrawableBottomTint != null) {
      Drawable[] arrayOfDrawable = this.mView.getCompoundDrawables();
      applyCompoundDrawableTint(arrayOfDrawable[0], this.mDrawableLeftTint);
      applyCompoundDrawableTint(arrayOfDrawable[1], this.mDrawableTopTint);
      applyCompoundDrawableTint(arrayOfDrawable[2], this.mDrawableRightTint);
      applyCompoundDrawableTint(arrayOfDrawable[3], this.mDrawableBottomTint);
    } 
    if (Build.VERSION.SDK_INT >= 17 && (this.mDrawableStartTint != null || this.mDrawableEndTint != null)) {
      Drawable[] arrayOfDrawable = this.mView.getCompoundDrawablesRelative();
      applyCompoundDrawableTint(arrayOfDrawable[0], this.mDrawableStartTint);
      applyCompoundDrawableTint(arrayOfDrawable[2], this.mDrawableEndTint);
    } 
  }
  
  void autoSizeText() {
    this.mAutoSizeTextHelper.autoSizeText();
  }
  
  int getAutoSizeMaxTextSize() {
    return this.mAutoSizeTextHelper.getAutoSizeMaxTextSize();
  }
  
  int getAutoSizeMinTextSize() {
    return this.mAutoSizeTextHelper.getAutoSizeMinTextSize();
  }
  
  int getAutoSizeStepGranularity() {
    return this.mAutoSizeTextHelper.getAutoSizeStepGranularity();
  }
  
  int[] getAutoSizeTextAvailableSizes() {
    return this.mAutoSizeTextHelper.getAutoSizeTextAvailableSizes();
  }
  
  int getAutoSizeTextType() {
    return this.mAutoSizeTextHelper.getAutoSizeTextType();
  }
  
  ColorStateList getCompoundDrawableTintList() {
    TintInfo tintInfo = this.mDrawableTint;
    if (tintInfo != null) {
      ColorStateList colorStateList = tintInfo.mTintList;
    } else {
      tintInfo = null;
    } 
    return (ColorStateList)tintInfo;
  }
  
  PorterDuff.Mode getCompoundDrawableTintMode() {
    TintInfo tintInfo = this.mDrawableTint;
    if (tintInfo != null) {
      PorterDuff.Mode mode = tintInfo.mTintMode;
    } else {
      tintInfo = null;
    } 
    return (PorterDuff.Mode)tintInfo;
  }
  
  boolean isAutoSizeEnabled() {
    return this.mAutoSizeTextHelper.isAutoSizeEnabled();
  }
  
  void loadFromAttributes(AttributeSet paramAttributeSet, int paramInt) {
    String str1;
    ColorStateList colorStateList1;
    boolean bool2;
    ColorStateList colorStateList2;
    TextView textView2;
    String str2;
    ColorStateList colorStateList3;
    Context context = this.mView.getContext();
    AppCompatDrawableManager appCompatDrawableManager = AppCompatDrawableManager.get();
    TintTypedArray tintTypedArray1 = TintTypedArray.obtainStyledAttributes(context, paramAttributeSet, R.styleable.AppCompatTextHelper, paramInt, 0);
    TextView textView1 = this.mView;
    ViewCompat.saveAttributeDataForStyleable((View)textView1, textView1.getContext(), R.styleable.AppCompatTextHelper, paramAttributeSet, tintTypedArray1.getWrappedTypeArray(), paramInt, 0);
    int i = tintTypedArray1.getResourceId(R.styleable.AppCompatTextHelper_android_textAppearance, -1);
    if (tintTypedArray1.hasValue(R.styleable.AppCompatTextHelper_android_drawableLeft))
      this.mDrawableLeftTint = createTintInfo(context, appCompatDrawableManager, tintTypedArray1.getResourceId(R.styleable.AppCompatTextHelper_android_drawableLeft, 0)); 
    if (tintTypedArray1.hasValue(R.styleable.AppCompatTextHelper_android_drawableTop))
      this.mDrawableTopTint = createTintInfo(context, appCompatDrawableManager, tintTypedArray1.getResourceId(R.styleable.AppCompatTextHelper_android_drawableTop, 0)); 
    if (tintTypedArray1.hasValue(R.styleable.AppCompatTextHelper_android_drawableRight))
      this.mDrawableRightTint = createTintInfo(context, appCompatDrawableManager, tintTypedArray1.getResourceId(R.styleable.AppCompatTextHelper_android_drawableRight, 0)); 
    if (tintTypedArray1.hasValue(R.styleable.AppCompatTextHelper_android_drawableBottom))
      this.mDrawableBottomTint = createTintInfo(context, appCompatDrawableManager, tintTypedArray1.getResourceId(R.styleable.AppCompatTextHelper_android_drawableBottom, 0)); 
    if (Build.VERSION.SDK_INT >= 17) {
      if (tintTypedArray1.hasValue(R.styleable.AppCompatTextHelper_android_drawableStart))
        this.mDrawableStartTint = createTintInfo(context, appCompatDrawableManager, tintTypedArray1.getResourceId(R.styleable.AppCompatTextHelper_android_drawableStart, 0)); 
      if (tintTypedArray1.hasValue(R.styleable.AppCompatTextHelper_android_drawableEnd))
        this.mDrawableEndTint = createTintInfo(context, appCompatDrawableManager, tintTypedArray1.getResourceId(R.styleable.AppCompatTextHelper_android_drawableEnd, 0)); 
    } 
    tintTypedArray1.recycle();
    boolean bool1 = this.mView.getTransformationMethod() instanceof android.text.method.PasswordTransformationMethod;
    if (i != -1) {
      TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(context, i, R.styleable.TextAppearance);
      if (!bool1 && tintTypedArray.hasValue(R.styleable.TextAppearance_textAllCaps)) {
        bool2 = tintTypedArray.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
        i = 1;
      } else {
        i = 0;
        bool2 = false;
      } 
      updateTypefaceAndStyle(context, tintTypedArray);
      if (Build.VERSION.SDK_INT < 23) {
        TextView textView;
        TintTypedArray tintTypedArray5;
        if (tintTypedArray.hasValue(R.styleable.TextAppearance_android_textColor)) {
          ColorStateList colorStateList = tintTypedArray.getColorStateList(R.styleable.TextAppearance_android_textColor);
        } else {
          textView1 = null;
        } 
        if (tintTypedArray.hasValue(R.styleable.TextAppearance_android_textColorHint)) {
          ColorStateList colorStateList = tintTypedArray.getColorStateList(R.styleable.TextAppearance_android_textColorHint);
        } else {
          tintTypedArray1 = null;
        } 
        if (tintTypedArray.hasValue(R.styleable.TextAppearance_android_textColorLink)) {
          colorStateList2 = tintTypedArray.getColorStateList(R.styleable.TextAppearance_android_textColorLink);
          textView2 = textView1;
          tintTypedArray5 = tintTypedArray1;
          textView = textView2;
        } else {
          textView2 = (TextView)tintTypedArray5;
          TextView textView4 = textView;
          TintTypedArray tintTypedArray6 = (TintTypedArray)textView2;
          colorStateList2 = null;
        } 
      } else {
        textView1 = null;
        tintTypedArray1 = null;
        colorStateList2 = null;
      } 
      if (tintTypedArray.hasValue(R.styleable.TextAppearance_textLocale)) {
        str2 = tintTypedArray.getString(R.styleable.TextAppearance_textLocale);
      } else {
        str2 = null;
      } 
      if (Build.VERSION.SDK_INT >= 26 && tintTypedArray.hasValue(R.styleable.TextAppearance_fontVariationSettings)) {
        textView2 = (TextView)tintTypedArray.getString(R.styleable.TextAppearance_fontVariationSettings);
      } else {
        textView2 = null;
      } 
      tintTypedArray.recycle();
    } else {
      textView1 = null;
      textView2 = null;
      i = 0;
      bool2 = false;
      tintTypedArray1 = null;
      str2 = null;
      colorStateList2 = null;
    } 
    TintTypedArray tintTypedArray4 = TintTypedArray.obtainStyledAttributes(context, paramAttributeSet, R.styleable.TextAppearance, paramInt, 0);
    if (!bool1 && tintTypedArray4.hasValue(R.styleable.TextAppearance_textAllCaps)) {
      bool2 = tintTypedArray4.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
      i = 1;
    } 
    TextView textView3 = textView1;
    TintTypedArray tintTypedArray3 = tintTypedArray1;
    ColorStateList colorStateList4 = colorStateList2;
    if (Build.VERSION.SDK_INT < 23) {
      ColorStateList colorStateList5;
      ColorStateList colorStateList6;
      if (tintTypedArray4.hasValue(R.styleable.TextAppearance_android_textColor))
        colorStateList5 = tintTypedArray4.getColorStateList(R.styleable.TextAppearance_android_textColor); 
      if (tintTypedArray4.hasValue(R.styleable.TextAppearance_android_textColorHint))
        colorStateList6 = tintTypedArray4.getColorStateList(R.styleable.TextAppearance_android_textColorHint); 
      colorStateList3 = colorStateList6;
      colorStateList1 = colorStateList5;
      colorStateList4 = colorStateList2;
      if (tintTypedArray4.hasValue(R.styleable.TextAppearance_android_textColorLink)) {
        colorStateList4 = tintTypedArray4.getColorStateList(R.styleable.TextAppearance_android_textColorLink);
        colorStateList1 = colorStateList5;
        colorStateList3 = colorStateList6;
      } 
    } 
    if (tintTypedArray4.hasValue(R.styleable.TextAppearance_textLocale))
      str2 = tintTypedArray4.getString(R.styleable.TextAppearance_textLocale); 
    textView1 = textView2;
    if (Build.VERSION.SDK_INT >= 26) {
      textView1 = textView2;
      if (tintTypedArray4.hasValue(R.styleable.TextAppearance_fontVariationSettings))
        str1 = tintTypedArray4.getString(R.styleable.TextAppearance_fontVariationSettings); 
    } 
    if (Build.VERSION.SDK_INT >= 28 && tintTypedArray4.hasValue(R.styleable.TextAppearance_android_textSize) && tintTypedArray4.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, -1) == 0)
      this.mView.setTextSize(0, 0.0F); 
    updateTypefaceAndStyle(context, tintTypedArray4);
    tintTypedArray4.recycle();
    if (colorStateList1 != null)
      this.mView.setTextColor(colorStateList1); 
    if (colorStateList3 != null)
      this.mView.setHintTextColor(colorStateList3); 
    if (colorStateList4 != null)
      this.mView.setLinkTextColor(colorStateList4); 
    if (!bool1 && i != 0)
      setAllCaps(bool2); 
    Typeface typeface = this.mFontTypeface;
    if (typeface != null)
      if (this.mFontWeight == -1) {
        this.mView.setTypeface(typeface, this.mStyle);
      } else {
        this.mView.setTypeface(typeface);
      }  
    if (str1 != null)
      this.mView.setFontVariationSettings(str1); 
    if (str2 != null)
      if (Build.VERSION.SDK_INT >= 24) {
        this.mView.setTextLocales(LocaleList.forLanguageTags(str2));
      } else if (Build.VERSION.SDK_INT >= 21) {
        str1 = str2.substring(0, str2.indexOf(','));
        this.mView.setTextLocale(Locale.forLanguageTag(str1));
      }  
    this.mAutoSizeTextHelper.loadFromAttributes(paramAttributeSet, paramInt);
    if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE && this.mAutoSizeTextHelper.getAutoSizeTextType() != 0) {
      int[] arrayOfInt = this.mAutoSizeTextHelper.getAutoSizeTextAvailableSizes();
      if (arrayOfInt.length > 0)
        if (this.mView.getAutoSizeStepGranularity() != -1.0F) {
          this.mView.setAutoSizeTextTypeUniformWithConfiguration(this.mAutoSizeTextHelper.getAutoSizeMinTextSize(), this.mAutoSizeTextHelper.getAutoSizeMaxTextSize(), this.mAutoSizeTextHelper.getAutoSizeStepGranularity(), 0);
        } else {
          this.mView.setAutoSizeTextTypeUniformWithPresetSizes(arrayOfInt, 0);
        }  
    } 
    TintTypedArray tintTypedArray2 = TintTypedArray.obtainStyledAttributes(context, paramAttributeSet, R.styleable.AppCompatTextView);
    paramInt = tintTypedArray2.getResourceId(R.styleable.AppCompatTextView_drawableLeftCompat, -1);
    if (paramInt != -1) {
      Drawable drawable = appCompatDrawableManager.getDrawable(context, paramInt);
    } else {
      paramAttributeSet = null;
    } 
    paramInt = tintTypedArray2.getResourceId(R.styleable.AppCompatTextView_drawableTopCompat, -1);
    if (paramInt != -1) {
      Drawable drawable = appCompatDrawableManager.getDrawable(context, paramInt);
    } else {
      str1 = null;
    } 
    paramInt = tintTypedArray2.getResourceId(R.styleable.AppCompatTextView_drawableRightCompat, -1);
    if (paramInt != -1) {
      Drawable drawable = appCompatDrawableManager.getDrawable(context, paramInt);
    } else {
      typeface = null;
    } 
    paramInt = tintTypedArray2.getResourceId(R.styleable.AppCompatTextView_drawableBottomCompat, -1);
    if (paramInt != -1) {
      Drawable drawable = appCompatDrawableManager.getDrawable(context, paramInt);
    } else {
      textView2 = null;
    } 
    paramInt = tintTypedArray2.getResourceId(R.styleable.AppCompatTextView_drawableStartCompat, -1);
    if (paramInt != -1) {
      Drawable drawable = appCompatDrawableManager.getDrawable(context, paramInt);
    } else {
      str2 = null;
    } 
    paramInt = tintTypedArray2.getResourceId(R.styleable.AppCompatTextView_drawableEndCompat, -1);
    if (paramInt != -1) {
      Drawable drawable = appCompatDrawableManager.getDrawable(context, paramInt);
    } else {
      colorStateList2 = null;
    } 
    setCompoundDrawables((Drawable)paramAttributeSet, (Drawable)str1, (Drawable)typeface, (Drawable)textView2, (Drawable)str2, (Drawable)colorStateList2);
    if (tintTypedArray2.hasValue(R.styleable.AppCompatTextView_drawableTint)) {
      ColorStateList colorStateList = tintTypedArray2.getColorStateList(R.styleable.AppCompatTextView_drawableTint);
      TextViewCompat.setCompoundDrawableTintList(this.mView, colorStateList);
    } 
    if (tintTypedArray2.hasValue(R.styleable.AppCompatTextView_drawableTintMode)) {
      PorterDuff.Mode mode = DrawableUtils.parseTintMode(tintTypedArray2.getInt(R.styleable.AppCompatTextView_drawableTintMode, -1), null);
      TextViewCompat.setCompoundDrawableTintMode(this.mView, mode);
    } 
    i = tintTypedArray2.getDimensionPixelSize(R.styleable.AppCompatTextView_firstBaselineToTopHeight, -1);
    int j = tintTypedArray2.getDimensionPixelSize(R.styleable.AppCompatTextView_lastBaselineToBottomHeight, -1);
    paramInt = tintTypedArray2.getDimensionPixelSize(R.styleable.AppCompatTextView_lineHeight, -1);
    tintTypedArray2.recycle();
    if (i != -1)
      TextViewCompat.setFirstBaselineToTopHeight(this.mView, i); 
    if (j != -1)
      TextViewCompat.setLastBaselineToBottomHeight(this.mView, j); 
    if (paramInt != -1)
      TextViewCompat.setLineHeight(this.mView, paramInt); 
  }
  
  void onAsyncTypefaceReceived(WeakReference<TextView> paramWeakReference, Typeface paramTypeface) {
    if (this.mAsyncFontPending) {
      this.mFontTypeface = paramTypeface;
      TextView textView = paramWeakReference.get();
      if (textView != null)
        textView.setTypeface(paramTypeface, this.mStyle); 
    } 
  }
  
  void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (!AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE)
      autoSizeText(); 
  }
  
  void onSetCompoundDrawables() {
    applyCompoundDrawablesTints();
  }
  
  void onSetTextAppearance(Context paramContext, int paramInt) {
    TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(paramContext, paramInt, R.styleable.TextAppearance);
    if (tintTypedArray.hasValue(R.styleable.TextAppearance_textAllCaps))
      setAllCaps(tintTypedArray.getBoolean(R.styleable.TextAppearance_textAllCaps, false)); 
    if (Build.VERSION.SDK_INT < 23 && tintTypedArray.hasValue(R.styleable.TextAppearance_android_textColor)) {
      ColorStateList colorStateList = tintTypedArray.getColorStateList(R.styleable.TextAppearance_android_textColor);
      if (colorStateList != null)
        this.mView.setTextColor(colorStateList); 
    } 
    if (tintTypedArray.hasValue(R.styleable.TextAppearance_android_textSize) && tintTypedArray.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, -1) == 0)
      this.mView.setTextSize(0, 0.0F); 
    updateTypefaceAndStyle(paramContext, tintTypedArray);
    if (Build.VERSION.SDK_INT >= 26 && tintTypedArray.hasValue(R.styleable.TextAppearance_fontVariationSettings)) {
      String str = tintTypedArray.getString(R.styleable.TextAppearance_fontVariationSettings);
      if (str != null)
        this.mView.setFontVariationSettings(str); 
    } 
    tintTypedArray.recycle();
    Typeface typeface = this.mFontTypeface;
    if (typeface != null)
      this.mView.setTypeface(typeface, this.mStyle); 
  }
  
  void setAllCaps(boolean paramBoolean) {
    this.mView.setAllCaps(paramBoolean);
  }
  
  void setAutoSizeTextTypeUniformWithConfiguration(int paramInt1, int paramInt2, int paramInt3, int paramInt4) throws IllegalArgumentException {
    this.mAutoSizeTextHelper.setAutoSizeTextTypeUniformWithConfiguration(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  void setAutoSizeTextTypeUniformWithPresetSizes(int[] paramArrayOfint, int paramInt) throws IllegalArgumentException {
    this.mAutoSizeTextHelper.setAutoSizeTextTypeUniformWithPresetSizes(paramArrayOfint, paramInt);
  }
  
  void setAutoSizeTextTypeWithDefaults(int paramInt) {
    this.mAutoSizeTextHelper.setAutoSizeTextTypeWithDefaults(paramInt);
  }
  
  void setCompoundDrawableTintList(ColorStateList paramColorStateList) {
    boolean bool;
    if (this.mDrawableTint == null)
      this.mDrawableTint = new TintInfo(); 
    TintInfo tintInfo = this.mDrawableTint;
    tintInfo.mTintList = paramColorStateList;
    if (paramColorStateList != null) {
      bool = true;
    } else {
      bool = false;
    } 
    tintInfo.mHasTintList = bool;
    setCompoundTints();
  }
  
  void setCompoundDrawableTintMode(PorterDuff.Mode paramMode) {
    boolean bool;
    if (this.mDrawableTint == null)
      this.mDrawableTint = new TintInfo(); 
    TintInfo tintInfo = this.mDrawableTint;
    tintInfo.mTintMode = paramMode;
    if (paramMode != null) {
      bool = true;
    } else {
      bool = false;
    } 
    tintInfo.mHasTintMode = bool;
    setCompoundTints();
  }
  
  void setTextSize(int paramInt, float paramFloat) {
    if (!AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE && !isAutoSizeEnabled())
      setTextSizeInternal(paramInt, paramFloat); 
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/appcompat/widget/AppCompatTextHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */