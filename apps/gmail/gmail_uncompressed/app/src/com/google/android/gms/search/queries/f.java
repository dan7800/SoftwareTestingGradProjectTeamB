package com.google.android.gms.search.queries;

import android.os.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.appdatasearch.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class f implements Parcelable$Creator<GlobalQueryCall$Response>
{
    static void a(final GlobalQueryCall$Response globalQueryCall$Response, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, globalQueryCall$Response.btV);
        b.a(parcel, 1, (Parcelable)globalQueryCall$Response.buu, n, false);
        b.a(parcel, 2, (Parcelable)globalQueryCall$Response.cky, n, false);
        b.D(parcel, ae);
    }
}
