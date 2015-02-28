package com.google.android.gms.fitness.request;

import android.os.*;
import com.google.android.gms.fitness.data.*;

final class w implements s
{
    private IBinder bzr;
    
    w(final IBinder bzr) {
        this.bzr = bzr;
    }
    
    @Override
    public final void Nz() {
        final Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.fitness.request.IBleScanCallback");
            this.bzr.transact(2, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    @Override
    public final void a(final BleDevice bleDevice) {
        final Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.fitness.request.IBleScanCallback");
            if (bleDevice != null) {
                obtain.writeInt(1);
                bleDevice.writeToParcel(obtain, 0);
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
