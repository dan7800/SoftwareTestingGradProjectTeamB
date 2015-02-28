package com.google.android.gms.internal;

import android.os.*;

final class bf implements bc
{
    private IBinder bzr;
    
    bf(final IBinder bzr) {
        this.bzr = bzr;
    }
    
    @Override
    public final void a(final String s, final Bundle bundle, final Bundle bundle2) {
        while (true) {
            final Parcel obtain = Parcel.obtain();
            while (true) {
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.mdm.internal.INetworkQualityService");
                    obtain.writeString(s);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    }
                    else {
                        obtain.writeInt(0);
                    }
                    if (bundle2 != null) {
                        obtain.writeInt(1);
                        bundle2.writeToParcel(obtain, 0);
                        this.bzr.transact(1, obtain, (Parcel)null, 1);
                        return;
                    }
                }
                finally {
                    obtain.recycle();
                }
                obtain.writeInt(0);
                continue;
            }
        }
    }
    
    public final IBinder asBinder() {
        return this.bzr;
    }
}
