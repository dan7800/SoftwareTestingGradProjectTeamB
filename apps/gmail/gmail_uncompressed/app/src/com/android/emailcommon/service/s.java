package com.android.emailcommon.service;

import android.os.*;

public abstract class s extends Binder implements r
{
    public s() {
        this.attachInterface((IInterface)this, "com.android.emailcommon.service.IEmailService");
    }
    
    public static r c(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.android.emailcommon.service.IEmailService");
        if (queryLocalInterface != null && queryLocalInterface instanceof r) {
            return (r)queryLocalInterface;
        }
        return new t(binder);
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
                parcel2.writeString("com.android.emailcommon.service.IEmailService");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.android.emailcommon.service.IEmailService");
                final IBinder strongBinder = parcel.readStrongBinder();
                u u;
                if (strongBinder == null) {
                    u = null;
                }
                else {
                    final IInterface queryLocalInterface = strongBinder.queryLocalInterface("com.android.emailcommon.service.IEmailServiceCallback");
                    if (queryLocalInterface != null && queryLocalInterface instanceof u) {
                        u = (u)queryLocalInterface;
                    }
                    else {
                        u = new w(strongBinder);
                    }
                }
                final long long1 = parcel.readLong();
                final long long2 = parcel.readLong();
                final int int1 = parcel.readInt();
                boolean b = false;
                if (int1 != 0) {
                    b = true;
                }
                this.a(u, long1, long2, b);
                return true;
            }
            case 2: {
                parcel.enforceInterface("com.android.emailcommon.service.IEmailService");
                this.B(parcel.readLong());
                parcel2.writeNoException();
                return true;
            }
            case 3: {
                parcel.enforceInterface("com.android.emailcommon.service.IEmailService");
                this.D(parcel.readLong());
                parcel2.writeNoException();
                return true;
            }
            case 4: {
                parcel.enforceInterface("com.android.emailcommon.service.IEmailService");
                final long long3 = parcel.readLong();
                final int int2 = parcel.readInt();
                Bundle bundle = null;
                if (int2 != 0) {
                    bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                final int a = this.a(long3, bundle);
                parcel2.writeNoException();
                parcel2.writeInt(a);
                if (bundle != null) {
                    parcel2.writeInt(1);
                    bundle.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            }
            case 5: {
                parcel.enforceInterface("com.android.emailcommon.service.IEmailService");
                this.C(parcel.readLong());
                parcel2.writeNoException();
                return true;
            }
            case 6: {
                parcel.enforceInterface("com.android.emailcommon.service.IEmailService");
                final int int3 = parcel.readInt();
                HostAuthCompat hostAuthCompat = null;
                if (int3 != 0) {
                    hostAuthCompat = (HostAuthCompat)HostAuthCompat.CREATOR.createFromParcel(parcel);
                }
                final Bundle a2 = this.a(hostAuthCompat);
                parcel2.writeNoException();
                if (a2 != null) {
                    parcel2.writeInt(1);
                    a2.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            }
            case 7: {
                parcel.enforceInterface("com.android.emailcommon.service.IEmailService");
                final long long4 = parcel.readLong();
                SearchParams searchParams;
                if (parcel.readInt() != 0) {
                    searchParams = (SearchParams)SearchParams.CREATOR.createFromParcel(parcel);
                }
                else {
                    searchParams = null;
                }
                final int a3 = this.a(long4, searchParams, parcel.readLong());
                parcel2.writeNoException();
                parcel2.writeInt(a3);
                return true;
            }
            case 8: {
                parcel.enforceInterface("com.android.emailcommon.service.IEmailService");
                this.e(parcel.readLong(), parcel.readInt());
                return true;
            }
            case 9: {
                parcel.enforceInterface("com.android.emailcommon.service.IEmailService");
                final Bundle q = this.q(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                if (q != null) {
                    parcel2.writeInt(1);
                    q.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            }
            case 10: {
                parcel.enforceInterface("com.android.emailcommon.service.IEmailService");
                this.bd(parcel.readInt());
                return true;
            }
            case 11: {
                parcel.enforceInterface("com.android.emailcommon.service.IEmailService");
                this.R(parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            case 12: {
                parcel.enforceInterface("com.android.emailcommon.service.IEmailService");
                final int ke = this.kE();
                parcel2.writeNoException();
                parcel2.writeInt(ke);
                return true;
            }
        }
    }
}
