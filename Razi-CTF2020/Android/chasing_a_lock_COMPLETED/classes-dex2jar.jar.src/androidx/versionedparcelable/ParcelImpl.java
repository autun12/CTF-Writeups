package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;

public class ParcelImpl implements Parcelable {
  public static final Parcelable.Creator<ParcelImpl> CREATOR = new Parcelable.Creator<ParcelImpl>() {
      public ParcelImpl createFromParcel(Parcel param1Parcel) {
        return new ParcelImpl(param1Parcel);
      }
      
      public ParcelImpl[] newArray(int param1Int) {
        return new ParcelImpl[param1Int];
      }
    };
  
  private final VersionedParcelable mParcel;
  
  protected ParcelImpl(Parcel paramParcel) {
    this.mParcel = (new VersionedParcelParcel(paramParcel)).readVersionedParcelable();
  }
  
  public ParcelImpl(VersionedParcelable paramVersionedParcelable) {
    this.mParcel = paramVersionedParcelable;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public <T extends VersionedParcelable> T getVersionedParcel() {
    return (T)this.mParcel;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    (new VersionedParcelParcel(paramParcel)).writeVersionedParcelable(this.mParcel);
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/versionedparcelable/ParcelImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */