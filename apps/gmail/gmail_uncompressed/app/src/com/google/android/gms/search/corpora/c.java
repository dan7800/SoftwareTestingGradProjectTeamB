package com.google.android.gms.search.corpora;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<GetCorpusInfoCall$b>
{
    static void a(final GetCorpusInfoCall$b getCorpusInfoCall$b, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, getCorpusInfoCall$b.btV);
        b.a(parcel, 1, getCorpusInfoCall$b.packageName, false);
        b.a(parcel, 2, getCorpusInfoCall$b.btW, false);
        b.D(parcel, ae);
    }
}
