package androidx.core.graphics;

import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;

public class BlendModeColorFilterCompat {
  public static ColorFilter createBlendModeColorFilterCompat(int paramInt, BlendModeCompat paramBlendModeCompat) {
    BlendModeColorFilter blendModeColorFilter;
    PorterDuffColorFilter porterDuffColorFilter;
    int i = Build.VERSION.SDK_INT;
    BlendMode blendMode2 = null;
    BlendModeCompat blendModeCompat = null;
    if (i >= 29) {
      blendMode2 = BlendModeUtils.obtainBlendModeFromCompat(paramBlendModeCompat);
      paramBlendModeCompat = blendModeCompat;
      if (blendMode2 != null)
        blendModeColorFilter = new BlendModeColorFilter(paramInt, blendMode2); 
      return (ColorFilter)blendModeColorFilter;
    } 
    PorterDuff.Mode mode = BlendModeUtils.obtainPorterDuffFromCompat((BlendModeCompat)blendModeColorFilter);
    BlendMode blendMode1 = blendMode2;
    if (mode != null)
      porterDuffColorFilter = new PorterDuffColorFilter(paramInt, mode); 
    return (ColorFilter)porterDuffColorFilter;
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/core/graphics/BlendModeColorFilterCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */