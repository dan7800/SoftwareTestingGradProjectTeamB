package com.google.android.gms.search.global;

import android.os.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<GetCurrentExperimentIdsCall$Response>
{
    static void a(final GetCurrentExperimentIdsCall$Response getCurrentExperimentIdsCall$Response, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1000, getCurrentExperimentIdsCall$Response.btV);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, (Parcelable)getCurrentExperimentIdsCall$Response.buu, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, getCurrentExperimentIdsCall$Response.ckk);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
