package androidx.core.os;

import android.os.Build;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Locale;

final class LocaleListCompatWrapper implements LocaleListInterface {
  private static final Locale EN_LATN;
  
  private static final Locale LOCALE_AR_XB;
  
  private static final Locale LOCALE_EN_XA;
  
  private static final Locale[] sEmptyList = new Locale[0];
  
  private final Locale[] mList;
  
  private final String mStringRepresentation;
  
  static {
    LOCALE_EN_XA = new Locale("en", "XA");
    LOCALE_AR_XB = new Locale("ar", "XB");
    EN_LATN = LocaleListCompat.forLanguageTagCompat("en-Latn");
  }
  
  LocaleListCompatWrapper(Locale... paramVarArgs) {
    if (paramVarArgs.length == 0) {
      this.mList = sEmptyList;
      this.mStringRepresentation = "";
    } else {
      Locale[] arrayOfLocale = new Locale[paramVarArgs.length];
      HashSet<Locale> hashSet = new HashSet();
      StringBuilder stringBuilder = new StringBuilder();
      byte b = 0;
      while (b < paramVarArgs.length) {
        Locale locale = paramVarArgs[b];
        if (locale != null) {
          if (!hashSet.contains(locale)) {
            locale = (Locale)locale.clone();
            arrayOfLocale[b] = locale;
            toLanguageTag(stringBuilder, locale);
            if (b < paramVarArgs.length - 1)
              stringBuilder.append(','); 
            hashSet.add(locale);
            b++;
            continue;
          } 
          StringBuilder stringBuilder2 = new StringBuilder();
          stringBuilder2.append("list[");
          stringBuilder2.append(b);
          stringBuilder2.append("] is a repetition");
          throw new IllegalArgumentException(stringBuilder2.toString());
        } 
        StringBuilder stringBuilder1 = new StringBuilder();
        stringBuilder1.append("list[");
        stringBuilder1.append(b);
        stringBuilder1.append("] is null");
        throw new NullPointerException(stringBuilder1.toString());
      } 
      this.mList = arrayOfLocale;
      this.mStringRepresentation = stringBuilder.toString();
    } 
  }
  
  private Locale computeFirstMatch(Collection<String> paramCollection, boolean paramBoolean) {
    Locale locale;
    int i = computeFirstMatchIndex(paramCollection, paramBoolean);
    if (i == -1) {
      paramCollection = null;
    } else {
      locale = this.mList[i];
    } 
    return locale;
  }
  
  private int computeFirstMatchIndex(Collection<String> paramCollection, boolean paramBoolean) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mList : [Ljava/util/Locale;
    //   4: astore_3
    //   5: aload_3
    //   6: arraylength
    //   7: iconst_1
    //   8: if_icmpne -> 13
    //   11: iconst_0
    //   12: ireturn
    //   13: aload_3
    //   14: arraylength
    //   15: ifne -> 20
    //   18: iconst_m1
    //   19: ireturn
    //   20: iload_2
    //   21: ifeq -> 50
    //   24: aload_0
    //   25: getstatic androidx/core/os/LocaleListCompatWrapper.EN_LATN : Ljava/util/Locale;
    //   28: invokespecial findFirstMatchIndex : (Ljava/util/Locale;)I
    //   31: istore #4
    //   33: iload #4
    //   35: ifne -> 40
    //   38: iconst_0
    //   39: ireturn
    //   40: iload #4
    //   42: ldc 2147483647
    //   44: if_icmpge -> 50
    //   47: goto -> 54
    //   50: ldc 2147483647
    //   52: istore #4
    //   54: aload_1
    //   55: invokeinterface iterator : ()Ljava/util/Iterator;
    //   60: astore_1
    //   61: aload_1
    //   62: invokeinterface hasNext : ()Z
    //   67: ifeq -> 109
    //   70: aload_0
    //   71: aload_1
    //   72: invokeinterface next : ()Ljava/lang/Object;
    //   77: checkcast java/lang/String
    //   80: invokestatic forLanguageTagCompat : (Ljava/lang/String;)Ljava/util/Locale;
    //   83: invokespecial findFirstMatchIndex : (Ljava/util/Locale;)I
    //   86: istore #5
    //   88: iload #5
    //   90: ifne -> 95
    //   93: iconst_0
    //   94: ireturn
    //   95: iload #5
    //   97: iload #4
    //   99: if_icmpge -> 61
    //   102: iload #5
    //   104: istore #4
    //   106: goto -> 61
    //   109: iload #4
    //   111: ldc 2147483647
    //   113: if_icmpne -> 118
    //   116: iconst_0
    //   117: ireturn
    //   118: iload #4
    //   120: ireturn
  }
  
  private int findFirstMatchIndex(Locale paramLocale) {
    byte b = 0;
    while (true) {
      Locale[] arrayOfLocale = this.mList;
      if (b < arrayOfLocale.length) {
        if (matchScore(paramLocale, arrayOfLocale[b]) > 0)
          return b; 
        b++;
        continue;
      } 
      return Integer.MAX_VALUE;
    } 
  }
  
  private static String getLikelyScript(Locale paramLocale) {
    if (Build.VERSION.SDK_INT >= 21) {
      String str = paramLocale.getScript();
      if (!str.isEmpty())
        return str; 
    } 
    return "";
  }
  
  private static boolean isPseudoLocale(Locale paramLocale) {
    return (LOCALE_EN_XA.equals(paramLocale) || LOCALE_AR_XB.equals(paramLocale));
  }
  
  private static int matchScore(Locale paramLocale1, Locale paramLocale2) {
    boolean bool = paramLocale1.equals(paramLocale2);
    boolean bool1 = true;
    if (bool)
      return 1; 
    if (!paramLocale1.getLanguage().equals(paramLocale2.getLanguage()))
      return 0; 
    if (isPseudoLocale(paramLocale1) || isPseudoLocale(paramLocale2))
      return 0; 
    String str = getLikelyScript(paramLocale1);
    if (str.isEmpty()) {
      String str1 = paramLocale1.getCountry();
      boolean bool2 = bool1;
      if (!str1.isEmpty())
        if (str1.equals(paramLocale2.getCountry())) {
          bool2 = bool1;
        } else {
          bool2 = false;
        }  
      return bool2;
    } 
    return str.equals(getLikelyScript(paramLocale2));
  }
  
  static void toLanguageTag(StringBuilder paramStringBuilder, Locale paramLocale) {
    paramStringBuilder.append(paramLocale.getLanguage());
    String str = paramLocale.getCountry();
    if (str != null && !str.isEmpty()) {
      paramStringBuilder.append('-');
      paramStringBuilder.append(paramLocale.getCountry());
    } 
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject == this)
      return true; 
    if (!(paramObject instanceof LocaleListCompatWrapper))
      return false; 
    Locale[] arrayOfLocale = ((LocaleListCompatWrapper)paramObject).mList;
    if (this.mList.length != arrayOfLocale.length)
      return false; 
    byte b = 0;
    while (true) {
      paramObject = this.mList;
      if (b < paramObject.length) {
        if (!paramObject[b].equals(arrayOfLocale[b]))
          return false; 
        b++;
        continue;
      } 
      return true;
    } 
  }
  
  public Locale get(int paramInt) {
    if (paramInt >= 0) {
      Locale[] arrayOfLocale = this.mList;
      if (paramInt < arrayOfLocale.length)
        return arrayOfLocale[paramInt]; 
    } 
    return null;
  }
  
  public Locale getFirstMatch(String[] paramArrayOfString) {
    return computeFirstMatch(Arrays.asList(paramArrayOfString), false);
  }
  
  public Object getLocaleList() {
    return null;
  }
  
  public int hashCode() {
    int i = 1;
    byte b = 0;
    while (true) {
      Locale[] arrayOfLocale = this.mList;
      if (b < arrayOfLocale.length) {
        i = i * 31 + arrayOfLocale[b].hashCode();
        b++;
        continue;
      } 
      return i;
    } 
  }
  
  public int indexOf(Locale paramLocale) {
    byte b = 0;
    while (true) {
      Locale[] arrayOfLocale = this.mList;
      if (b < arrayOfLocale.length) {
        if (arrayOfLocale[b].equals(paramLocale))
          return b; 
        b++;
        continue;
      } 
      return -1;
    } 
  }
  
  public boolean isEmpty() {
    boolean bool;
    if (this.mList.length == 0) {
      bool = true;
    } else {
      bool = false;
    } 
    return bool;
  }
  
  public int size() {
    return this.mList.length;
  }
  
  public String toLanguageTags() {
    return this.mStringRepresentation;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("[");
    byte b = 0;
    while (true) {
      Locale[] arrayOfLocale = this.mList;
      if (b < arrayOfLocale.length) {
        stringBuilder.append(arrayOfLocale[b]);
        if (b < this.mList.length - 1)
          stringBuilder.append(','); 
        b++;
        continue;
      } 
      stringBuilder.append("]");
      return stringBuilder.toString();
    } 
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/core/os/LocaleListCompatWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */