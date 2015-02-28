package com.google.android.gms.location.copresence;

import android.os.*;
import com.google.android.gms.common.people.data.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class e implements Parcelable$Creator<AccessPolicy>
{
    static void a(final AccessPolicy accessPolicy, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, accessPolicy.Jt());
        b.d(parcel, 2, accessPolicy.SS());
        b.a(parcel, 3, accessPolicy.getName(), false);
        b.a(parcel, 4, accessPolicy.ST());
        b.a(parcel, 5, (Parcelable)accessPolicy.SU(), n, false);
        b.a(parcel, 6, (Parcelable)accessPolicy.SV(), n, false);
        b.d(parcel, 7, accessPolicy.SW());
        b.d(parcel, 8, accessPolicy.SX());
        b.a(parcel, 9, (Parcelable)accessPolicy.SY(), n, false);
        b.D(parcel, ae);
    }
}
