package androidx.constraintlayout.motion.widget;

import android.graphics.RectF;
import android.view.View;
import java.util.HashSet;

abstract class KeyPositionBase extends Key {
  protected static final float SELECTION_SLOPE = 20.0F;
  
  int mCurveFit = UNSET;
  
  abstract void calcPosition(int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4);
  
  void getAttributeNames(HashSet<String> paramHashSet) {}
  
  abstract float getPositionX();
  
  abstract float getPositionY();
  
  public abstract boolean intersects(int paramInt1, int paramInt2, RectF paramRectF1, RectF paramRectF2, float paramFloat1, float paramFloat2);
  
  abstract void positionAttributes(View paramView, RectF paramRectF1, RectF paramRectF2, float paramFloat1, float paramFloat2, String[] paramArrayOfString, float[] paramArrayOffloat);
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/motion/widget/KeyPositionBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */