package com.google.android.gms.common.internal;

import android.os.*;

final class x implements v
{
    private IBinder bzr;
    
    x(final IBinder bzr) {
        this.bzr = bzr;
    }
    
    public final IBinder asBinder() {
        return this.bzr;
    }
    
    @Override
    public final void cancel() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.ICancelToken");
            this.bzr.transact(2, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
