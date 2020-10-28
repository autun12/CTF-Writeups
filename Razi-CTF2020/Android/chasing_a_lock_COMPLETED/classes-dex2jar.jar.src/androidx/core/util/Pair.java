package androidx.core.util;

public class Pair<F, S> {
  public final F first;
  
  public final S second;
  
  public Pair(F paramF, S paramS) {
    this.first = paramF;
    this.second = paramS;
  }
  
  public static <A, B> Pair<A, B> create(A paramA, B paramB) {
    return new Pair<A, B>(paramA, paramB);
  }
  
  public boolean equals(Object paramObject) {
    boolean bool = paramObject instanceof Pair;
    boolean bool1 = false;
    if (!bool)
      return false; 
    paramObject = paramObject;
    bool = bool1;
    if (ObjectsCompat.equals(((Pair)paramObject).first, this.first)) {
      bool = bool1;
      if (ObjectsCompat.equals(((Pair)paramObject).second, this.second))
        bool = true; 
    } 
    return bool;
  }
  
  public int hashCode() {
    int j;
    F f = this.first;
    int i = 0;
    if (f == null) {
      j = 0;
    } else {
      j = f.hashCode();
    } 
    S s = this.second;
    if (s != null)
      i = s.hashCode(); 
    return j ^ i;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("Pair{");
    stringBuilder.append(String.valueOf(this.first));
    stringBuilder.append(" ");
    stringBuilder.append(String.valueOf(this.second));
    stringBuilder.append("}");
    return stringBuilder.toString();
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/core/util/Pair.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */