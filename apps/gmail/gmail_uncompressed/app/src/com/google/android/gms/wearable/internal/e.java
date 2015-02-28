package com.google.android.gms.wearable.internal;

import android.os.*;
import com.google.android.gms.common.data.*;

public abstract class e extends Binder implements d
{
    public static d K(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableListener");
        if (queryLocalInterface != null && queryLocalInterface instanceof d) {
            return (d)queryLocalInterface;
        }
        return new f(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.wearable.internal.IWearableListener");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                final int int1 = parcel.readInt();
                DataHolder ac = null;
                if (int1 != 0) {
                    final i creator = DataHolder.CREATOR;
                    ac = i.ac(parcel);
                }
                this.b(ac);
                return true;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                final int int2 = parcel.readInt();
                ah ah = null;
                if (int2 != 0) {
                    ah = (ah)com.google.android.gms.wearable.internal.ah.CREATOR.createFromParcel(parcel);
                }
                this.a(ah);
                return true;
            }
            case 3: {
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                final int int3 = parcel.readInt();
                ak ak = null;
                if (int3 != 0) {
                    ak = (ak)com.google.android.gms.wearable.internal.ak.CREATOR.createFromParcel(parcel);
                }
                this.a(ak);
                return true;
            }
            case 4: {
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                final int int4 = parcel.readInt();
                ak ak2 = null;
                if (int4 != 0) {
                    ak2 = (ak)ak.CREATOR.createFromParcel(parcel);
                }
                this.b(ak2);
                return true;
            }
        }
    }
}
