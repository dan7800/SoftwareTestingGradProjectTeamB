package com.google.android.gms.internal;

import android.os.*;
import com.google.android.gms.feedback.*;

final class at implements ar
{
    private IBinder bzr;
    
    at(final IBinder bzr) {
        this.bzr = bzr;
    }
    
    @Override
    public final void Y(final int n, final int n2) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.feedback.internal.IFeedbackService");
            obtain.writeInt(n);
            obtain.writeInt(n2);
            this.bzr.transact(2, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final boolean a(final ErrorReport errorReport) {
        while (true) {
            boolean b = true;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.feedback.internal.IFeedbackService");
                if (errorReport != null) {
                    obtain.writeInt(1);
                    errorReport.writeToParcel(obtain, 0);
                }
                else {
                    obtain.writeInt(0);
                }
                this.bzr.transact(1, obtain, obtain2, 0);
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
        return this.bzr;
    }
    
    @Override
    public final boolean b(final ErrorReport errorReport) {
        while (true) {
            boolean b = true;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.feedback.internal.IFeedbackService");
                if (errorReport != null) {
                    obtain.writeInt(1);
                    errorReport.writeToParcel(obtain, 0);
                }
                else {
                    obtain.writeInt(0);
                }
                this.bzr.transact(3, obtain, obtain2, 0);
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
}
