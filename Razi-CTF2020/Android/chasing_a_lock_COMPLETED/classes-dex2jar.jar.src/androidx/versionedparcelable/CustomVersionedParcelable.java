package androidx.versionedparcelable;

public abstract class CustomVersionedParcelable implements VersionedParcelable {
  public void onPostParceling() {}
  
  public void onPreParceling(boolean paramBoolean) {}
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/versionedparcelable/CustomVersionedParcelable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */