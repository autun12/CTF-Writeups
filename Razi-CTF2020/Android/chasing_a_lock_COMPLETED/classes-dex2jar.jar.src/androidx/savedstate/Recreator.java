package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.GenericLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

final class Recreator implements GenericLifecycleObserver {
  static final String CLASSES_KEY = "classes_to_restore";
  
  static final String COMPONENT_KEY = "androidx.savedstate.Restarter";
  
  private final SavedStateRegistryOwner mOwner;
  
  Recreator(SavedStateRegistryOwner paramSavedStateRegistryOwner) {
    this.mOwner = paramSavedStateRegistryOwner;
  }
  
  private void reflectiveNew(String paramString) {
    try {
      StringBuilder stringBuilder;
      Class<? extends SavedStateRegistry.AutoRecreated> clazz = Class.forName(paramString, false, Recreator.class.getClassLoader()).asSubclass(SavedStateRegistry.AutoRecreated.class);
      try {
        Constructor<? extends SavedStateRegistry.AutoRecreated> constructor = clazz.getDeclaredConstructor(new Class[0]);
        constructor.setAccessible(true);
        try {
          SavedStateRegistry.AutoRecreated autoRecreated = constructor.newInstance(new Object[0]);
          autoRecreated.onRecreated(this.mOwner);
          return;
        } catch (Exception exception) {
          stringBuilder = new StringBuilder();
          stringBuilder.append("Failed to instantiate ");
          stringBuilder.append(paramString);
          throw new RuntimeException(stringBuilder.toString(), exception);
        } 
      } catch (NoSuchMethodException noSuchMethodException) {
        StringBuilder stringBuilder1 = new StringBuilder();
        stringBuilder1.append("Class");
        stringBuilder1.append(stringBuilder.getSimpleName());
        stringBuilder1.append(" must have default constructor in order to be automatically recreated");
        throw new IllegalStateException(stringBuilder1.toString(), noSuchMethodException);
      } 
    } catch (ClassNotFoundException classNotFoundException) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("Class ");
      stringBuilder.append((String)noSuchMethodException);
      stringBuilder.append(" wasn't found");
      throw new RuntimeException(stringBuilder.toString(), classNotFoundException);
    } 
  }
  
  public void onStateChanged(LifecycleOwner paramLifecycleOwner, Lifecycle.Event paramEvent) {
    if (paramEvent == Lifecycle.Event.ON_CREATE) {
      paramLifecycleOwner.getLifecycle().removeObserver((LifecycleObserver)this);
      Bundle bundle = this.mOwner.getSavedStateRegistry().consumeRestoredStateForKey("androidx.savedstate.Restarter");
      if (bundle == null)
        return; 
      ArrayList arrayList = bundle.getStringArrayList("classes_to_restore");
      if (arrayList != null) {
        Iterator<String> iterator = arrayList.iterator();
        while (iterator.hasNext())
          reflectiveNew(iterator.next()); 
        return;
      } 
      throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
    } 
    throw new AssertionError("Next event must be ON_CREATE");
  }
  
  static final class SavedStateProvider implements SavedStateRegistry.SavedStateProvider {
    final Set<String> mClasses = new HashSet<String>();
    
    SavedStateProvider(SavedStateRegistry param1SavedStateRegistry) {
      param1SavedStateRegistry.registerSavedStateProvider("androidx.savedstate.Restarter", this);
    }
    
    void add(String param1String) {
      this.mClasses.add(param1String);
    }
    
    public Bundle saveState() {
      Bundle bundle = new Bundle();
      bundle.putStringArrayList("classes_to_restore", new ArrayList<String>(this.mClasses));
      return bundle;
    }
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/savedstate/Recreator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */