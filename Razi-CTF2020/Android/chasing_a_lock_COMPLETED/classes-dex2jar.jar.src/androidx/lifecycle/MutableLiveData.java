package androidx.lifecycle;

public class MutableLiveData<T> extends LiveData<T> {
  public void postValue(T paramT) {
    super.postValue(paramT);
  }
  
  public void setValue(T paramT) {
    super.setValue(paramT);
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/lifecycle/MutableLiveData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */