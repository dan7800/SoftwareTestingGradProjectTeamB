package com.google.android.gms.search.queries;

import android.os.*;
import com.google.android.gms.appdatasearch.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<GetPhraseAffinityCall$b>
{
    static void a(final GetPhraseAffinityCall$b getPhraseAffinityCall$b, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, getPhraseAffinityCall$b.btV);
        b.a(parcel, 1, getPhraseAffinityCall$b.ckw);
        b.a(parcel, 2, getPhraseAffinityCall$b.ckx, n);
        b.D(parcel, ae);
    }
}
