package com.google.android.gms.search.corpora;

import android.os.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<ClearCorpusCall$Response>
{
    static void a(final ClearCorpusCall$Response clearCorpusCall$Response, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1000, clearCorpusCall$Response.btV);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, (Parcelable)clearCorpusCall$Response.buu, n, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
