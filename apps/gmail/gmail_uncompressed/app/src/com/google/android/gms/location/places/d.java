package com.google.android.gms.location.places;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<NearbyAlertRequest>
{
    static void a(final NearbyAlertRequest nearbyAlertRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, nearbyAlertRequest.Rt());
        b.d(parcel, 1000, nearbyAlertRequest.Jt());
        b.d(parcel, 2, nearbyAlertRequest.Tu());
        b.a(parcel, 3, (Parcelable)nearbyAlertRequest.Tv(), n, false);
        b.D(parcel, ae);
    }
}
