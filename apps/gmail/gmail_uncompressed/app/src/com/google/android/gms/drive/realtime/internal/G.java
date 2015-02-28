package com.google.android.gms.drive.realtime.internal;

import com.google.android.gms.common.api.*;
import android.os.*;

final class g implements e
{
    private IBinder bzr;
    
    g(final IBinder bzr) {
        this.bzr = bzr;
    }
    
    public final IBinder asBinder() {
        return this.bzr;
    }
    
    @Override
    public final void c(final Status status) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IBooleanCallback");
            if (status != null) {
                obtain.writeInt(1);
                status.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            this.bzr.transact(2, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final void cf(final boolean b) {
        int n = 1;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IBooleanCallback");
            if (!b) {
                n = 0;
            }
            obtain.writeInt(n);
            this.bzr.transact(1, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
