package com.google.android.gms.search.global;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<GetCurrentExperimentIdsCall$Request>
{
    static void a(final GetCurrentExperimentIdsCall$Request getCurrentExperimentIdsCall$Request, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, getCurrentExperimentIdsCall$Request.btV);
        b.D(parcel, ae);
    }
}
