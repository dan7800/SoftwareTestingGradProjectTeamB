package com.google.android.gms.maps.model.a;

import android.os.*;
import com.google.android.gms.maps.model.*;

public abstract class b extends Binder implements a
{
    public static a J(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
        if (queryLocalInterface != null && queryLocalInterface instanceof a) {
            return (a)queryLocalInterface;
        }
        return new c(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
                final Tile j = this.j(parcel.readInt(), parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                if (j != null) {
                    parcel2.writeInt(1);
                    j.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            }
        }
    }
}
