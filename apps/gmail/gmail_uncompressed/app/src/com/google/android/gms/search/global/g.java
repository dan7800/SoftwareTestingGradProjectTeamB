package com.google.android.gms.search.global;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class g implements Parcelable$Creator<GetPendingExperimentIdsCall$Request>
{
    static void a(final GetPendingExperimentIdsCall$Request getPendingExperimentIdsCall$Request, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, getPendingExperimentIdsCall$Request.btV);
        b.D(parcel, ae);
    }
}
