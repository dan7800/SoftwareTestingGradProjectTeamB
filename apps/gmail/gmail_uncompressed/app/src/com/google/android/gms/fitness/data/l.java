package com.google.android.gms.fitness.data;

import android.os.*;

final class l implements j
{
    private IBinder bzr;
    
    l(final IBinder bzr) {
        this.bzr = bzr;
    }
    
    @Override
    public final void a(final DataPoint dataPoint) {
        final Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.fitness.data.IDataSourceListener");
            if (dataPoint != null) {
                obtain.writeInt(1);
                dataPoint.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            this.bzr.transact(1, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public final IBinder asBinder() {
        return this.bzr;
    }
}
