package androidx.core.graphics;

import android.graphics.BlendMode;
import android.graphics.PorterDuff;

class BlendModeUtils {
  static BlendMode obtainBlendModeFromCompat(BlendModeCompat paramBlendModeCompat) {
    switch (paramBlendModeCompat) {
      default:
        return null;
      case LUMINOSITY:
        return BlendMode.LUMINOSITY;
      case COLOR:
        return BlendMode.COLOR;
      case SATURATION:
        return BlendMode.SATURATION;
      case HUE:
        return BlendMode.HUE;
      case MULTIPLY:
        return BlendMode.MULTIPLY;
      case EXCLUSION:
        return BlendMode.EXCLUSION;
      case DIFFERENCE:
        return BlendMode.DIFFERENCE;
      case SOFT_LIGHT:
        return BlendMode.SOFT_LIGHT;
      case HARD_LIGHT:
        return BlendMode.HARD_LIGHT;
      case COLOR_BURN:
        return BlendMode.COLOR_BURN;
      case COLOR_DODGE:
        return BlendMode.COLOR_DODGE;
      case LIGHTEN:
        return BlendMode.LIGHTEN;
      case DARKEN:
        return BlendMode.DARKEN;
      case OVERLAY:
        return BlendMode.OVERLAY;
      case SCREEN:
        return BlendMode.SCREEN;
      case MODULATE:
        return BlendMode.MODULATE;
      case PLUS:
        return BlendMode.PLUS;
      case XOR:
        return BlendMode.XOR;
      case DST_ATOP:
        return BlendMode.DST_ATOP;
      case SRC_ATOP:
        return BlendMode.SRC_ATOP;
      case DST_OUT:
        return BlendMode.DST_OUT;
      case SRC_OUT:
        return BlendMode.SRC_OUT;
      case DST_IN:
        return BlendMode.DST_IN;
      case SRC_IN:
        return BlendMode.SRC_IN;
      case DST_OVER:
        return BlendMode.DST_OVER;
      case SRC_OVER:
        return BlendMode.SRC_OVER;
      case DST:
        return BlendMode.DST;
      case SRC:
        return BlendMode.SRC;
      case CLEAR:
        break;
    } 
    return BlendMode.CLEAR;
  }
  
  static PorterDuff.Mode obtainPorterDuffFromCompat(BlendModeCompat paramBlendModeCompat) {
    if (paramBlendModeCompat != null) {
      switch (paramBlendModeCompat) {
        default:
          return null;
        case LIGHTEN:
          return PorterDuff.Mode.LIGHTEN;
        case DARKEN:
          return PorterDuff.Mode.DARKEN;
        case OVERLAY:
          return PorterDuff.Mode.OVERLAY;
        case SCREEN:
          return PorterDuff.Mode.SCREEN;
        case MODULATE:
          return PorterDuff.Mode.MULTIPLY;
        case PLUS:
          return PorterDuff.Mode.ADD;
        case XOR:
          return PorterDuff.Mode.XOR;
        case DST_ATOP:
          return PorterDuff.Mode.DST_ATOP;
        case SRC_ATOP:
          return PorterDuff.Mode.SRC_ATOP;
        case DST_OUT:
          return PorterDuff.Mode.DST_OUT;
        case SRC_OUT:
          return PorterDuff.Mode.SRC_OUT;
        case DST_IN:
          return PorterDuff.Mode.DST_IN;
        case SRC_IN:
          return PorterDuff.Mode.SRC_IN;
        case DST_OVER:
          return PorterDuff.Mode.DST_OVER;
        case SRC_OVER:
          return PorterDuff.Mode.SRC_OVER;
        case DST:
          return PorterDuff.Mode.DST;
        case SRC:
          return PorterDuff.Mode.SRC;
        case CLEAR:
          break;
      } 
      return PorterDuff.Mode.CLEAR;
    } 
    return null;
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/core/graphics/BlendModeUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */