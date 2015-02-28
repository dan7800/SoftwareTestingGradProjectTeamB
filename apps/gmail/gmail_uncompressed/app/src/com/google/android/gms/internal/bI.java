package com.google.android.gms.internal;

import android.content.*;
import android.os.*;

final class bi implements bg
{
    private IBinder bzr;
    
    bi(final IBinder bzr) {
        this.bzr = bzr;
    }
    
    @Override
    public final void a(final int n, final Bundle bundle, final int n2, final Intent intent) {
        while (true) {
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            while (true) {
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.panorama.internal.IPanoramaCallbacks");
                    obtain.writeInt(n);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    }
                    else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(n2);
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                        this.bzr.transact(1, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
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
