package android.support.v4.app;

import android.os.*;

public class Fragment$SavedState implements Parcelable
{
    public static final Parcelable$Creator<Fragment$SavedState> CREATOR;
    final Bundle bm;
    
    static {
        CREATOR = (Parcelable$Creator)new j();
    }
    
    Fragment$SavedState(final Parcel parcel) {
        this.bm = parcel.readBundle();
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeBundle(this.bm);
    }
}
