package com.google.android.gms.drive.realtime.internal;

import android.os.*;

final class j implements h
{
    private IBinder bzr;
    
    j(final IBinder bzr) {
        this.bzr = bzr;
    }
    
    @Override
    public final void a(final ParcelableCollaborator parcelableCollaborator) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.ICollaboratorEventCallback");
            if (parcelableCollaborator != null) {
                obtain.writeInt(1);
                parcelableCollaborator.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            this.bzr.transact(1, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public final IBinder asBinder() {
        return this.bzr;
    }
    
    @Override
    public final void b(final ParcelableCollaborator parcelableCollaborator) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.ICollaboratorEventCallback");
            if (parcelableCollaborator != null) {
                obtain.writeInt(1);
                parcelableCollaborator.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            this.bzr.transact(2, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
