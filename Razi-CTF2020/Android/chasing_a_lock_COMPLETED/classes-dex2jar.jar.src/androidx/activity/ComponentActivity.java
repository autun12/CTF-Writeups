package androidx.activity;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.core.app.ComponentActivity;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ReportFragment;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;

public class ComponentActivity extends ComponentActivity implements LifecycleOwner, ViewModelStoreOwner, SavedStateRegistryOwner, OnBackPressedDispatcherOwner {
  private int mContentLayoutId;
  
  private final LifecycleRegistry mLifecycleRegistry = new LifecycleRegistry(this);
  
  private final OnBackPressedDispatcher mOnBackPressedDispatcher = new OnBackPressedDispatcher(new Runnable() {
        public void run() {
          ComponentActivity.this.onBackPressed();
        }
      });
  
  private final SavedStateRegistryController mSavedStateRegistryController = SavedStateRegistryController.create(this);
  
  private ViewModelStore mViewModelStore;
  
  public ComponentActivity() {
    if (getLifecycle() != null) {
      if (Build.VERSION.SDK_INT >= 19)
        getLifecycle().addObserver((LifecycleObserver)new LifecycleEventObserver() {
              public void onStateChanged(LifecycleOwner param1LifecycleOwner, Lifecycle.Event param1Event) {
                if (param1Event == Lifecycle.Event.ON_STOP) {
                  Window window = ComponentActivity.this.getWindow();
                  if (window != null) {
                    View view = window.peekDecorView();
                  } else {
                    window = null;
                  } 
                  if (window != null)
                    window.cancelPendingInputEvents(); 
                } 
              }
            }); 
      getLifecycle().addObserver((LifecycleObserver)new LifecycleEventObserver() {
            public void onStateChanged(LifecycleOwner param1LifecycleOwner, Lifecycle.Event param1Event) {
              if (param1Event == Lifecycle.Event.ON_DESTROY && !ComponentActivity.this.isChangingConfigurations())
                ComponentActivity.this.getViewModelStore().clear(); 
            }
          });
      if (19 <= Build.VERSION.SDK_INT && Build.VERSION.SDK_INT <= 23)
        getLifecycle().addObserver((LifecycleObserver)new ImmLeaksCleaner((Activity)this)); 
      return;
    } 
    throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
  }
  
  public ComponentActivity(int paramInt) {
    this();
    this.mContentLayoutId = paramInt;
  }
  
  @Deprecated
  public Object getLastCustomNonConfigurationInstance() {
    NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances)getLastNonConfigurationInstance();
    if (nonConfigurationInstances != null) {
      Object object = nonConfigurationInstances.custom;
    } else {
      nonConfigurationInstances = null;
    } 
    return nonConfigurationInstances;
  }
  
  public Lifecycle getLifecycle() {
    return (Lifecycle)this.mLifecycleRegistry;
  }
  
  public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
    return this.mOnBackPressedDispatcher;
  }
  
  public final SavedStateRegistry getSavedStateRegistry() {
    return this.mSavedStateRegistryController.getSavedStateRegistry();
  }
  
  public ViewModelStore getViewModelStore() {
    if (getApplication() != null) {
      if (this.mViewModelStore == null) {
        NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances)getLastNonConfigurationInstance();
        if (nonConfigurationInstances != null)
          this.mViewModelStore = nonConfigurationInstances.viewModelStore; 
        if (this.mViewModelStore == null)
          this.mViewModelStore = new ViewModelStore(); 
      } 
      return this.mViewModelStore;
    } 
    throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
  }
  
  public void onBackPressed() {
    this.mOnBackPressedDispatcher.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.mSavedStateRegistryController.performRestore(paramBundle);
    ReportFragment.injectIfNeededIn((Activity)this);
    int i = this.mContentLayoutId;
    if (i != 0)
      setContentView(i); 
  }
  
  @Deprecated
  public Object onRetainCustomNonConfigurationInstance() {
    return null;
  }
  
  public final Object onRetainNonConfigurationInstance() {
    Object object = onRetainCustomNonConfigurationInstance();
    ViewModelStore viewModelStore1 = this.mViewModelStore;
    ViewModelStore viewModelStore2 = viewModelStore1;
    if (viewModelStore1 == null) {
      NonConfigurationInstances nonConfigurationInstances1 = (NonConfigurationInstances)getLastNonConfigurationInstance();
      viewModelStore2 = viewModelStore1;
      if (nonConfigurationInstances1 != null)
        viewModelStore2 = nonConfigurationInstances1.viewModelStore; 
    } 
    if (viewModelStore2 == null && object == null)
      return null; 
    NonConfigurationInstances nonConfigurationInstances = new NonConfigurationInstances();
    nonConfigurationInstances.custom = object;
    nonConfigurationInstances.viewModelStore = viewModelStore2;
    return nonConfigurationInstances;
  }
  
  protected void onSaveInstanceState(Bundle paramBundle) {
    Lifecycle lifecycle = getLifecycle();
    if (lifecycle instanceof LifecycleRegistry)
      ((LifecycleRegistry)lifecycle).setCurrentState(Lifecycle.State.CREATED); 
    super.onSaveInstanceState(paramBundle);
    this.mSavedStateRegistryController.performSave(paramBundle);
  }
  
  static final class NonConfigurationInstances {
    Object custom;
    
    ViewModelStore viewModelStore;
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/activity/ComponentActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */