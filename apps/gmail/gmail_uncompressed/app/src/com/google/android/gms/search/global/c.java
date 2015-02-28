package com.google.android.gms.search.global;

import android.os.*;
import com.google.android.gms.appdatasearch.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<GetGlobalSearchSourcesCall$CorpusInfo>
{
    static void a(final GetGlobalSearchSourcesCall$CorpusInfo getGlobalSearchSourcesCall$CorpusInfo, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, getGlobalSearchSourcesCall$CorpusInfo.btV);
        b.a(parcel, 1, getGlobalSearchSourcesCall$CorpusInfo.btW, false);
        b.a(parcel, 2, getGlobalSearchSourcesCall$CorpusInfo.buD, n);
        b.a(parcel, 3, getGlobalSearchSourcesCall$CorpusInfo.ckl);
        b.D(parcel, ae);
    }
}
