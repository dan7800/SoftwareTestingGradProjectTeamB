package com.google.android.gms.common.internal;

import android.os.*;

public abstract class w extends Binder implements v
{
    public static v i(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.common.internal.ICancelToken");
        if (queryLocalInterface != null && queryLocalInterface instanceof v) {
            return (v)queryLocalInterface;
        }
        return new x(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.common.internal.ICancelToken");
                return true;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.common.internal.ICancelToken");
                this.cancel();
                parcel2.writeNoException();
                return true;
            }
        }
    }
}
