package com.google.android.gms.fitness.data;

import android.os.*;

public abstract class k extends Binder implements j
{
    public static j x(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.fitness.data.IDataSourceListener");
        if (queryLocalInterface != null && queryLocalInterface instanceof j) {
            return (j)queryLocalInterface;
        }
        return new l(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.fitness.data.IDataSourceListener");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.fitness.data.IDataSourceListener");
                DataPoint dataPoint;
                if (parcel.readInt() != 0) {
                    dataPoint = (DataPoint)DataPoint.CREATOR.createFromParcel(parcel);
                }
                else {
                    dataPoint = null;
                }
                this.a(dataPoint);
                return true;
            }
        }
    }
}
