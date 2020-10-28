package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.widget.R;

public class ImageFilterButton extends AppCompatImageButton {
  private float mCrossfade = 0.0F;
  
  private ImageFilterView.ImageMatrix mImageMatrix = new ImageFilterView.ImageMatrix();
  
  LayerDrawable mLayer;
  
  Drawable[] mLayers;
  
  private boolean mOverlay = true;
  
  private Path mPath;
  
  RectF mRect;
  
  private float mRound = Float.NaN;
  
  private float mRoundPercent = 0.0F;
  
  ViewOutlineProvider mViewOutlineProvider;
  
  public ImageFilterButton(Context paramContext) {
    super(paramContext);
    init(paramContext, (AttributeSet)null);
  }
  
  public ImageFilterButton(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    init(paramContext, paramAttributeSet);
  }
  
  public ImageFilterButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    init(paramContext, paramAttributeSet);
  }
  
  private void init(Context paramContext, AttributeSet paramAttributeSet) {
    setPadding(0, 0, 0, 0);
    if (paramAttributeSet != null) {
      TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, R.styleable.ImageFilterView);
      int i = typedArray.getIndexCount();
      Drawable drawable = typedArray.getDrawable(R.styleable.ImageFilterView_altSrc);
      for (byte b = 0; b < i; b++) {
        int j = typedArray.getIndex(b);
        if (j == R.styleable.ImageFilterView_crossfade) {
          this.mCrossfade = typedArray.getFloat(j, 0.0F);
        } else if (j == R.styleable.ImageFilterView_warmth) {
          setWarmth(typedArray.getFloat(j, 0.0F));
        } else if (j == R.styleable.ImageFilterView_saturation) {
          setSaturation(typedArray.getFloat(j, 0.0F));
        } else if (j == R.styleable.ImageFilterView_contrast) {
          setContrast(typedArray.getFloat(j, 0.0F));
        } else if (j == R.styleable.ImageFilterView_round) {
          setRound(typedArray.getDimension(j, 0.0F));
        } else if (j == R.styleable.ImageFilterView_roundPercent) {
          setRoundPercent(typedArray.getFloat(j, 0.0F));
        } else if (j == R.styleable.ImageFilterView_overlay) {
          setOverlay(typedArray.getBoolean(j, this.mOverlay));
        } 
      } 
      typedArray.recycle();
      if (drawable != null) {
        this.mLayers = new Drawable[2];
        this.mLayers[0] = getDrawable();
        Drawable[] arrayOfDrawable = this.mLayers;
        arrayOfDrawable[1] = drawable;
        this.mLayer = new LayerDrawable(arrayOfDrawable);
        this.mLayer.getDrawable(1).setAlpha((int)(this.mCrossfade * 255.0F));
        setImageDrawable((Drawable)this.mLayer);
      } 
    } 
  }
  
  private void setOverlay(boolean paramBoolean) {
    this.mOverlay = paramBoolean;
  }
  
  public void draw(Canvas paramCanvas) {
    boolean bool;
    if (Build.VERSION.SDK_INT < 21 && this.mRound != 0.0F && this.mPath != null) {
      bool = true;
      paramCanvas.save();
      paramCanvas.clipPath(this.mPath);
    } else {
      bool = false;
    } 
    super.draw(paramCanvas);
    if (bool)
      paramCanvas.restore(); 
  }
  
  public float getContrast() {
    return this.mImageMatrix.mContrast;
  }
  
  public float getCrossfade() {
    return this.mCrossfade;
  }
  
  public float getRound() {
    return this.mRound;
  }
  
  public float getRoundPercent() {
    return this.mRoundPercent;
  }
  
  public float getSaturation() {
    return this.mImageMatrix.mSaturation;
  }
  
  public float getWarmth() {
    return this.mImageMatrix.mWarmth;
  }
  
  public void setBrightness(float paramFloat) {
    ImageFilterView.ImageMatrix imageMatrix = this.mImageMatrix;
    imageMatrix.mBrightness = paramFloat;
    imageMatrix.updateMatrix((ImageView)this);
  }
  
  public void setContrast(float paramFloat) {
    ImageFilterView.ImageMatrix imageMatrix = this.mImageMatrix;
    imageMatrix.mContrast = paramFloat;
    imageMatrix.updateMatrix((ImageView)this);
  }
  
  public void setCrossfade(float paramFloat) {
    this.mCrossfade = paramFloat;
    if (this.mLayers != null) {
      if (!this.mOverlay)
        this.mLayer.getDrawable(0).setAlpha((int)((1.0F - this.mCrossfade) * 255.0F)); 
      this.mLayer.getDrawable(1).setAlpha((int)(this.mCrossfade * 255.0F));
      setImageDrawable((Drawable)this.mLayer);
    } 
  }
  
  public void setRound(float paramFloat) {
    boolean bool;
    if (Float.isNaN(paramFloat)) {
      this.mRound = paramFloat;
      paramFloat = this.mRoundPercent;
      this.mRoundPercent = -1.0F;
      setRoundPercent(paramFloat);
      return;
    } 
    if (this.mRound != paramFloat) {
      bool = true;
    } else {
      bool = false;
    } 
    this.mRound = paramFloat;
    if (this.mRound != 0.0F) {
      if (this.mPath == null)
        this.mPath = new Path(); 
      if (this.mRect == null)
        this.mRect = new RectF(); 
      if (Build.VERSION.SDK_INT >= 21) {
        if (this.mViewOutlineProvider == null) {
          this.mViewOutlineProvider = new ViewOutlineProvider() {
              public void getOutline(View param1View, Outline param1Outline) {
                param1Outline.setRoundRect(0, 0, ImageFilterButton.this.getWidth(), ImageFilterButton.this.getHeight(), ImageFilterButton.this.mRound);
              }
            };
          setOutlineProvider(this.mViewOutlineProvider);
        } 
        setClipToOutline(true);
      } 
      int i = getWidth();
      int j = getHeight();
      this.mRect.set(0.0F, 0.0F, i, j);
      this.mPath.reset();
      Path path = this.mPath;
      RectF rectF = this.mRect;
      paramFloat = this.mRound;
      path.addRoundRect(rectF, paramFloat, paramFloat, Path.Direction.CW);
    } else if (Build.VERSION.SDK_INT >= 21) {
      setClipToOutline(false);
    } 
    if (bool && Build.VERSION.SDK_INT >= 21)
      invalidateOutline(); 
  }
  
  public void setRoundPercent(float paramFloat) {
    boolean bool;
    if (this.mRoundPercent != paramFloat) {
      bool = true;
    } else {
      bool = false;
    } 
    this.mRoundPercent = paramFloat;
    if (this.mRoundPercent != 0.0F) {
      if (this.mPath == null)
        this.mPath = new Path(); 
      if (this.mRect == null)
        this.mRect = new RectF(); 
      if (Build.VERSION.SDK_INT >= 21) {
        if (this.mViewOutlineProvider == null) {
          this.mViewOutlineProvider = new ViewOutlineProvider() {
              public void getOutline(View param1View, Outline param1Outline) {
                int i = ImageFilterButton.this.getWidth();
                int j = ImageFilterButton.this.getHeight();
                param1Outline.setRoundRect(0, 0, i, j, Math.min(i, j) * ImageFilterButton.this.mRoundPercent / 2.0F);
              }
            };
          setOutlineProvider(this.mViewOutlineProvider);
        } 
        setClipToOutline(true);
      } 
      int i = getWidth();
      int j = getHeight();
      paramFloat = Math.min(i, j) * this.mRoundPercent / 2.0F;
      this.mRect.set(0.0F, 0.0F, i, j);
      this.mPath.reset();
      this.mPath.addRoundRect(this.mRect, paramFloat, paramFloat, Path.Direction.CW);
    } else if (Build.VERSION.SDK_INT >= 21) {
      setClipToOutline(false);
    } 
    if (bool && Build.VERSION.SDK_INT >= 21)
      invalidateOutline(); 
  }
  
  public void setSaturation(float paramFloat) {
    ImageFilterView.ImageMatrix imageMatrix = this.mImageMatrix;
    imageMatrix.mSaturation = paramFloat;
    imageMatrix.updateMatrix((ImageView)this);
  }
  
  public void setWarmth(float paramFloat) {
    ImageFilterView.ImageMatrix imageMatrix = this.mImageMatrix;
    imageMatrix.mWarmth = paramFloat;
    imageMatrix.updateMatrix((ImageView)this);
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/utils/widget/ImageFilterButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */