package com.android.emailcommon.service;

import android.os.*;

final class t implements r
{
    private IBinder cC;
    
    t(final IBinder cc) {
        this.cC = cc;
    }
    
    @Override
    public final void B(final long n) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.emailcommon.service.IEmailService");
            obtain.writeLong(n);
            this.cC.transact(2, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final void C(final long n) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.emailcommon.service.IEmailService");
            obtain.writeLong(n);
            this.cC.transact(5, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final void D(final long n) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.emailcommon.service.IEmailService");
            obtain.writeLong(n);
            this.cC.transact(3, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final void R(final String s) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.emailcommon.service.IEmailService");
            obtain.writeString(s);
            this.cC.transact(11, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final int a(final long n, final Bundle bundle) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.emailcommon.service.IEmailService");
            obtain.writeLong(n);
            if (bundle != null) {
                obtain.writeInt(1);
                bundle.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            this.cC.transact(4, obtain, obtain2, 0);
            obtain2.readException();
            final int int1 = obtain2.readInt();
            if (obtain2.readInt() != 0) {
                bundle.readFromParcel(obtain2);
            }
            return int1;
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final int a(final long n, final SearchParams searchParams, final long n2) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.emailcommon.service.IEmailService");
            obtain.writeLong(n);
            if (searchParams != null) {
                obtain.writeInt(1);
                searchParams.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            obtain.writeLong(n2);
            this.cC.transact(7, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final Bundle a(final HostAuthCompat hostAuthCompat) {
        while (true) {
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.android.emailcommon.service.IEmailService");
                if (hostAuthCompat != null) {
                    obtain.writeInt(1);
                    hostAuthCompat.writeToParcel(obtain, 0);
                }
                else {
                    obtain.writeInt(0);
                }
                this.cC.transact(6, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    return (Bundle)Bundle.CREATOR.createFromParcel(obtain2);
                }
            }
            finally {
                obtain2.recycle();
                obtain.recycle();
            }
            return null;
        }
    }
    
    @Override
    public final void a(final u u, final long n, final long n2, final boolean b) {
        int n3 = 1;
        final Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.emailcommon.service.IEmailService");
            IBinder binder = null;
            if (u != null) {
                binder = u.asBinder();
            }
            obtain.writeStrongBinder(binder);
            obtain.writeLong(n);
            obtain.writeLong(n2);
            if (!b) {
                n3 = 0;
            }
            obtain.writeInt(n3);
            this.cC.transact(1, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public final IBinder asBinder() {
        return this.cC;
    }
    
    @Override
    public final void bd(final int n) {
        final Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.emailcommon.service.IEmailService");
            obtain.writeInt(n);
            this.cC.transact(10, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    @Override
    public final void e(final long n, final int n2) {
        final Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.emailcommon.service.IEmailService");
            obtain.writeLong(n);
            obtain.writeInt(n2);
            this.cC.transact(8, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    @Override
    public final int kE() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.emailcommon.service.IEmailService");
            this.cC.transact(12, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final Bundle q(final String s, final String s2) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.emailcommon.service.IEmailService");
            obtain.writeString(s);
            obtain.writeString(s2);
            this.cC.transact(9, obtain, obtain2, 0);
            obtain2.readException();
            Bundle bundle;
            if (obtain2.readInt() != 0) {
                bundle = (Bundle)Bundle.CREATOR.createFromParcel(obtain2);
            }
            else {
                bundle = null;
            }
            return bundle;
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
