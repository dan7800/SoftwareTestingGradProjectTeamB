package android.support.v4.c;

import android.os.*;

final class b<T> implements Parcelable$Creator<T>
{
    final c<T> fD;
    
    public b(final c<T> fd) {
        this.fD = fd;
    }
    
    public final T createFromParcel(final Parcel parcel) {
        return this.fD.createFromParcel(parcel, null);
    }
    
    public final T[] newArray(final int n) {
        return this.fD.newArray(n);
    }
}
