package com.google.android.gms.search.corpora;

import android.os.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.appdatasearch.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<GetCorpusInfoCall$Response>
{
    static void a(final GetCorpusInfoCall$Response getCorpusInfoCall$Response, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, getCorpusInfoCall$Response.btV);
        b.a(parcel, 1, (Parcelable)getCorpusInfoCall$Response.buu, n, false);
        b.a(parcel, 2, (Parcelable)getCorpusInfoCall$Response.ckg, n, false);
        b.D(parcel, ae);
    }
}
