package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R;

public class Layer extends ConstraintHelper {
  private static final String TAG = "Layer";
  
  private boolean mApplyElevationOnAttach;
  
  private boolean mApplyVisibilityOnAttach;
  
  protected float mComputedCenterX = Float.NaN;
  
  protected float mComputedCenterY = Float.NaN;
  
  protected float mComputedMaxX = Float.NaN;
  
  protected float mComputedMaxY = Float.NaN;
  
  protected float mComputedMinX = Float.NaN;
  
  protected float mComputedMinY = Float.NaN;
  
  ConstraintLayout mContainer;
  
  private float mGroupRotateAngle = Float.NaN;
  
  boolean mNeedBounds = true;
  
  private float mRotationCenterX = Float.NaN;
  
  private float mRotationCenterY = Float.NaN;
  
  private float mScaleX = 1.0F;
  
  private float mScaleY = 1.0F;
  
  private float mShiftX = 0.0F;
  
  private float mShiftY = 0.0F;
  
  View[] mViews = null;
  
  public Layer(Context paramContext) {
    super(paramContext);
  }
  
  public Layer(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public Layer(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void reCacheViews() {
    if (this.mContainer == null)
      return; 
    if (this.mCount == 0)
      return; 
    View[] arrayOfView = this.mViews;
    if (arrayOfView == null || arrayOfView.length != this.mCount)
      this.mViews = new View[this.mCount]; 
    for (byte b = 0; b < this.mCount; b++) {
      int i = this.mIds[b];
      this.mViews[b] = this.mContainer.getViewById(i);
    } 
  }
  
  private void transform() {
    if (this.mContainer == null)
      return; 
    if (this.mViews == null)
      reCacheViews(); 
    calcCenters();
    double d = Math.toRadians(this.mGroupRotateAngle);
    float f1 = (float)Math.sin(d);
    float f2 = (float)Math.cos(d);
    float f3 = this.mScaleX;
    float f4 = this.mScaleY;
    float f5 = -f4;
    for (byte b = 0; b < this.mCount; b++) {
      View view = this.mViews[b];
      int i = (view.getLeft() + view.getRight()) / 2;
      int j = (view.getTop() + view.getBottom()) / 2;
      float f6 = i - this.mComputedCenterX;
      float f7 = j - this.mComputedCenterY;
      float f8 = this.mShiftX;
      float f9 = this.mShiftY;
      view.setTranslationX(f3 * f2 * f6 + f5 * f1 * f7 - f6 + f8);
      view.setTranslationY(f6 * f3 * f1 + f4 * f2 * f7 - f7 + f9);
      view.setScaleY(this.mScaleY);
      view.setScaleX(this.mScaleX);
      view.setRotation(this.mGroupRotateAngle);
    } 
  }
  
  protected void calcCenters() {
    if (this.mContainer == null)
      return; 
    if (!this.mNeedBounds && !Float.isNaN(this.mComputedCenterX) && !Float.isNaN(this.mComputedCenterY))
      return; 
    if (Float.isNaN(this.mRotationCenterX) || Float.isNaN(this.mRotationCenterY)) {
      View[] arrayOfView = getViews(this.mContainer);
      byte b = 0;
      int i = arrayOfView[0].getLeft();
      int j = arrayOfView[0].getTop();
      int k = arrayOfView[0].getRight();
      int m = arrayOfView[0].getBottom();
      while (b < this.mCount) {
        View view = arrayOfView[b];
        i = Math.min(i, view.getLeft());
        j = Math.min(j, view.getTop());
        k = Math.max(k, view.getRight());
        m = Math.max(m, view.getBottom());
        b++;
      } 
      this.mComputedMaxX = k;
      this.mComputedMaxY = m;
      this.mComputedMinX = i;
      this.mComputedMinY = j;
      if (Float.isNaN(this.mRotationCenterX)) {
        this.mComputedCenterX = ((i + k) / 2);
      } else {
        this.mComputedCenterX = this.mRotationCenterX;
      } 
      if (Float.isNaN(this.mRotationCenterY)) {
        this.mComputedCenterY = ((j + m) / 2);
      } else {
        this.mComputedCenterY = this.mRotationCenterY;
      } 
      return;
    } 
    this.mComputedCenterY = this.mRotationCenterY;
    this.mComputedCenterX = this.mRotationCenterX;
  }
  
  protected void init(AttributeSet paramAttributeSet) {
    super.init(paramAttributeSet);
    byte b = 0;
    this.mUseViewMeasure = false;
    if (paramAttributeSet != null) {
      TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, R.styleable.ConstraintLayout_Layout);
      int i = typedArray.getIndexCount();
      while (b < i) {
        int j = typedArray.getIndex(b);
        if (j == R.styleable.ConstraintLayout_Layout_android_visibility) {
          this.mApplyVisibilityOnAttach = true;
        } else if (j == R.styleable.ConstraintLayout_Layout_android_elevation) {
          this.mApplyElevationOnAttach = true;
        } 
        b++;
      } 
    } 
  }
  
  protected void onAttachedToWindow() {
    super.onAttachedToWindow();
    this.mContainer = (ConstraintLayout)getParent();
    if (this.mApplyVisibilityOnAttach || this.mApplyElevationOnAttach) {
      float f;
      int i = getVisibility();
      if (Build.VERSION.SDK_INT >= 21) {
        f = getElevation();
      } else {
        f = 0.0F;
      } 
      for (byte b = 0; b < this.mCount; b++) {
        int j = this.mIds[b];
        View view = this.mContainer.getViewById(j);
        if (view != null) {
          if (this.mApplyVisibilityOnAttach)
            view.setVisibility(i); 
          if (this.mApplyElevationOnAttach && f > 0.0F && Build.VERSION.SDK_INT >= 21)
            view.setTranslationZ(view.getTranslationZ() + f); 
        } 
      } 
    } 
  }
  
  public void setElevation(float paramFloat) {
    super.setElevation(paramFloat);
    applyLayoutFeatures();
  }
  
  public void setPivotX(float paramFloat) {
    this.mRotationCenterX = paramFloat;
    transform();
  }
  
  public void setPivotY(float paramFloat) {
    this.mRotationCenterY = paramFloat;
    transform();
  }
  
  public void setRotation(float paramFloat) {
    this.mGroupRotateAngle = paramFloat;
    transform();
  }
  
  public void setScaleX(float paramFloat) {
    this.mScaleX = paramFloat;
    transform();
  }
  
  public void setScaleY(float paramFloat) {
    this.mScaleY = paramFloat;
    transform();
  }
  
  public void setTranslationX(float paramFloat) {
    this.mShiftX = paramFloat;
    transform();
  }
  
  public void setTranslationY(float paramFloat) {
    this.mShiftY = paramFloat;
    transform();
  }
  
  public void setVisibility(int paramInt) {
    super.setVisibility(paramInt);
    applyLayoutFeatures();
  }
  
  public void updatePostLayout(ConstraintLayout paramConstraintLayout) {
    reCacheViews();
    this.mComputedCenterX = Float.NaN;
    this.mComputedCenterY = Float.NaN;
    ConstraintWidget constraintWidget = ((ConstraintLayout.LayoutParams)getLayoutParams()).getConstraintWidget();
    constraintWidget.setWidth(0);
    constraintWidget.setHeight(0);
    calcCenters();
    layout((int)this.mComputedMinX - getPaddingLeft(), (int)this.mComputedMinY - getPaddingTop(), (int)this.mComputedMaxX + getPaddingRight(), (int)this.mComputedMaxY + getPaddingBottom());
    if (!Float.isNaN(this.mGroupRotateAngle))
      transform(); 
  }
  
  public void updatePreDraw(ConstraintLayout paramConstraintLayout) {
    this.mContainer = paramConstraintLayout;
    float f = getRotation();
    if (f == 0.0F) {
      if (!Float.isNaN(this.mGroupRotateAngle))
        this.mGroupRotateAngle = f; 
    } else {
      this.mGroupRotateAngle = f;
    } 
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/helper/widget/Layer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */