package com.google.android.gms.drive.realtime.internal;

import android.os.*;

final class v implements t
{
    private IBinder bzr;
    
    v(final IBinder bzr) {
        this.bzr = bzr;
    }
    
    public final IBinder asBinder() {
        return this.bzr;
    }
    
    @Override
    public final void j(final boolean b, final boolean b2) {
        int n = 1;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IDocumentSaveStateEventCallback");
            int n2;
            if (b) {
                n2 = n;
            }
            else {
                n2 = 0;
            }
            obtain.writeInt(n2);
            if (!b2) {
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
