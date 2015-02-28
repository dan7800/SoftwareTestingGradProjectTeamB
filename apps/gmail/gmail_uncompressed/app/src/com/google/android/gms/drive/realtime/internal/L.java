package com.google.android.gms.drive.realtime.internal;

import android.os.*;
import com.google.android.gms.common.api.*;

public abstract class l extends Binder implements k
{
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.drive.realtime.internal.ICollaboratorsCallback");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.ICollaboratorsCallback");
                this.a((ParcelableCollaborator[])parcel.createTypedArray((Parcelable$Creator)ParcelableCollaborator.CREATOR));
                parcel2.writeNoException();
                return true;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.ICollaboratorsCallback");
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
