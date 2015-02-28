package com.google.android.gms.search.queries;

import android.os.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.appdatasearch.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class h implements Parcelable$Creator<QueryCall$Response>
{
    static void a(final QueryCall$Response queryCall$Response, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, queryCall$Response.btV);
        b.a(parcel, 1, (Parcelable)queryCall$Response.buu, n, false);
        b.a(parcel, 2, (Parcelable)queryCall$Response.cky, n, false);
        b.D(parcel, ae);
    }
}
