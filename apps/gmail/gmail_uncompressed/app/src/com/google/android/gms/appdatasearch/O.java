package com.google.android.gms.appdatasearch;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class o implements Parcelable$Creator<CorpusId>
{
    static void a(final CorpusId corpusId, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, corpusId.packageName, false);
        b.d(parcel, 1000, corpusId.btV);
        b.a(parcel, 2, corpusId.btW, false);
        b.D(parcel, ae);
    }
}
