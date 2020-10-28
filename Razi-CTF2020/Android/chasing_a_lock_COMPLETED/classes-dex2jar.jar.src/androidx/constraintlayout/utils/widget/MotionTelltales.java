package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewParent;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.R;

public class MotionTelltales extends MockView {
  private static final String TAG = "MotionTelltales";
  
  Matrix mInvertMatrix = new Matrix();
  
  MotionLayout mMotionLayout;
  
  private Paint mPaintTelltales = new Paint();
  
  int mTailColor = -65281;
  
  float mTailScale = 0.25F;
  
  int mVelocityMode = 0;
  
  float[] velocity = new float[2];
  
  public MotionTelltales(Context paramContext) {
    super(paramContext);
    init(paramContext, (AttributeSet)null);
  }
  
  public MotionTelltales(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    init(paramContext, paramAttributeSet);
  }
  
  public MotionTelltales(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    init(paramContext, paramAttributeSet);
  }
  
  private void init(Context paramContext, AttributeSet paramAttributeSet) {
    if (paramAttributeSet != null) {
      TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.MotionTelltales);
      int i = typedArray.getIndexCount();
      for (byte b = 0; b < i; b++) {
        int j = typedArray.getIndex(b);
        if (j == R.styleable.MotionTelltales_telltales_tailColor) {
          this.mTailColor = typedArray.getColor(j, this.mTailColor);
        } else if (j == R.styleable.MotionTelltales_telltales_velocityMode) {
          this.mVelocityMode = typedArray.getInt(j, this.mVelocityMode);
        } else if (j == R.styleable.MotionTelltales_telltales_tailScale) {
          this.mTailScale = typedArray.getFloat(j, this.mTailScale);
        } 
      } 
    } 
    this.mPaintTelltales.setColor(this.mTailColor);
    this.mPaintTelltales.setStrokeWidth(5.0F);
  }
  
  protected void onAttachedToWindow() {
    super.onAttachedToWindow();
  }
  
  public void onDraw(Canvas paramCanvas) {
    ViewParent viewParent;
    super.onDraw(paramCanvas);
    getMatrix().invert(this.mInvertMatrix);
    if (this.mMotionLayout == null) {
      viewParent = getParent();
      if (viewParent instanceof MotionLayout)
        this.mMotionLayout = (MotionLayout)viewParent; 
      return;
    } 
    int i = getWidth();
    int j = getHeight();
    float[] arrayOfFloat = new float[5];
    arrayOfFloat[0] = 0.1F;
    arrayOfFloat[1] = 0.25F;
    arrayOfFloat[2] = 0.5F;
    arrayOfFloat[3] = 0.75F;
    arrayOfFloat[4] = 0.9F;
    for (byte b = 0; b < arrayOfFloat.length; b++) {
      float f = arrayOfFloat[b];
      for (byte b1 = 0; b1 < arrayOfFloat.length; b1++) {
        float f1 = arrayOfFloat[b1];
        this.mMotionLayout.getViewVelocity(this, f1, f, this.velocity, this.mVelocityMode);
        this.mInvertMatrix.mapVectors(this.velocity);
        float f2 = i * f1;
        float f3 = j * f;
        float[] arrayOfFloat1 = this.velocity;
        float f4 = arrayOfFloat1[0];
        f1 = this.mTailScale;
        float f5 = arrayOfFloat1[1];
        this.mInvertMatrix.mapVectors(arrayOfFloat1);
        viewParent.drawLine(f2, f3, f2 - f4 * f1, f3 - f5 * f1, this.mPaintTelltales);
      } 
    } 
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    postInvalidate();
  }
  
  public void setText(CharSequence paramCharSequence) {
    this.mText = paramCharSequence.toString();
    requestLayout();
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/utils/widget/MotionTelltales.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */