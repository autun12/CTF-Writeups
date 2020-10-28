package androidx.activity;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class OnBackPressedCallback {
  private CopyOnWriteArrayList<Cancellable> mCancellables = new CopyOnWriteArrayList<Cancellable>();
  
  private boolean mEnabled;
  
  public OnBackPressedCallback(boolean paramBoolean) {
    this.mEnabled = paramBoolean;
  }
  
  void addCancellable(Cancellable paramCancellable) {
    this.mCancellables.add(paramCancellable);
  }
  
  public abstract void handleOnBackPressed();
  
  public final boolean isEnabled() {
    return this.mEnabled;
  }
  
  public final void remove() {
    Iterator<Cancellable> iterator = this.mCancellables.iterator();
    while (iterator.hasNext())
      ((Cancellable)iterator.next()).cancel(); 
  }
  
  void removeCancellable(Cancellable paramCancellable) {
    this.mCancellables.remove(paramCancellable);
  }
  
  public final void setEnabled(boolean paramBoolean) {
    this.mEnabled = paramBoolean;
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/activity/OnBackPressedCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */