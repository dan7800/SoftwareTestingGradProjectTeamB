package com.google.android.gms.search.corpora;

import android.os.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class h implements Parcelable$Creator<RequestIndexingCall$Response>
{
    static void a(final RequestIndexingCall$Response requestIndexingCall$Response, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, requestIndexingCall$Response.btV);
        b.a(parcel, 1, (Parcelable)requestIndexingCall$Response.buu, n, false);
        b.a(parcel, 2, requestIndexingCall$Response.cki);
        b.D(parcel, ae);
    }
}
