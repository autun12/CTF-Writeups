package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;

public interface TintableCompoundDrawablesView {
  ColorStateList getSupportCompoundDrawablesTintList();
  
  PorterDuff.Mode getSupportCompoundDrawablesTintMode();
  
  void setSupportCompoundDrawablesTintList(ColorStateList paramColorStateList);
  
  void setSupportCompoundDrawablesTintMode(PorterDuff.Mode paramMode);
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/core/widget/TintableCompoundDrawablesView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */