package androidx.core.os;

import java.util.Locale;

interface LocaleListInterface {
  Locale get(int paramInt);
  
  Locale getFirstMatch(String[] paramArrayOfString);
  
  Object getLocaleList();
  
  int indexOf(Locale paramLocale);
  
  boolean isEmpty();
  
  int size();
  
  String toLanguageTags();
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/core/os/LocaleListInterface.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */