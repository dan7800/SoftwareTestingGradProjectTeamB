package com.google.android.gms.fitness.request;

import android.os.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class i implements Parcelable$Creator<b>
{
    static void a(final b b, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, b.getDeviceAddress(), false);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1000, b.Jt());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable)b.Ny(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
