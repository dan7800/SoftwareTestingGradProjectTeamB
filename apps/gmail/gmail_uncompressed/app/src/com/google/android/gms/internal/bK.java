package com.google.android.gms.internal;

import android.net.*;
import android.os.*;

public abstract class bk extends Binder implements bj
{
    public static bj E(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.panorama.internal.IPanoramaService");
        if (queryLocalInterface != null && queryLocalInterface instanceof bj) {
            return (bj)queryLocalInterface;
        }
        return new bl(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.panorama.internal.IPanoramaService");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.panorama.internal.IPanoramaService");
                final IBinder strongBinder = parcel.readStrongBinder();
                bg bg;
                if (strongBinder == null) {
                    bg = null;
                }
                else {
                    final IInterface queryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.panorama.internal.IPanoramaCallbacks");
                    if (queryLocalInterface != null && queryLocalInterface instanceof bg) {
                        bg = (bg)queryLocalInterface;
                    }
                    else {
                        bg = new bi(strongBinder);
                    }
                }
                Uri uri;
                if (parcel.readInt() != 0) {
                    uri = (Uri)Uri.CREATOR.createFromParcel(parcel);
                }
                else {
                    uri = null;
                }
                Bundle bundle;
                if (parcel.readInt() != 0) {
                    bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                else {
                    bundle = null;
                }
                this.a(bg, uri, bundle, parcel.readInt() != 0);
                return true;
            }
        }
    }
}
