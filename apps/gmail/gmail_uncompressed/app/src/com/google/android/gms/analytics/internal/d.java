package com.google.android.gms.analytics.internal;

import android.os.*;
import java.util.*;

final class d implements b
{
    private IBinder cC;
    
    d(final IBinder cc) {
        this.cC = cc;
    }
    
    @Override
    public final void By() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.analytics.internal.IAnalyticsService");
            this.cC.transact(2, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final void a(final Map map, final long n, final String s, final List<Command> list) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.analytics.internal.IAnalyticsService");
            obtain.writeMap(map);
            obtain.writeLong(n);
            obtain.writeString(s);
            obtain.writeTypedList((List)list);
            this.cC.transact(1, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public final IBinder asBinder() {
        return this.cC;
    }
}
