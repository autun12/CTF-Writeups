package androidx.core.content;

import android.content.ContentProvider;
import android.content.Context;

public final class ContentProviderCompat {
  public static Context requireContext(ContentProvider paramContentProvider) {
    Context context = paramContentProvider.getContext();
    if (context != null)
      return context; 
    throw new IllegalStateException("Cannot find context from the provider.");
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/core/content/ContentProviderCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */