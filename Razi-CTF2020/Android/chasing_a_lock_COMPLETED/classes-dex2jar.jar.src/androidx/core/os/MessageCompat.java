package androidx.core.os;

import android.os.Build;
import android.os.Message;

public final class MessageCompat {
  private static boolean sTryIsAsynchronous = true;
  
  private static boolean sTrySetAsynchronous = true;
  
  public static boolean isAsynchronous(Message paramMessage) {
    if (Build.VERSION.SDK_INT >= 22)
      return paramMessage.isAsynchronous(); 
    if (sTryIsAsynchronous && Build.VERSION.SDK_INT >= 16)
      try {
        return paramMessage.isAsynchronous();
      } catch (NoSuchMethodError noSuchMethodError) {
        sTryIsAsynchronous = false;
      }  
    return false;
  }
  
  public static void setAsynchronous(Message paramMessage, boolean paramBoolean) {
    if (Build.VERSION.SDK_INT >= 22) {
      paramMessage.setAsynchronous(paramBoolean);
      return;
    } 
    if (sTrySetAsynchronous && Build.VERSION.SDK_INT >= 16)
      try {
        paramMessage.setAsynchronous(paramBoolean);
      } catch (NoSuchMethodError noSuchMethodError) {
        sTrySetAsynchronous = false;
      }  
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/core/os/MessageCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */