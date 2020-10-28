package androidx.collection;

public final class CircularIntArray {
  private int mCapacityBitmask;
  
  private int[] mElements;
  
  private int mHead;
  
  private int mTail;
  
  public CircularIntArray() {
    this(8);
  }
  
  public CircularIntArray(int paramInt) {
    if (paramInt >= 1) {
      if (paramInt <= 1073741824) {
        int i = paramInt;
        if (Integer.bitCount(paramInt) != 1)
          i = Integer.highestOneBit(paramInt - 1) << 1; 
        this.mCapacityBitmask = i - 1;
        this.mElements = new int[i];
        return;
      } 
      throw new IllegalArgumentException("capacity must be <= 2^30");
    } 
    throw new IllegalArgumentException("capacity must be >= 1");
  }
  
  private void doubleCapacity() {
    int[] arrayOfInt = this.mElements;
    int i = arrayOfInt.length;
    int j = this.mHead;
    int k = i - j;
    int m = i << 1;
    if (m >= 0) {
      int[] arrayOfInt1 = new int[m];
      System.arraycopy(arrayOfInt, j, arrayOfInt1, 0, k);
      System.arraycopy(this.mElements, 0, arrayOfInt1, k, this.mHead);
      this.mElements = arrayOfInt1;
      this.mHead = 0;
      this.mTail = i;
      this.mCapacityBitmask = m - 1;
      return;
    } 
    throw new RuntimeException("Max array capacity exceeded");
  }
  
  public void addFirst(int paramInt) {
    this.mHead = this.mHead - 1 & this.mCapacityBitmask;
    int[] arrayOfInt = this.mElements;
    int i = this.mHead;
    arrayOfInt[i] = paramInt;
    if (i == this.mTail)
      doubleCapacity(); 
  }
  
  public void addLast(int paramInt) {
    int[] arrayOfInt = this.mElements;
    int i = this.mTail;
    arrayOfInt[i] = paramInt;
    this.mTail = this.mCapacityBitmask & i + 1;
    if (this.mTail == this.mHead)
      doubleCapacity(); 
  }
  
  public void clear() {
    this.mTail = this.mHead;
  }
  
  public int get(int paramInt) {
    if (paramInt >= 0 && paramInt < size()) {
      int[] arrayOfInt = this.mElements;
      int i = this.mHead;
      return arrayOfInt[this.mCapacityBitmask & i + paramInt];
    } 
    throw new ArrayIndexOutOfBoundsException();
  }
  
  public int getFirst() {
    int i = this.mHead;
    if (i != this.mTail)
      return this.mElements[i]; 
    throw new ArrayIndexOutOfBoundsException();
  }
  
  public int getLast() {
    int i = this.mHead;
    int j = this.mTail;
    if (i != j)
      return this.mElements[j - 1 & this.mCapacityBitmask]; 
    throw new ArrayIndexOutOfBoundsException();
  }
  
  public boolean isEmpty() {
    boolean bool;
    if (this.mHead == this.mTail) {
      bool = true;
    } else {
      bool = false;
    } 
    return bool;
  }
  
  public int popFirst() {
    int i = this.mHead;
    if (i != this.mTail) {
      int j = this.mElements[i];
      this.mHead = i + 1 & this.mCapacityBitmask;
      return j;
    } 
    throw new ArrayIndexOutOfBoundsException();
  }
  
  public int popLast() {
    int i = this.mHead;
    int j = this.mTail;
    if (i != j) {
      j = this.mCapacityBitmask & j - 1;
      i = this.mElements[j];
      this.mTail = j;
      return i;
    } 
    throw new ArrayIndexOutOfBoundsException();
  }
  
  public void removeFromEnd(int paramInt) {
    if (paramInt <= 0)
      return; 
    if (paramInt <= size()) {
      int i = this.mTail;
      this.mTail = this.mCapacityBitmask & i - paramInt;
      return;
    } 
    throw new ArrayIndexOutOfBoundsException();
  }
  
  public void removeFromStart(int paramInt) {
    if (paramInt <= 0)
      return; 
    if (paramInt <= size()) {
      int i = this.mHead;
      this.mHead = this.mCapacityBitmask & i + paramInt;
      return;
    } 
    throw new ArrayIndexOutOfBoundsException();
  }
  
  public int size() {
    return this.mTail - this.mHead & this.mCapacityBitmask;
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/collection/CircularIntArray.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */