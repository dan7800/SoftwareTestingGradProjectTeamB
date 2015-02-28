package com.google.android.gms.common.server.response;

import android.os.*;
import com.google.android.gms.internal.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<FastJsonResponse$Field>
{
    static void a(final FastJsonResponse$Field fastJsonResponse$Field, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, fastJsonResponse$Field.Jt());
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 2, fastJsonResponse$Field.Lx());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, fastJsonResponse$Field.Ly());
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 4, fastJsonResponse$Field.Lz());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, fastJsonResponse$Field.LA());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, fastJsonResponse$Field.LB(), false);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 7, fastJsonResponse$Field.LC());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, fastJsonResponse$Field.LE(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, (Parcelable)fastJsonResponse$Field.LG(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
