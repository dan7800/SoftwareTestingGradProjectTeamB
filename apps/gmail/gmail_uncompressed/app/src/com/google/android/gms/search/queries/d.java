package com.google.android.gms.search.queries;

import android.os.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.appdatasearch.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<GetPhraseAffinityCall$Response>
{
    static void a(final GetPhraseAffinityCall$Response getPhraseAffinityCall$Response, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, getPhraseAffinityCall$Response.btV);
        b.a(parcel, 1, (Parcelable)getPhraseAffinityCall$Response.buu, n, false);
        b.a(parcel, 2, (Parcelable)getPhraseAffinityCall$Response.ckv, n, false);
        b.D(parcel, ae);
    }
}
