package com.google.android.gms.search.corpora;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class e implements Parcelable$Creator<GetCorpusStatusCall$b>
{
    static void a(final GetCorpusStatusCall$b getCorpusStatusCall$b, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, getCorpusStatusCall$b.btV);
        b.a(parcel, 1, getCorpusStatusCall$b.packageName, false);
        b.a(parcel, 2, getCorpusStatusCall$b.btW, false);
        b.D(parcel, ae);
    }
}
