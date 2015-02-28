package com.google.android.gms.search.corpora;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<ClearCorpusCall$b>
{
    static void a(final ClearCorpusCall$b clearCorpusCall$b, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, clearCorpusCall$b.btV);
        b.a(parcel, 1, clearCorpusCall$b.packageName, false);
        b.a(parcel, 2, clearCorpusCall$b.btW, false);
        b.D(parcel, ae);
    }
}
