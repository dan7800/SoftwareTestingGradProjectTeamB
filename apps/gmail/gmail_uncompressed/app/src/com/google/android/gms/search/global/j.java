package com.google.android.gms.search.global;

import android.os.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class j implements Parcelable$Creator<SetExperimentIdsCall$Response>
{
    static void a(final SetExperimentIdsCall$Response setExperimentIdsCall$Response, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, setExperimentIdsCall$Response.btV);
        b.a(parcel, 1, (Parcelable)setExperimentIdsCall$Response.buu, n, false);
        b.D(parcel, ae);
    }
}
