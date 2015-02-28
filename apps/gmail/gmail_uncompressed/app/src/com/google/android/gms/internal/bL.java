package com.google.android.gms.internal;

import android.net.*;
import android.os.*;

final class bl implements bj
{
    private IBinder bzr;
    
    bl(final IBinder bzr) {
        this.bzr = bzr;
    }
    
    @Override
    public final void a(final bg bg, final Uri uri, final Bundle bundle, final boolean b) {
        while (true) {
            int n = 1;
            final Parcel obtain = Parcel.obtain();
            while (true) {
                Label_0136: {
                    Label_0121: {
                        try {
                            obtain.writeInterfaceToken("com.google.android.gms.panorama.internal.IPanoramaService");
                            IBinder binder = null;
                            if (bg != null) {
                                binder = bg.asBinder();
                            }
                            obtain.writeStrongBinder(binder);
                            if (uri != null) {
                                obtain.writeInt(1);
                                uri.writeToParcel(obtain, 0);
                            }
                            else {
                                obtain.writeInt(0);
                            }
                            if (bundle != null) {
                                obtain.writeInt(1);
                                bundle.writeToParcel(obtain, 0);
                                break Label_0136;
                            }
                            break Label_0121;
                            obtain.writeInt(n);
                            this.bzr.transact(1, obtain, (Parcel)null, 1);
                            return;
                        }
                        finally {
                            obtain.recycle();
                        }
                    }
                    obtain.writeInt(0);
                }
                if (b) {
                    continue;
                }
                n = 0;
                continue;
            }
        }
    }
    
    public final IBinder asBinder() {
        return this.bzr;
    }
}
