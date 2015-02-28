package android.support.v4.c;

import android.os.*;

final class d<T> implements Parcelable$ClassLoaderCreator<T>
{
    private final c<T> fD;
    
    public d(final c<T> fd) {
        this.fD = fd;
    }
    
    public final T createFromParcel(final Parcel parcel) {
        return this.fD.createFromParcel(parcel, null);
    }
    
    public final T createFromParcel(final Parcel parcel, final ClassLoader classLoader) {
        return this.fD.createFromParcel(parcel, classLoader);
    }
    
    public final T[] newArray(final int n) {
        return this.fD.newArray(n);
    }
}
