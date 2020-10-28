package androidx.lifecycle;

public interface LifecycleEventObserver extends LifecycleObserver {
  void onStateChanged(LifecycleOwner paramLifecycleOwner, Lifecycle.Event paramEvent);
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/lifecycle/LifecycleEventObserver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */