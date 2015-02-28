package com.android.emailcommon.service;

import android.os.*;
import com.android.emailcommon.provider.*;

public abstract class y extends Binder implements x
{
    public y() {
        this.attachInterface((IInterface)this, "com.android.emailcommon.service.IPolicyService");
    }
    
    public static x d(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.android.emailcommon.service.IPolicyService");
        if (queryLocalInterface != null && queryLocalInterface instanceof x) {
            return (x)queryLocalInterface;
        }
        return new z(binder);
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
                parcel2.writeString("com.android.emailcommon.service.IPolicyService");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.android.emailcommon.service.IPolicyService");
                final int int1 = parcel.readInt();
                Policy policy = null;
                if (int1 != 0) {
                    policy = (Policy)Policy.CREATOR.createFromParcel(parcel);
                }
                final boolean a = this.a(policy);
                parcel2.writeNoException();
                int n3;
                if (a) {
                    n3 = 1;
                }
                else {
                    n3 = 0;
                }
                parcel2.writeInt(n3);
                return true;
            }
            case 2: {
                parcel.enforceInterface("com.android.emailcommon.service.IPolicyService");
                final long long1 = parcel.readLong();
                final int int2 = parcel.readInt();
                boolean b = false;
                if (int2 != 0) {
                    b = true;
                }
                this.b(long1, b);
                parcel2.writeNoException();
                return true;
            }
            case 3: {
                parcel.enforceInterface("com.android.emailcommon.service.IPolicyService");
                final long long2 = parcel.readLong();
                final int int3 = parcel.readInt();
                Policy policy2 = null;
                if (int3 != 0) {
                    policy2 = (Policy)Policy.CREATOR.createFromParcel(parcel);
                }
                this.a(long2, policy2, parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            case 4: {
                parcel.enforceInterface("com.android.emailcommon.service.IPolicyService");
                final long long3 = parcel.readLong();
                Policy policy3;
                if (parcel.readInt() != 0) {
                    policy3 = (Policy)Policy.CREATOR.createFromParcel(parcel);
                }
                else {
                    policy3 = null;
                }
                this.b(long3, policy3, parcel.readString(), parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            }
            case 5: {
                parcel.enforceInterface("com.android.emailcommon.service.IPolicyService");
                this.hi();
                return true;
            }
            case 6: {
                parcel.enforceInterface("com.android.emailcommon.service.IPolicyService");
                final boolean kj = this.kJ();
                parcel2.writeNoException();
                int n4 = 0;
                if (kj) {
                    n4 = 1;
                }
                parcel2.writeInt(n4);
                return true;
            }
        }
    }
}
