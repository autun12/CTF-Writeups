package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R;

public class MotionHelper extends ConstraintHelper implements Animatable, MotionLayout.TransitionListener {
  private float mProgress;
  
  private boolean mUseOnHide = false;
  
  private boolean mUseOnShow = false;
  
  protected View[] views;
  
  public MotionHelper(Context paramContext) {
    super(paramContext);
  }
  
  public MotionHelper(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    init(paramAttributeSet);
  }
  
  public MotionHelper(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    init(paramAttributeSet);
  }
  
  public float getProgress() {
    return this.mProgress;
  }
  
  protected void init(AttributeSet paramAttributeSet) {
    super.init(paramAttributeSet);
    if (paramAttributeSet != null) {
      TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, R.styleable.MotionHelper);
      int i = typedArray.getIndexCount();
      for (byte b = 0; b < i; b++) {
        int j = typedArray.getIndex(b);
        if (j == R.styleable.MotionHelper_onShow) {
          this.mUseOnShow = typedArray.getBoolean(j, this.mUseOnShow);
        } else if (j == R.styleable.MotionHelper_onHide) {
          this.mUseOnHide = typedArray.getBoolean(j, this.mUseOnHide);
        } 
      } 
    } 
  }
  
  public boolean isUseOnHide() {
    return this.mUseOnHide;
  }
  
  public boolean isUsedOnShow() {
    return this.mUseOnShow;
  }
  
  public void onTransitionChange(MotionLayout paramMotionLayout, int paramInt1, int paramInt2, float paramFloat) {}
  
  public void onTransitionCompleted(MotionLayout paramMotionLayout, int paramInt) {}
  
  public void onTransitionStarted(MotionLayout paramMotionLayout, int paramInt1, int paramInt2) {}
  
  public void onTransitionTrigger(MotionLayout paramMotionLayout, int paramInt, boolean paramBoolean, float paramFloat) {}
  
  public void setProgress(float paramFloat) {
    this.mProgress = paramFloat;
    int i = this.mCount;
    int j = 0;
    int k = 0;
    if (i > 0) {
      this.views = getViews((ConstraintLayout)getParent());
      for (j = k; j < this.mCount; j++)
        setProgress(this.views[j], paramFloat); 
    } else {
      ViewGroup viewGroup = (ViewGroup)getParent();
      k = viewGroup.getChildCount();
      while (j < k) {
        View view = viewGroup.getChildAt(j);
        if (!(view instanceof MotionHelper))
          setProgress(view, paramFloat); 
        j++;
      } 
    } 
  }
  
  public void setProgress(View paramView, float paramFloat) {}
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/motion/widget/MotionHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */