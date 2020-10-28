package androidx.core.os;

public class OperationCanceledException extends RuntimeException {
  public OperationCanceledException() {
    this(null);
  }
  
  public OperationCanceledException(String paramString) {
    super(paramString);
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/core/os/OperationCanceledException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */