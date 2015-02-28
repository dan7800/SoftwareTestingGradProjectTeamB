package com.google.android.gms.internal;

import android.os.*;

public abstract class be extends Binder implements bc
{
    public static bc D(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.mdm.internal.INetworkQualityService");
        if (queryLocalInterface != null && queryLocalInterface instanceof bc) {
            return (bc)queryLocalInterface;
        }
        return new bf(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.mdm.internal.INetworkQualityService");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.mdm.internal.INetworkQualityService");
                final String string = parcel.readString();
                Bundle bundle;
                if (parcel.readInt() != 0) {
                    bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                else {
                    bundle = null;
                }
                Bundle bundle2;
                if (parcel.readInt() != 0) {
                    bundle2 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                else {
                    bundle2 = null;
                }
                this.a(string, bundle, bundle2);
                return true;
            }
        }
    }
}
