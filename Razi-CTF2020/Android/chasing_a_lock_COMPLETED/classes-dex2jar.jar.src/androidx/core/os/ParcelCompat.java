package androidx.core.os;

import android.os.Parcel;

public final class ParcelCompat {
  public static boolean readBoolean(Parcel paramParcel) {
    boolean bool;
    if (paramParcel.readInt() != 0) {
      bool = true;
    } else {
      bool = false;
    } 
    return bool;
  }
  
  public static void writeBoolean(Parcel paramParcel, boolean paramBoolean) {
    paramParcel.writeInt(paramBoolean);
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/core/os/ParcelCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */