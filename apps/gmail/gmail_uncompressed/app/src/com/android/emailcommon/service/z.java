package com.android.emailcommon.service;

import com.android.emailcommon.provider.*;
import android.os.*;

final class z implements x
{
    private IBinder cC;
    
    z(final IBinder cc) {
        this.cC = cc;
    }
    
    @Override
    public final void a(final long n, final Policy policy, final String s) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.emailcommon.service.IPolicyService");
            obtain.writeLong(n);
            if (policy != null) {
                obtain.writeInt(1);
                policy.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            obtain.writeString(s);
            this.cC.transact(3, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final boolean a(final Policy policy) {
        while (true) {
            boolean b = true;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.android.emailcommon.service.IPolicyService");
                if (policy != null) {
                    obtain.writeInt(1);
                    policy.writeToParcel(obtain, 0);
                }
                else {
                    obtain.writeInt(0);
                }
                this.cC.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    return b;
                }
            }
            finally {
                obtain2.recycle();
                obtain.recycle();
            }
            b = false;
            return b;
        }
    }
    
    public final IBinder asBinder() {
        return this.cC;
    }
    
    @Override
    public final void b(final long n, final Policy policy, final String s, final boolean b) {
        while (true) {
            int n2 = 1;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            while (true) {
                try {
                    obtain.writeInterfaceToken("com.android.emailcommon.service.IPolicyService");
                    obtain.writeLong(n);
                    if (policy != null) {
                        obtain.writeInt(1);
                        policy.writeToParcel(obtain, 0);
                    }
                    else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(s);
                    if (b) {
                        obtain.writeInt(n2);
                        this.cC.transact(4, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                n2 = 0;
                continue;
            }
        }
    }
    
    @Override
    public final void b(final long n, final boolean b) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.emailcommon.service.IPolicyService");
            obtain.writeLong(n);
            int n2 = 0;
            if (b) {
                n2 = 1;
            }
            obtain.writeInt(n2);
            this.cC.transact(2, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final void hi() {
        final Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.emailcommon.service.IPolicyService");
            this.cC.transact(5, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    @Override
    public final boolean kJ() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.android.emailcommon.service.IPolicyService");
            this.cC.transact(6, obtain, obtain2, 0);
            obtain2.readException();
            final int int1 = obtain2.readInt();
            boolean b = false;
            if (int1 != 0) {
                b = true;
            }
            return b;
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
