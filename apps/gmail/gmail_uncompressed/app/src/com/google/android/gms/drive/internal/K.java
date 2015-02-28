package com.google.android.gms.drive.internal;

import android.os.*;

final class k implements i
{
    private IBinder bzr;
    
    k(final IBinder bzr) {
        this.bzr = bzr;
    }
    
    @Override
    public final void a(final OnEventResponse onEventResponse) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IEventCallback");
            if (onEventResponse != null) {
                obtain.writeInt(1);
                onEventResponse.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            this.bzr.transact(1, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public final IBinder asBinder() {
        return this.bzr;
    }
}
