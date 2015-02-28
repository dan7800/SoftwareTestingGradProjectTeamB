package com.google.android.gms.drive.realtime.internal;

import android.os.*;
import com.google.android.gms.common.api.*;

public abstract class x extends Binder implements w
{
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.drive.realtime.internal.IErrorCallback");
                return true;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IErrorCallback");
                Status ab;
                if (parcel.readInt() != 0) {
                    final com.google.android.gms.common.api.w creator = Status.CREATOR;
                    ab = com.google.android.gms.common.api.w.ab(parcel);
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
