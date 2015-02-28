package com.google.android.gms.fitness.request;

import android.os.*;
import com.google.android.gms.fitness.data.*;

public abstract class u extends Binder implements s
{
    public static s y(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.fitness.request.IBleScanCallback");
        if (queryLocalInterface != null && queryLocalInterface instanceof s) {
            return (s)queryLocalInterface;
        }
        return new w(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.fitness.request.IBleScanCallback");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.fitness.request.IBleScanCallback");
                BleDevice bleDevice;
                if (parcel.readInt() != 0) {
                    bleDevice = (BleDevice)BleDevice.CREATOR.createFromParcel(parcel);
                }
                else {
                    bleDevice = null;
                }
                this.a(bleDevice);
                return true;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.fitness.request.IBleScanCallback");
                this.Nz();
                return true;
            }
        }
    }
}
