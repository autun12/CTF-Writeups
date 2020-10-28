package androidx.lifecycle;

import androidx.arch.core.util.Function;

public class Transformations {
  public static <X, Y> LiveData<Y> map(LiveData<X> paramLiveData, final Function<X, Y> mapFunction) {
    final MediatorLiveData<Y> result = new MediatorLiveData();
    mediatorLiveData.addSource(paramLiveData, new Observer<X>() {
          public void onChanged(X param1X) {
            result.setValue(mapFunction.apply(param1X));
          }
        });
    return mediatorLiveData;
  }
  
  public static <X, Y> LiveData<Y> switchMap(LiveData<X> paramLiveData, final Function<X, LiveData<Y>> switchMapFunction) {
    final MediatorLiveData<Y> result = new MediatorLiveData();
    mediatorLiveData.addSource(paramLiveData, new Observer<X>() {
          LiveData<Y> mSource;
          
          public void onChanged(X param1X) {
            LiveData<Y> liveData1 = (LiveData)switchMapFunction.apply(param1X);
            LiveData<Y> liveData2 = this.mSource;
            if (liveData2 == liveData1)
              return; 
            if (liveData2 != null)
              result.removeSource(liveData2); 
            this.mSource = liveData1;
            liveData1 = this.mSource;
            if (liveData1 != null)
              result.addSource(liveData1, new Observer() {
                    public void onChanged(Y param2Y) {
                      result.setValue(param2Y);
                    }
                  }); 
          }
        });
    return mediatorLiveData;
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/lifecycle/Transformations.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */