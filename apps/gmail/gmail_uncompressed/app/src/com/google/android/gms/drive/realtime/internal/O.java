package com.google.android.gms.drive.realtime.internal;

import android.os.*;
import com.google.android.gms.common.data.*;
import com.google.android.gms.common.api.*;

public abstract class o extends Binder implements n
{
    public static n p(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.drive.realtime.internal.IDataHolderCallback");
        if (queryLocalInterface != null && queryLocalInterface instanceof n) {
            return (n)queryLocalInterface;
        }
        return new p(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.drive.realtime.internal.IDataHolderCallback");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IDataHolderCallback");
                final int int1 = parcel.readInt();
                DataHolder ac = null;
                if (int1 != 0) {
                    final i creator = DataHolder.CREATOR;
                    ac = i.ac(parcel);
                }
                this.a(ac);
                parcel2.writeNoException();
                return true;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IDataHolderCallback");
                final int int2 = parcel.readInt();
                Status ab = null;
                if (int2 != 0) {
                    final w creator2 = Status.CREATOR;
                    ab = w.ab(parcel);
                }
                this.c(ab);
                parcel2.writeNoException();
                return true;
            }
        }
    }
}
