package com.google.android.gms.wearable.internal;

import android.content.*;
import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class o implements Parcelable$Creator<b>
{
    static void a(final b b, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, b.btV);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, b.VP());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, b.cnc, n);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
