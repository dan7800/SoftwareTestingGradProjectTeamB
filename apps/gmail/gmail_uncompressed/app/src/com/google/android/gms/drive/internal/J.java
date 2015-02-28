package com.google.android.gms.drive.internal;

import android.os.*;

public abstract class j extends Binder implements i
{
    public static i n(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.drive.internal.IEventCallback");
        if (queryLocalInterface != null && queryLocalInterface instanceof i) {
            return (i)queryLocalInterface;
        }
        return new k(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.drive.internal.IEventCallback");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IEventCallback");
                OnEventResponse onEventResponse;
                if (parcel.readInt() != 0) {
                    onEventResponse = (OnEventResponse)OnEventResponse.CREATOR.createFromParcel(parcel);
                }
                else {
                    onEventResponse = null;
                }
                this.a(onEventResponse);
                parcel2.writeNoException();
                return true;
            }
        }
    }
}
