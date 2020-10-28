package androidx.lifecycle;

import androidx.arch.core.executor.ArchTaskExecutor;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class ComputableLiveData<T> {
  final AtomicBoolean mComputing = new AtomicBoolean(false);
  
  final Executor mExecutor;
  
  final AtomicBoolean mInvalid = new AtomicBoolean(true);
  
  final Runnable mInvalidationRunnable = new Runnable() {
      public void run() {
        boolean bool = ComputableLiveData.this.mLiveData.hasActiveObservers();
        if (ComputableLiveData.this.mInvalid.compareAndSet(false, true) && bool)
          ComputableLiveData.this.mExecutor.execute(ComputableLiveData.this.mRefreshRunnable); 
      }
    };
  
  final LiveData<T> mLiveData;
  
  final Runnable mRefreshRunnable = new Runnable() {
      public void run() {
        boolean bool;
        do {
          if (ComputableLiveData.this.mComputing.compareAndSet(false, true)) {
            null = null;
            bool = false;
            try {
              while (ComputableLiveData.this.mInvalid.compareAndSet(true, false)) {
                null = (Exception)ComputableLiveData.this.compute();
                bool = true;
              } 
              if (bool)
                ComputableLiveData.this.mLiveData.postValue(null); 
            } finally {
              ComputableLiveData.this.mComputing.set(false);
            } 
          } else {
            bool = false;
          } 
        } while (bool && ComputableLiveData.this.mInvalid.get());
      }
    };
  
  public ComputableLiveData() {
    this(ArchTaskExecutor.getIOThreadExecutor());
  }
  
  public ComputableLiveData(Executor paramExecutor) {
    this.mExecutor = paramExecutor;
    this.mLiveData = new LiveData<T>() {
        protected void onActive() {
          ComputableLiveData.this.mExecutor.execute(ComputableLiveData.this.mRefreshRunnable);
        }
      };
  }
  
  protected abstract T compute();
  
  public LiveData<T> getLiveData() {
    return this.mLiveData;
  }
  
  public void invalidate() {
    ArchTaskExecutor.getInstance().executeOnMainThread(this.mInvalidationRunnable);
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/lifecycle/ComputableLiveData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */