package com.google.android.gms.search.queries;

import android.os.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.appdatasearch.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<GetDocumentsCall$Response>
{
    static void a(final GetDocumentsCall$Response getDocumentsCall$Response, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1000, getDocumentsCall$Response.btV);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, (Parcelable)getDocumentsCall$Response.buu, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable)getDocumentsCall$Response.cks, n, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
