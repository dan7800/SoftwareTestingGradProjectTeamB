package com.google.android.gms.plus.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<i>
{
    static void a(final i i, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, i.FP(), false);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1000, i.Jt());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, i.Vg());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, i.Vh());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, i.Vi());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, i.Vj(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, i.Vk(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, i.Vl(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, i.Vm(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, (Parcelable)i.Vn(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
