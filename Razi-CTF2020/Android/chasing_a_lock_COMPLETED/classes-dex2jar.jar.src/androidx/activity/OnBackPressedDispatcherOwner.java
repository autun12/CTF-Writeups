package androidx.activity;

import androidx.lifecycle.LifecycleOwner;

public interface OnBackPressedDispatcherOwner extends LifecycleOwner {
  OnBackPressedDispatcher getOnBackPressedDispatcher();
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/activity/OnBackPressedDispatcherOwner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */