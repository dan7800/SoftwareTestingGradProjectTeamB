package com.google.android.gms.search.global;

import android.os.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class h implements Parcelable$Creator<GetPendingExperimentIdsCall$Response>
{
    static void a(final GetPendingExperimentIdsCall$Response getPendingExperimentIdsCall$Response, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, getPendingExperimentIdsCall$Response.btV);
        b.a(parcel, 1, (Parcelable)getPendingExperimentIdsCall$Response.buu, n, false);
        b.a(parcel, 2, getPendingExperimentIdsCall$Response.ckk);
        b.D(parcel, ae);
    }
}
