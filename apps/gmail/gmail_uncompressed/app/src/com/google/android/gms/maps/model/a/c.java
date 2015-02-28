package com.google.android.gms.maps.model.a;

import android.os.*;
import com.google.android.gms.maps.model.*;

final class c implements a
{
    private IBinder bzr;
    
    c(final IBinder bzr) {
        this.bzr = bzr;
    }
    
    public final IBinder asBinder() {
        return this.bzr;
    }
    
    @Override
    public final Tile j(final int n, final int n2, final int n3) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
            obtain.writeInt(n);
            obtain.writeInt(n2);
            obtain.writeInt(n3);
            this.bzr.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            Tile as;
            if (obtain2.readInt() != 0) {
                final q creator = Tile.CREATOR;
                as = q.as(obtain2);
            }
            else {
                as = null;
            }
            return as;
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
