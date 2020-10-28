package androidx.core.content.pm;

import java.util.ArrayList;
import java.util.List;

public abstract class ShortcutInfoCompatSaver<T> {
  public abstract T addShortcuts(List<ShortcutInfoCompat> paramList);
  
  public List<ShortcutInfoCompat> getShortcuts() throws Exception {
    return new ArrayList<ShortcutInfoCompat>();
  }
  
  public abstract T removeAllShortcuts();
  
  public abstract T removeShortcuts(List<String> paramList);
  
  public static class NoopImpl extends ShortcutInfoCompatSaver<Void> {
    public Void addShortcuts(List<ShortcutInfoCompat> param1List) {
      return null;
    }
    
    public Void removeAllShortcuts() {
      return null;
    }
    
    public Void removeShortcuts(List<String> param1List) {
      return null;
    }
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/core/content/pm/ShortcutInfoCompatSaver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */