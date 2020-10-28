package androidx.core.view;

public interface NestedScrollingChild {
  boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean);
  
  boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2);
  
  boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfint1, int[] paramArrayOfint2);
  
  boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfint);
  
  boolean hasNestedScrollingParent();
  
  boolean isNestedScrollingEnabled();
  
  void setNestedScrollingEnabled(boolean paramBoolean);
  
  boolean startNestedScroll(int paramInt);
  
  void stopNestedScroll();
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/core/view/NestedScrollingChild.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */