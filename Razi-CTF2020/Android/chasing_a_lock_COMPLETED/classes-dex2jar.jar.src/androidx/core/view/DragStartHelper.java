package androidx.core.view;

import android.graphics.Point;
import android.view.MotionEvent;
import android.view.View;

public class DragStartHelper {
  private boolean mDragging;
  
  private int mLastTouchX;
  
  private int mLastTouchY;
  
  private final OnDragStartListener mListener;
  
  private final View.OnLongClickListener mLongClickListener = new View.OnLongClickListener() {
      public boolean onLongClick(View param1View) {
        return DragStartHelper.this.onLongClick(param1View);
      }
    };
  
  private final View.OnTouchListener mTouchListener = new View.OnTouchListener() {
      public boolean onTouch(View param1View, MotionEvent param1MotionEvent) {
        return DragStartHelper.this.onTouch(param1View, param1MotionEvent);
      }
    };
  
  private final View mView;
  
  public DragStartHelper(View paramView, OnDragStartListener paramOnDragStartListener) {
    this.mView = paramView;
    this.mListener = paramOnDragStartListener;
  }
  
  public void attach() {
    this.mView.setOnLongClickListener(this.mLongClickListener);
    this.mView.setOnTouchListener(this.mTouchListener);
  }
  
  public void detach() {
    this.mView.setOnLongClickListener(null);
    this.mView.setOnTouchListener(null);
  }
  
  public void getTouchPosition(Point paramPoint) {
    paramPoint.set(this.mLastTouchX, this.mLastTouchY);
  }
  
  public boolean onLongClick(View paramView) {
    return this.mListener.onDragStart(paramView, this);
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
    int i = (int)paramMotionEvent.getX();
    int j = (int)paramMotionEvent.getY();
    int k = paramMotionEvent.getAction();
    if (k != 0) {
      if (k != 1)
        if (k != 2) {
          if (k != 3)
            return false; 
        } else {
          if (MotionEventCompat.isFromSource(paramMotionEvent, 8194) && (paramMotionEvent.getButtonState() & 0x1) != 0 && !this.mDragging && (this.mLastTouchX != i || this.mLastTouchY != j)) {
            this.mLastTouchX = i;
            this.mLastTouchY = j;
            this.mDragging = this.mListener.onDragStart(paramView, this);
            return this.mDragging;
          } 
          return false;
        }  
      this.mDragging = false;
    } else {
      this.mLastTouchX = i;
      this.mLastTouchY = j;
    } 
    return false;
  }
  
  public static interface OnDragStartListener {
    boolean onDragStart(View param1View, DragStartHelper param1DragStartHelper);
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/core/view/DragStartHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */