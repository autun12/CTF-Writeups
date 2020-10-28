package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.ColorUtils;

public final class AppCompatDrawableManager {
  private static final boolean DEBUG = false;
  
  private static final PorterDuff.Mode DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
  
  private static AppCompatDrawableManager INSTANCE;
  
  private static final String TAG = "AppCompatDrawableManag";
  
  private ResourceManagerInternal mResourceManager;
  
  public static AppCompatDrawableManager get() {
    // Byte code:
    //   0: ldc androidx/appcompat/widget/AppCompatDrawableManager
    //   2: monitorenter
    //   3: getstatic androidx/appcompat/widget/AppCompatDrawableManager.INSTANCE : Landroidx/appcompat/widget/AppCompatDrawableManager;
    //   6: ifnonnull -> 12
    //   9: invokestatic preload : ()V
    //   12: getstatic androidx/appcompat/widget/AppCompatDrawableManager.INSTANCE : Landroidx/appcompat/widget/AppCompatDrawableManager;
    //   15: astore_0
    //   16: ldc androidx/appcompat/widget/AppCompatDrawableManager
    //   18: monitorexit
    //   19: aload_0
    //   20: areturn
    //   21: astore_0
    //   22: ldc androidx/appcompat/widget/AppCompatDrawableManager
    //   24: monitorexit
    //   25: aload_0
    //   26: athrow
    // Exception table:
    //   from	to	target	type
    //   3	12	21	finally
    //   12	16	21	finally
  }
  
  public static PorterDuffColorFilter getPorterDuffColorFilter(int paramInt, PorterDuff.Mode paramMode) {
    // Byte code:
    //   0: ldc androidx/appcompat/widget/AppCompatDrawableManager
    //   2: monitorenter
    //   3: iload_0
    //   4: aload_1
    //   5: invokestatic getPorterDuffColorFilter : (ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    //   8: astore_1
    //   9: ldc androidx/appcompat/widget/AppCompatDrawableManager
    //   11: monitorexit
    //   12: aload_1
    //   13: areturn
    //   14: astore_1
    //   15: ldc androidx/appcompat/widget/AppCompatDrawableManager
    //   17: monitorexit
    //   18: aload_1
    //   19: athrow
    // Exception table:
    //   from	to	target	type
    //   3	9	14	finally
  }
  
  public static void preload() {
    // Byte code:
    //   0: ldc androidx/appcompat/widget/AppCompatDrawableManager
    //   2: monitorenter
    //   3: getstatic androidx/appcompat/widget/AppCompatDrawableManager.INSTANCE : Landroidx/appcompat/widget/AppCompatDrawableManager;
    //   6: ifnonnull -> 50
    //   9: new androidx/appcompat/widget/AppCompatDrawableManager
    //   12: astore_0
    //   13: aload_0
    //   14: invokespecial <init> : ()V
    //   17: aload_0
    //   18: putstatic androidx/appcompat/widget/AppCompatDrawableManager.INSTANCE : Landroidx/appcompat/widget/AppCompatDrawableManager;
    //   21: getstatic androidx/appcompat/widget/AppCompatDrawableManager.INSTANCE : Landroidx/appcompat/widget/AppCompatDrawableManager;
    //   24: invokestatic get : ()Landroidx/appcompat/widget/ResourceManagerInternal;
    //   27: putfield mResourceManager : Landroidx/appcompat/widget/ResourceManagerInternal;
    //   30: getstatic androidx/appcompat/widget/AppCompatDrawableManager.INSTANCE : Landroidx/appcompat/widget/AppCompatDrawableManager;
    //   33: getfield mResourceManager : Landroidx/appcompat/widget/ResourceManagerInternal;
    //   36: astore_0
    //   37: new androidx/appcompat/widget/AppCompatDrawableManager$1
    //   40: astore_1
    //   41: aload_1
    //   42: invokespecial <init> : ()V
    //   45: aload_0
    //   46: aload_1
    //   47: invokevirtual setHooks : (Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;)V
    //   50: ldc androidx/appcompat/widget/AppCompatDrawableManager
    //   52: monitorexit
    //   53: return
    //   54: astore_0
    //   55: ldc androidx/appcompat/widget/AppCompatDrawableManager
    //   57: monitorexit
    //   58: aload_0
    //   59: athrow
    // Exception table:
    //   from	to	target	type
    //   3	50	54	finally
  }
  
  static void tintDrawable(Drawable paramDrawable, TintInfo paramTintInfo, int[] paramArrayOfint) {
    ResourceManagerInternal.tintDrawable(paramDrawable, paramTintInfo, paramArrayOfint);
  }
  
  public Drawable getDrawable(Context paramContext, int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield mResourceManager : Landroidx/appcompat/widget/ResourceManagerInternal;
    //   6: aload_1
    //   7: iload_2
    //   8: invokevirtual getDrawable : (Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    //   11: astore_1
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_1
    //   15: areturn
    //   16: astore_1
    //   17: aload_0
    //   18: monitorexit
    //   19: aload_1
    //   20: athrow
    // Exception table:
    //   from	to	target	type
    //   2	12	16	finally
  }
  
  Drawable getDrawable(Context paramContext, int paramInt, boolean paramBoolean) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield mResourceManager : Landroidx/appcompat/widget/ResourceManagerInternal;
    //   6: aload_1
    //   7: iload_2
    //   8: iload_3
    //   9: invokevirtual getDrawable : (Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    //   12: astore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_1
    //   16: areturn
    //   17: astore_1
    //   18: aload_0
    //   19: monitorexit
    //   20: aload_1
    //   21: athrow
    // Exception table:
    //   from	to	target	type
    //   2	13	17	finally
  }
  
  ColorStateList getTintList(Context paramContext, int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield mResourceManager : Landroidx/appcompat/widget/ResourceManagerInternal;
    //   6: aload_1
    //   7: iload_2
    //   8: invokevirtual getTintList : (Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    //   11: astore_1
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_1
    //   15: areturn
    //   16: astore_1
    //   17: aload_0
    //   18: monitorexit
    //   19: aload_1
    //   20: athrow
    // Exception table:
    //   from	to	target	type
    //   2	12	16	finally
  }
  
  public void onConfigurationChanged(Context paramContext) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield mResourceManager : Landroidx/appcompat/widget/ResourceManagerInternal;
    //   6: aload_1
    //   7: invokevirtual onConfigurationChanged : (Landroid/content/Context;)V
    //   10: aload_0
    //   11: monitorexit
    //   12: return
    //   13: astore_1
    //   14: aload_0
    //   15: monitorexit
    //   16: aload_1
    //   17: athrow
    // Exception table:
    //   from	to	target	type
    //   2	10	13	finally
  }
  
  Drawable onDrawableLoadedFromResources(Context paramContext, VectorEnabledTintResources paramVectorEnabledTintResources, int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield mResourceManager : Landroidx/appcompat/widget/ResourceManagerInternal;
    //   6: aload_1
    //   7: aload_2
    //   8: iload_3
    //   9: invokevirtual onDrawableLoadedFromResources : (Landroid/content/Context;Landroidx/appcompat/widget/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;
    //   12: astore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_1
    //   16: areturn
    //   17: astore_1
    //   18: aload_0
    //   19: monitorexit
    //   20: aload_1
    //   21: athrow
    // Exception table:
    //   from	to	target	type
    //   2	13	17	finally
  }
  
  boolean tintDrawableUsingColorFilter(Context paramContext, int paramInt, Drawable paramDrawable) {
    return this.mResourceManager.tintDrawableUsingColorFilter(paramContext, paramInt, paramDrawable);
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/appcompat/widget/AppCompatDrawableManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */