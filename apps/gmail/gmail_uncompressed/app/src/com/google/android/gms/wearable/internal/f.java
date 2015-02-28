package com.google.android.gms.wearable.internal;

import android.os.*;
import com.google.android.gms.common.data.*;

final class f implements d
{
    private IBinder bzr;
    
    f(final IBinder bzr) {
        this.bzr = bzr;
    }
    
    @Override
    public final void a(final ah ah) {
        final Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
            if (ah != null) {
                obtain.writeInt(1);
                ah.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            this.bzr.transact(2, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    @Override
    public final void a(final ak ak) {
        final Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
            if (ak != null) {
                obtain.writeInt(1);
                ak.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            this.bzr.transact(3, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public final IBinder asBinder() {
        return this.bzr;
    }
    
    @Override
    public final void b(final DataHolder dataHolder) {
        final Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
            if (dataHolder != null) {
                obtain.writeInt(1);
                dataHolder.writeToParcel(obtain, 0);
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
    
    @Override
    public final void b(final ak ak) {
        final Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
            if (ak != null) {
                obtain.writeInt(1);
                ak.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            this.bzr.transact(4, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
}
