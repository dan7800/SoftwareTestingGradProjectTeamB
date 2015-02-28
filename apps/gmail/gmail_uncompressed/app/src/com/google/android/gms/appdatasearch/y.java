package com.google.android.gms.appdatasearch;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class y implements Parcelable$Creator<CorpusScoringInfo>
{
    static void a(final CorpusScoringInfo corpusScoringInfo, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)corpusScoringInfo.btX, n, false);
        b.d(parcel, 1000, corpusScoringInfo.btV);
        b.d(parcel, 2, corpusScoringInfo.weight);
        b.D(parcel, ae);
    }
}
