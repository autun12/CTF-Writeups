package androidx.core.telephony.mbms;

import android.content.Context;
import android.os.Build;
import android.os.LocaleList;
import android.telephony.mbms.ServiceInfo;
import java.util.Iterator;
import java.util.Locale;

public final class MbmsHelper {
  public static CharSequence getBestNameForService(Context paramContext, ServiceInfo paramServiceInfo) {
    CharSequence charSequence;
    int i = Build.VERSION.SDK_INT;
    Locale locale2 = null;
    if (i < 28)
      return null; 
    LocaleList localeList = paramContext.getResources().getConfiguration().getLocales();
    i = paramServiceInfo.getNamedContentLocales().size();
    if (i == 0)
      return null; 
    String[] arrayOfString = new String[i];
    i = 0;
    Iterator<Locale> iterator = paramServiceInfo.getNamedContentLocales().iterator();
    while (iterator.hasNext()) {
      arrayOfString[i] = ((Locale)iterator.next()).toLanguageTag();
      i++;
    } 
    Locale locale1 = localeList.getFirstMatch(arrayOfString);
    if (locale1 == null) {
      locale1 = locale2;
    } else {
      charSequence = paramServiceInfo.getNameForLocale(locale1);
    } 
    return charSequence;
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/core/telephony/mbms/MbmsHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */