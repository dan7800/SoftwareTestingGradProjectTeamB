package com.google.android.gms.drive.realtime.internal;

import android.os.*;

public abstract class i extends Binder implements h
{
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.drive.realtime.internal.ICollaboratorEventCallback");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.ICollaboratorEventCallback");
                final int int1 = parcel.readInt();
                ParcelableCollaborator parcelableCollaborator = null;
                if (int1 != 0) {
                    parcelableCollaborator = (ParcelableCollaborator)ParcelableCollaborator.CREATOR.createFromParcel(parcel);
                }
                this.a(parcelableCollaborator);
                parcel2.writeNoException();
                return true;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.ICollaboratorEventCallback");
                final int int2 = parcel.readInt();
                ParcelableCollaborator parcelableCollaborator2 = null;
                if (int2 != 0) {
                    parcelableCollaborator2 = (ParcelableCollaborator)ParcelableCollaborator.CREATOR.createFromParcel(parcel);
                }
                this.b(parcelableCollaborator2);
                parcel2.writeNoException();
                return true;
            }
        }
    }
}
