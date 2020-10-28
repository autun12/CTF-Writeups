package androidx.core.os;

import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;

public final class LocaleListCompat {
  private static final LocaleListCompat sEmptyLocaleList = create(new Locale[0]);
  
  private LocaleListInterface mImpl;
  
  private LocaleListCompat(LocaleListInterface paramLocaleListInterface) {
    this.mImpl = paramLocaleListInterface;
  }
  
  public static LocaleListCompat create(Locale... paramVarArgs) {
    return (Build.VERSION.SDK_INT >= 24) ? wrap(new LocaleList(paramVarArgs)) : new LocaleListCompat(new LocaleListCompatWrapper(paramVarArgs));
  }
  
  static Locale forLanguageTagCompat(String paramString) {
    if (paramString.contains("-")) {
      String[] arrayOfString = paramString.split("-", -1);
      if (arrayOfString.length > 2)
        return new Locale(arrayOfString[0], arrayOfString[1], arrayOfString[2]); 
      if (arrayOfString.length > 1)
        return new Locale(arrayOfString[0], arrayOfString[1]); 
      if (arrayOfString.length == 1)
        return new Locale(arrayOfString[0]); 
    } else {
      if (paramString.contains("_")) {
        String[] arrayOfString = paramString.split("_", -1);
        if (arrayOfString.length > 2)
          return new Locale(arrayOfString[0], arrayOfString[1], arrayOfString[2]); 
        if (arrayOfString.length > 1)
          return new Locale(arrayOfString[0], arrayOfString[1]); 
        if (arrayOfString.length == 1)
          return new Locale(arrayOfString[0]); 
        StringBuilder stringBuilder1 = new StringBuilder();
        stringBuilder1.append("Can not parse language tag: [");
        stringBuilder1.append(paramString);
        stringBuilder1.append("]");
        throw new IllegalArgumentException(stringBuilder1.toString());
      } 
      return new Locale(paramString);
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("Can not parse language tag: [");
    stringBuilder.append(paramString);
    stringBuilder.append("]");
    throw new IllegalArgumentException(stringBuilder.toString());
  }
  
  public static LocaleListCompat forLanguageTags(String paramString) {
    if (paramString == null || paramString.isEmpty())
      return getEmptyLocaleList(); 
    String[] arrayOfString = paramString.split(",", -1);
    Locale[] arrayOfLocale = new Locale[arrayOfString.length];
    for (byte b = 0; b < arrayOfLocale.length; b++) {
      Locale locale;
      if (Build.VERSION.SDK_INT >= 21) {
        locale = Locale.forLanguageTag(arrayOfString[b]);
      } else {
        locale = forLanguageTagCompat(arrayOfString[b]);
      } 
      arrayOfLocale[b] = locale;
    } 
    return create(arrayOfLocale);
  }
  
  public static LocaleListCompat getAdjustedDefault() {
    return (Build.VERSION.SDK_INT >= 24) ? wrap(LocaleList.getAdjustedDefault()) : create(new Locale[] { Locale.getDefault() });
  }
  
  public static LocaleListCompat getDefault() {
    return (Build.VERSION.SDK_INT >= 24) ? wrap(LocaleList.getDefault()) : create(new Locale[] { Locale.getDefault() });
  }
  
  public static LocaleListCompat getEmptyLocaleList() {
    return sEmptyLocaleList;
  }
  
  public static LocaleListCompat wrap(LocaleList paramLocaleList) {
    return new LocaleListCompat(new LocaleListPlatformWrapper(paramLocaleList));
  }
  
  @Deprecated
  public static LocaleListCompat wrap(Object paramObject) {
    return wrap((LocaleList)paramObject);
  }
  
  public boolean equals(Object paramObject) {
    boolean bool;
    if (paramObject instanceof LocaleListCompat && this.mImpl.equals(((LocaleListCompat)paramObject).mImpl)) {
      bool = true;
    } else {
      bool = false;
    } 
    return bool;
  }
  
  public Locale get(int paramInt) {
    return this.mImpl.get(paramInt);
  }
  
  public Locale getFirstMatch(String[] paramArrayOfString) {
    return this.mImpl.getFirstMatch(paramArrayOfString);
  }
  
  public int hashCode() {
    return this.mImpl.hashCode();
  }
  
  public int indexOf(Locale paramLocale) {
    return this.mImpl.indexOf(paramLocale);
  }
  
  public boolean isEmpty() {
    return this.mImpl.isEmpty();
  }
  
  public int size() {
    return this.mImpl.size();
  }
  
  public String toLanguageTags() {
    return this.mImpl.toLanguageTags();
  }
  
  public String toString() {
    return this.mImpl.toString();
  }
  
  public Object unwrap() {
    return this.mImpl.getLocaleList();
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/core/os/LocaleListCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */