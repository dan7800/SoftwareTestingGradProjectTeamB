package com.google.android.gms.internal;

import android.os.*;
import android.content.*;

public abstract class bh extends Binder implements bg
{
    public bh() {
        this.attachInterface((IInterface)this, "com.google.android.gms.panorama.internal.IPanoramaCallbacks");
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
                parcel2.writeString("com.google.android.gms.panorama.internal.IPanoramaCallbacks");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.panorama.internal.IPanoramaCallbacks");
                final int int1 = parcel.readInt();
                Bundle bundle;
                if (parcel.readInt() != 0) {
                    bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                else {
                    bundle = null;
                }
                final int int2 = parcel.readInt();
                Intent intent;
                if (parcel.readInt() != 0) {
                    intent = (Intent)Intent.CREATOR.createFromParcel(parcel);
                }
                else {
                    intent = null;
                }
                this.a(int1, bundle, int2, intent);
                parcel2.writeNoException();
                return true;
            }
        }
    }
}
