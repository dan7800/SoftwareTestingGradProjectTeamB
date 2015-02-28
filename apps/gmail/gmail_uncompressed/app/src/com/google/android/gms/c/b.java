package com.google.android.gms.c;

import android.os.*;

public abstract class b extends Binder implements a
{
    public b() {
        this.attachInterface((IInterface)this, "com.google.android.gms.dynamic.IObjectWrapper");
    }
    
    public static a w(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
        if (queryLocalInterface != null && queryLocalInterface instanceof a) {
            return (a)queryLocalInterface;
        }
        return new c(binder);
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
                parcel2.writeString("com.google.android.gms.dynamic.IObjectWrapper");
                return true;
            }
        }
    }
}
