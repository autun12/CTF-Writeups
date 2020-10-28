package androidx.core.internal.view;

import android.view.Menu;

public interface SupportMenu extends Menu {
  public static final int CATEGORY_MASK = -65536;
  
  public static final int CATEGORY_SHIFT = 16;
  
  public static final int FLAG_KEEP_OPEN_ON_SUBMENU_OPENED = 4;
  
  public static final int SUPPORTED_MODIFIERS_MASK = 69647;
  
  public static final int USER_MASK = 65535;
  
  public static final int USER_SHIFT = 0;
  
  void setGroupDividerEnabled(boolean paramBoolean);
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/core/internal/view/SupportMenu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */