package com.android.emailcommon.service;

import android.os.*;

final class w implements u
{
    private IBinder cC;
    
    w(final IBinder cc) {
        this.cC = cc;
    }
    
    @Override
    public final void a(final long n, final long n2, final int n3, final int n4) {
        final Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.emailcommon.service.IEmailServiceCallback");
            obtain.writeLong(n);
            obtain.writeLong(n2);
            obtain.writeInt(n3);
            obtain.writeInt(n4);
            this.cC.transact(1, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public final IBinder asBinder() {
        return this.cC;
    }
}
