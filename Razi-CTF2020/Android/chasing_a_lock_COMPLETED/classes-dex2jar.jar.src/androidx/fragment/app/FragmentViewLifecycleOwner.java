package androidx.fragment.app;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;

class FragmentViewLifecycleOwner implements LifecycleOwner {
  private LifecycleRegistry mLifecycleRegistry = null;
  
  public Lifecycle getLifecycle() {
    initialize();
    return (Lifecycle)this.mLifecycleRegistry;
  }
  
  void handleLifecycleEvent(Lifecycle.Event paramEvent) {
    this.mLifecycleRegistry.handleLifecycleEvent(paramEvent);
  }
  
  void initialize() {
    if (this.mLifecycleRegistry == null)
      this.mLifecycleRegistry = new LifecycleRegistry(this); 
  }
  
  boolean isInitialized() {
    boolean bool;
    if (this.mLifecycleRegistry != null) {
      bool = true;
    } else {
      bool = false;
    } 
    return bool;
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/fragment/app/FragmentViewLifecycleOwner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */