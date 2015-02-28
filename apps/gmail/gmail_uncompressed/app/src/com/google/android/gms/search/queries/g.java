package com.google.android.gms.search.queries;

import android.os.*;
import com.google.android.gms.appdatasearch.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class g implements Parcelable$Creator<QueryCall$b>
{
    static void a(final QueryCall$b queryCall$b, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, queryCall$b.btV);
        b.a(parcel, 1, queryCall$b.Tt, false);
        b.a(parcel, 2, queryCall$b.packageName, false);
        b.a(parcel, 3, queryCall$b.ckA);
        b.d(parcel, 4, queryCall$b.start);
        b.d(parcel, 5, queryCall$b.bZQ);
        b.a(parcel, 6, (Parcelable)queryCall$b.cku, n, false);
        b.D(parcel, ae);
    }
}
