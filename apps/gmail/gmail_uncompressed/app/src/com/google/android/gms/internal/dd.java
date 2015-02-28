package com.google.android.gms.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class dd implements Parcelable$Creator<sj>
{
    static void a(final sj sj, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, sj.btV);
        b.a(parcel, 2, sj.St());
        b.a(parcel, 3, sj.Su());
        b.a(parcel, 4, sj.Sv());
        b.a(parcel, 5, (Parcelable)sj.Sw(), n, false);
        b.a(parcel, 6, sj.Sx());
        b.a(parcel, 8, sj.Sy());
        b.D(parcel, ae);
    }
}
