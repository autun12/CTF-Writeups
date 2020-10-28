package androidx.appcompat.view.menu;

import android.widget.ListView;

public interface ShowableListMenu {
  void dismiss();
  
  ListView getListView();
  
  boolean isShowing();
  
  void show();
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/appcompat/view/menu/ShowableListMenu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */