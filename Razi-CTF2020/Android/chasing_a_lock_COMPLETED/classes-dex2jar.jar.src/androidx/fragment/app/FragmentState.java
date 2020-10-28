package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.lifecycle.Lifecycle;

final class FragmentState implements Parcelable {
  public static final Parcelable.Creator<FragmentState> CREATOR = new Parcelable.Creator<FragmentState>() {
      public FragmentState createFromParcel(Parcel param1Parcel) {
        return new FragmentState(param1Parcel);
      }
      
      public FragmentState[] newArray(int param1Int) {
        return new FragmentState[param1Int];
      }
    };
  
  final Bundle mArguments;
  
  final String mClassName;
  
  final int mContainerId;
  
  final boolean mDetached;
  
  final int mFragmentId;
  
  final boolean mFromLayout;
  
  final boolean mHidden;
  
  Fragment mInstance;
  
  final int mMaxLifecycleState;
  
  final boolean mRemoving;
  
  final boolean mRetainInstance;
  
  Bundle mSavedFragmentState;
  
  final String mTag;
  
  final String mWho;
  
  FragmentState(Parcel paramParcel) {
    boolean bool2;
    this.mClassName = paramParcel.readString();
    this.mWho = paramParcel.readString();
    int i = paramParcel.readInt();
    boolean bool1 = true;
    if (i != 0) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    this.mFromLayout = bool2;
    this.mFragmentId = paramParcel.readInt();
    this.mContainerId = paramParcel.readInt();
    this.mTag = paramParcel.readString();
    if (paramParcel.readInt() != 0) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    this.mRetainInstance = bool2;
    if (paramParcel.readInt() != 0) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    this.mRemoving = bool2;
    if (paramParcel.readInt() != 0) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    this.mDetached = bool2;
    this.mArguments = paramParcel.readBundle();
    if (paramParcel.readInt() != 0) {
      bool2 = bool1;
    } else {
      bool2 = false;
    } 
    this.mHidden = bool2;
    this.mSavedFragmentState = paramParcel.readBundle();
    this.mMaxLifecycleState = paramParcel.readInt();
  }
  
  FragmentState(Fragment paramFragment) {
    this.mClassName = paramFragment.getClass().getName();
    this.mWho = paramFragment.mWho;
    this.mFromLayout = paramFragment.mFromLayout;
    this.mFragmentId = paramFragment.mFragmentId;
    this.mContainerId = paramFragment.mContainerId;
    this.mTag = paramFragment.mTag;
    this.mRetainInstance = paramFragment.mRetainInstance;
    this.mRemoving = paramFragment.mRemoving;
    this.mDetached = paramFragment.mDetached;
    this.mArguments = paramFragment.mArguments;
    this.mHidden = paramFragment.mHidden;
    this.mMaxLifecycleState = paramFragment.mMaxState.ordinal();
  }
  
  public int describeContents() {
    return 0;
  }
  
  public Fragment instantiate(ClassLoader paramClassLoader, FragmentFactory paramFragmentFactory) {
    if (this.mInstance == null) {
      Bundle bundle2 = this.mArguments;
      if (bundle2 != null)
        bundle2.setClassLoader(paramClassLoader); 
      this.mInstance = paramFragmentFactory.instantiate(paramClassLoader, this.mClassName);
      this.mInstance.setArguments(this.mArguments);
      Bundle bundle1 = this.mSavedFragmentState;
      if (bundle1 != null) {
        bundle1.setClassLoader(paramClassLoader);
        this.mInstance.mSavedFragmentState = this.mSavedFragmentState;
      } else {
        this.mInstance.mSavedFragmentState = new Bundle();
      } 
      Fragment fragment = this.mInstance;
      fragment.mWho = this.mWho;
      fragment.mFromLayout = this.mFromLayout;
      fragment.mRestored = true;
      fragment.mFragmentId = this.mFragmentId;
      fragment.mContainerId = this.mContainerId;
      fragment.mTag = this.mTag;
      fragment.mRetainInstance = this.mRetainInstance;
      fragment.mRemoving = this.mRemoving;
      fragment.mDetached = this.mDetached;
      fragment.mHidden = this.mHidden;
      fragment.mMaxState = Lifecycle.State.values()[this.mMaxLifecycleState];
      if (FragmentManagerImpl.DEBUG) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Instantiated fragment ");
        stringBuilder.append(this.mInstance);
        Log.v("FragmentManager", stringBuilder.toString());
      } 
    } 
    return this.mInstance;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder(128);
    stringBuilder.append("FragmentState{");
    stringBuilder.append(this.mClassName);
    stringBuilder.append(" (");
    stringBuilder.append(this.mWho);
    stringBuilder.append(")}:");
    if (this.mFromLayout)
      stringBuilder.append(" fromLayout"); 
    if (this.mContainerId != 0) {
      stringBuilder.append(" id=0x");
      stringBuilder.append(Integer.toHexString(this.mContainerId));
    } 
    String str = this.mTag;
    if (str != null && !str.isEmpty()) {
      stringBuilder.append(" tag=");
      stringBuilder.append(this.mTag);
    } 
    if (this.mRetainInstance)
      stringBuilder.append(" retainInstance"); 
    if (this.mRemoving)
      stringBuilder.append(" removing"); 
    if (this.mDetached)
      stringBuilder.append(" detached"); 
    if (this.mHidden)
      stringBuilder.append(" hidden"); 
    return stringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeString(this.mClassName);
    paramParcel.writeString(this.mWho);
    paramParcel.writeInt(this.mFromLayout);
    paramParcel.writeInt(this.mFragmentId);
    paramParcel.writeInt(this.mContainerId);
    paramParcel.writeString(this.mTag);
    paramParcel.writeInt(this.mRetainInstance);
    paramParcel.writeInt(this.mRemoving);
    paramParcel.writeInt(this.mDetached);
    paramParcel.writeBundle(this.mArguments);
    paramParcel.writeInt(this.mHidden);
    paramParcel.writeBundle(this.mSavedFragmentState);
    paramParcel.writeInt(this.mMaxLifecycleState);
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/fragment/app/FragmentState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */