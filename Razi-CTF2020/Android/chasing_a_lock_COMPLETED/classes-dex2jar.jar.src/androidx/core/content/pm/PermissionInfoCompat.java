package androidx.core.content.pm;

import android.content.pm.PermissionInfo;
import android.os.Build;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class PermissionInfoCompat {
  public static int getProtection(PermissionInfo paramPermissionInfo) {
    return (Build.VERSION.SDK_INT >= 28) ? paramPermissionInfo.getProtection() : (paramPermissionInfo.protectionLevel & 0xF);
  }
  
  public static int getProtectionFlags(PermissionInfo paramPermissionInfo) {
    return (Build.VERSION.SDK_INT >= 28) ? paramPermissionInfo.getProtectionFlags() : (paramPermissionInfo.protectionLevel & 0xFFFFFFF0);
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface Protection {}
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface ProtectionFlags {}
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/core/content/pm/PermissionInfoCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */