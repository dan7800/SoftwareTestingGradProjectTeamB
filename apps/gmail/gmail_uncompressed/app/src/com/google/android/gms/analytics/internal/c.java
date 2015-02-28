package com.google.android.gms.analytics.internal;

import android.os.*;
import java.util.*;

public abstract class c extends Binder implements b
{
    public static b e(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
        if (queryLocalInterface != null && queryLocalInterface instanceof b) {
            return (b)queryLocalInterface;
        }
        return new d(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.analytics.internal.IAnalyticsService");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
                this.a(parcel.readHashMap(this.getClass().getClassLoader()), parcel.readLong(), parcel.readString(), parcel.createTypedArrayList((Parcelable$Creator)Command.CREATOR));
                parcel2.writeNoException();
                return true;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
                this.By();
                parcel2.writeNoException();
                return true;
            }
        }
    }
}
