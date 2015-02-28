package com.android.emailcommon.service;

import android.os.*;

public abstract class q extends Binder implements p
{
    public q() {
        this.attachInterface((IInterface)this, "com.android.emailcommon.service.IAccountService");
    }
    
    public IBinder asBinder() {
        return (IBinder)this;
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.android.emailcommon.service.IAccountService");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.android.emailcommon.service.IAccountService");
                final int j = this.j(parcel.readLong());
                parcel2.writeNoException();
                parcel2.writeInt(j);
                return true;
            }
            case 2: {
                parcel.enforceInterface("com.android.emailcommon.service.IAccountService");
                parcel.readString();
                final Bundle ku = this.ku();
                parcel2.writeNoException();
                if (ku != null) {
                    parcel2.writeInt(1);
                    ku.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            }
            case 3: {
                parcel.enforceInterface("com.android.emailcommon.service.IAccountService");
                final String deviceId = this.getDeviceId();
                parcel2.writeNoException();
                parcel2.writeString(deviceId);
                return true;
            }
        }
    }
}
