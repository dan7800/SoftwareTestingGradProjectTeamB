package com.google.android.gms.search.corpora;

import android.os.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.appdatasearch.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class f implements Parcelable$Creator<GetCorpusStatusCall$Response>
{
    static void a(final GetCorpusStatusCall$Response getCorpusStatusCall$Response, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, getCorpusStatusCall$Response.btV);
        b.a(parcel, 1, (Parcelable)getCorpusStatusCall$Response.buu, n, false);
        b.a(parcel, 2, (Parcelable)getCorpusStatusCall$Response.ckh, n, false);
        b.D(parcel, ae);
    }
}
