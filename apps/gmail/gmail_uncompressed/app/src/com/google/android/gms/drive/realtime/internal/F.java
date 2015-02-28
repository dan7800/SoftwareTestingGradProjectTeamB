package com.google.android.gms.drive.realtime.internal;

import android.os.*;
import com.google.android.gms.common.api.*;

public abstract class f extends Binder implements e
{
    public static e o(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.drive.realtime.internal.IBooleanCallback");
        if (queryLocalInterface != null && queryLocalInterface instanceof e) {
            return (e)queryLocalInterface;
        }
        return new g(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.drive.realtime.internal.IBooleanCallback");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IBooleanCallback");
                this.cf(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IBooleanCallback");
                Status ab;
                if (parcel.readInt() != 0) {
                    final w creator = Status.CREATOR;
                    ab = w.ab(parcel);
                }
                else {
                    ab = null;
                }
                this.c(ab);
                parcel2.writeNoException();
                return true;
            }
        }
    }
}
