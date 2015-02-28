package com.google.android.gms.drive.realtime.internal;

import android.os.*;
import com.google.android.gms.common.data.*;
import com.google.android.gms.drive.realtime.internal.event.*;
import com.google.android.gms.common.api.*;

public abstract class r extends Binder implements q
{
    public static q q(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback");
        if (queryLocalInterface != null && queryLocalInterface instanceof q) {
            return (q)queryLocalInterface;
        }
        return new s(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback");
                DataHolder ac;
                if (parcel.readInt() != 0) {
                    final i creator = DataHolder.CREATOR;
                    ac = i.ac(parcel);
                }
                else {
                    ac = null;
                }
                ParcelableEventList list;
                if (parcel.readInt() != 0) {
                    list = (ParcelableEventList)ParcelableEventList.CREATOR.createFromParcel(parcel);
                }
                else {
                    list = null;
                }
                this.a(ac, list);
                parcel2.writeNoException();
                return true;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback");
                final int int1 = parcel.readInt();
                Status ab = null;
                if (int1 != 0) {
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
