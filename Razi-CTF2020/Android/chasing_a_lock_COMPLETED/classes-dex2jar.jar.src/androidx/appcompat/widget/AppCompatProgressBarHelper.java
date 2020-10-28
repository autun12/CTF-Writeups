package androidx.appcompat.widget;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import androidx.core.graphics.drawable.WrappedDrawable;

class AppCompatProgressBarHelper {
  private static final int[] TINT_ATTRS = new int[] { 16843067, 16843068 };
  
  private Bitmap mSampleTile;
  
  private final ProgressBar mView;
  
  AppCompatProgressBarHelper(ProgressBar paramProgressBar) {
    this.mView = paramProgressBar;
  }
  
  private Shape getDrawableShape() {
    return (Shape)new RoundRectShape(new float[] { 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F }, null, null);
  }
  
  private Drawable tileify(Drawable paramDrawable, boolean paramBoolean) {
    ClipDrawable clipDrawable;
    if (paramDrawable instanceof WrappedDrawable) {
      WrappedDrawable wrappedDrawable = (WrappedDrawable)paramDrawable;
      Drawable drawable1 = wrappedDrawable.getWrappedDrawable();
      Drawable drawable2 = paramDrawable;
      if (drawable1 != null) {
        wrappedDrawable.setWrappedDrawable(tileify(drawable1, paramBoolean));
        drawable2 = paramDrawable;
      } 
    } else {
      LayerDrawable layerDrawable1;
      if (paramDrawable instanceof LayerDrawable) {
        layerDrawable1 = (LayerDrawable)paramDrawable;
        int i = layerDrawable1.getNumberOfLayers();
        Drawable[] arrayOfDrawable = new Drawable[i];
        boolean bool = false;
        byte b;
        for (b = 0; b < i; b++) {
          int j = layerDrawable1.getId(b);
          Drawable drawable = layerDrawable1.getDrawable(b);
          if (j == 16908301 || j == 16908303) {
            paramBoolean = true;
          } else {
            paramBoolean = false;
          } 
          arrayOfDrawable[b] = tileify(drawable, paramBoolean);
        } 
        LayerDrawable layerDrawable = new LayerDrawable(arrayOfDrawable);
        for (b = bool; b < i; b++)
          layerDrawable.setId(b, layerDrawable1.getId(b)); 
        return (Drawable)layerDrawable;
      } 
      LayerDrawable layerDrawable2 = layerDrawable1;
      if (layerDrawable1 instanceof BitmapDrawable) {
        BitmapDrawable bitmapDrawable = (BitmapDrawable)layerDrawable1;
        Bitmap bitmap = bitmapDrawable.getBitmap();
        if (this.mSampleTile == null)
          this.mSampleTile = bitmap; 
        ShapeDrawable shapeDrawable = new ShapeDrawable(getDrawableShape());
        BitmapShader bitmapShader = new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP);
        shapeDrawable.getPaint().setShader((Shader)bitmapShader);
        shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
        if (paramBoolean)
          clipDrawable = new ClipDrawable((Drawable)shapeDrawable, 3, 1); 
      } 
    } 
    return (Drawable)clipDrawable;
  }
  
  private Drawable tileifyIndeterminate(Drawable paramDrawable) {
    AnimationDrawable animationDrawable;
    Drawable drawable = paramDrawable;
    if (paramDrawable instanceof AnimationDrawable) {
      AnimationDrawable animationDrawable1 = (AnimationDrawable)paramDrawable;
      int i = animationDrawable1.getNumberOfFrames();
      animationDrawable = new AnimationDrawable();
      animationDrawable.setOneShot(animationDrawable1.isOneShot());
      for (byte b = 0; b < i; b++) {
        Drawable drawable1 = tileify(animationDrawable1.getFrame(b), true);
        drawable1.setLevel(10000);
        animationDrawable.addFrame(drawable1, animationDrawable1.getDuration(b));
      } 
      animationDrawable.setLevel(10000);
    } 
    return (Drawable)animationDrawable;
  }
  
  Bitmap getSampleTile() {
    return this.mSampleTile;
  }
  
  void loadFromAttributes(AttributeSet paramAttributeSet, int paramInt) {
    TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(this.mView.getContext(), paramAttributeSet, TINT_ATTRS, paramInt, 0);
    Drawable drawable = tintTypedArray.getDrawableIfKnown(0);
    if (drawable != null)
      this.mView.setIndeterminateDrawable(tileifyIndeterminate(drawable)); 
    drawable = tintTypedArray.getDrawableIfKnown(1);
    if (drawable != null)
      this.mView.setProgressDrawable(tileify(drawable, false)); 
    tintTypedArray.recycle();
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/appcompat/widget/AppCompatProgressBarHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */