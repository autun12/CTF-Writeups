package androidx.appcompat.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

public abstract class ActionMode {
  private Object mTag;
  
  private boolean mTitleOptionalHint;
  
  public abstract void finish();
  
  public abstract View getCustomView();
  
  public abstract Menu getMenu();
  
  public abstract MenuInflater getMenuInflater();
  
  public abstract CharSequence getSubtitle();
  
  public Object getTag() {
    return this.mTag;
  }
  
  public abstract CharSequence getTitle();
  
  public boolean getTitleOptionalHint() {
    return this.mTitleOptionalHint;
  }
  
  public abstract void invalidate();
  
  public boolean isTitleOptional() {
    return false;
  }
  
  public boolean isUiFocusable() {
    return true;
  }
  
  public abstract void setCustomView(View paramView);
  
  public abstract void setSubtitle(int paramInt);
  
  public abstract void setSubtitle(CharSequence paramCharSequence);
  
  public void setTag(Object paramObject) {
    this.mTag = paramObject;
  }
  
  public abstract void setTitle(int paramInt);
  
  public abstract void setTitle(CharSequence paramCharSequence);
  
  public void setTitleOptionalHint(boolean paramBoolean) {
    this.mTitleOptionalHint = paramBoolean;
  }
  
  public static interface Callback {
    boolean onActionItemClicked(ActionMode param1ActionMode, MenuItem param1MenuItem);
    
    boolean onCreateActionMode(ActionMode param1ActionMode, Menu param1Menu);
    
    void onDestroyActionMode(ActionMode param1ActionMode);
    
    boolean onPrepareActionMode(ActionMode param1ActionMode, Menu param1Menu);
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/appcompat/view/ActionMode.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */