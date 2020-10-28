package androidx.fragment.app;

import androidx.collection.SimpleArrayMap;
import java.lang.reflect.InvocationTargetException;

public class FragmentFactory {
  private static final SimpleArrayMap<String, Class<?>> sClassMap = new SimpleArrayMap();
  
  static boolean isFragmentClass(ClassLoader paramClassLoader, String paramString) {
    try {
      return Fragment.class.isAssignableFrom(loadClass(paramClassLoader, paramString));
    } catch (ClassNotFoundException classNotFoundException) {
      return false;
    } 
  }
  
  private static Class<?> loadClass(ClassLoader paramClassLoader, String paramString) throws ClassNotFoundException {
    Class<?> clazz1 = (Class)sClassMap.get(paramString);
    Class<?> clazz2 = clazz1;
    if (clazz1 == null) {
      clazz2 = Class.forName(paramString, false, paramClassLoader);
      sClassMap.put(paramString, clazz2);
    } 
    return clazz2;
  }
  
  public static Class<? extends Fragment> loadFragmentClass(ClassLoader paramClassLoader, String paramString) {
    try {
      return (Class)loadClass(paramClassLoader, paramString);
    } catch (ClassNotFoundException classNotFoundException) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("Unable to instantiate fragment ");
      stringBuilder.append(paramString);
      stringBuilder.append(": make sure class name exists");
      throw new Fragment.InstantiationException(stringBuilder.toString(), classNotFoundException);
    } catch (ClassCastException classCastException) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("Unable to instantiate fragment ");
      stringBuilder.append(paramString);
      stringBuilder.append(": make sure class is a valid subclass of Fragment");
      throw new Fragment.InstantiationException(stringBuilder.toString(), classCastException);
    } 
  }
  
  public Fragment instantiate(ClassLoader paramClassLoader, String paramString) {
    try {
      return loadFragmentClass(paramClassLoader, paramString).getConstructor(new Class[0]).newInstance(new Object[0]);
    } catch (InstantiationException instantiationException) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("Unable to instantiate fragment ");
      stringBuilder.append(paramString);
      stringBuilder.append(": make sure class name exists, is public, and has an empty constructor that is public");
      throw new Fragment.InstantiationException(stringBuilder.toString(), instantiationException);
    } catch (IllegalAccessException illegalAccessException) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("Unable to instantiate fragment ");
      stringBuilder.append(paramString);
      stringBuilder.append(": make sure class name exists, is public, and has an empty constructor that is public");
      throw new Fragment.InstantiationException(stringBuilder.toString(), illegalAccessException);
    } catch (NoSuchMethodException noSuchMethodException) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("Unable to instantiate fragment ");
      stringBuilder.append(paramString);
      stringBuilder.append(": could not find Fragment constructor");
      throw new Fragment.InstantiationException(stringBuilder.toString(), noSuchMethodException);
    } catch (InvocationTargetException invocationTargetException) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("Unable to instantiate fragment ");
      stringBuilder.append(paramString);
      stringBuilder.append(": calling Fragment constructor caused an exception");
      throw new Fragment.InstantiationException(stringBuilder.toString(), invocationTargetException);
    } 
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/fragment/app/FragmentFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */