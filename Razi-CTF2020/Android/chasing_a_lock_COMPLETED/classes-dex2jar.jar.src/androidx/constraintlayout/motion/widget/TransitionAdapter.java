package androidx.constraintlayout.motion.widget;

public abstract class TransitionAdapter implements MotionLayout.TransitionListener {
  public void onTransitionChange(MotionLayout paramMotionLayout, int paramInt1, int paramInt2, float paramFloat) {}
  
  public void onTransitionCompleted(MotionLayout paramMotionLayout, int paramInt) {}
  
  public void onTransitionStarted(MotionLayout paramMotionLayout, int paramInt1, int paramInt2) {}
  
  public void onTransitionTrigger(MotionLayout paramMotionLayout, int paramInt, boolean paramBoolean, float paramFloat) {}
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/motion/widget/TransitionAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */