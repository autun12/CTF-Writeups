package androidx.lifecycle;

class FullLifecycleObserverAdapter implements LifecycleEventObserver {
  private final FullLifecycleObserver mFullLifecycleObserver;
  
  private final LifecycleEventObserver mLifecycleEventObserver;
  
  FullLifecycleObserverAdapter(FullLifecycleObserver paramFullLifecycleObserver, LifecycleEventObserver paramLifecycleEventObserver) {
    this.mFullLifecycleObserver = paramFullLifecycleObserver;
    this.mLifecycleEventObserver = paramLifecycleEventObserver;
  }
  
  public void onStateChanged(LifecycleOwner paramLifecycleOwner, Lifecycle.Event paramEvent) {
    switch (paramEvent) {
      case ON_ANY:
        throw new IllegalArgumentException("ON_ANY must not been send by anybody");
      case ON_DESTROY:
        this.mFullLifecycleObserver.onDestroy(paramLifecycleOwner);
        break;
      case ON_STOP:
        this.mFullLifecycleObserver.onStop(paramLifecycleOwner);
        break;
      case ON_PAUSE:
        this.mFullLifecycleObserver.onPause(paramLifecycleOwner);
        break;
      case ON_RESUME:
        this.mFullLifecycleObserver.onResume(paramLifecycleOwner);
        break;
      case ON_START:
        this.mFullLifecycleObserver.onStart(paramLifecycleOwner);
        break;
      case ON_CREATE:
        this.mFullLifecycleObserver.onCreate(paramLifecycleOwner);
        break;
    } 
    LifecycleEventObserver lifecycleEventObserver = this.mLifecycleEventObserver;
    if (lifecycleEventObserver != null)
      lifecycleEventObserver.onStateChanged(paramLifecycleOwner, paramEvent); 
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/lifecycle/FullLifecycleObserverAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */