package com.android.emailcommon.service;

import android.os.*;

public abstract class v extends Binder implements u
{
    public v() {
        this.attachInterface((IInterface)this, "com.android.emailcommon.service.IEmailServiceCallback");
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
                parcel2.writeString("com.android.emailcommon.service.IEmailServiceCallback");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.android.emailcommon.service.IEmailServiceCallback");
                this.a(parcel.readLong(), parcel.readLong(), parcel.readInt(), parcel.readInt());
                return true;
            }
        }
    }
}
