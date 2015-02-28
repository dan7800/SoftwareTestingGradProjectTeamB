package com.google.android.gms.search.global;

import android.os.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class f implements Parcelable$Creator<GetGlobalSearchSourcesCall$Response>
{
    static void a(final GetGlobalSearchSourcesCall$Response getGlobalSearchSourcesCall$Response, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, getGlobalSearchSourcesCall$Response.btV);
        b.a(parcel, 1, (Parcelable)getGlobalSearchSourcesCall$Response.buu, n, false);
        b.a(parcel, 2, getGlobalSearchSourcesCall$Response.cko, n);
        b.D(parcel, ae);
    }
}
