package com.google.android.gms.auth.firstparty.shared;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class g implements Parcelable$Creator<LatencyTracker>
{
    static void a(final LatencyTracker latencyTracker, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, latencyTracker.bxf);
        b.a(parcel, 2, latencyTracker.mName, false);
        b.a(parcel, 3, latencyTracker.bAe);
        b.a(parcel, 4, (Parcelable)latencyTracker.bAf, n, false);
        b.D(parcel, ae);
    }
}
