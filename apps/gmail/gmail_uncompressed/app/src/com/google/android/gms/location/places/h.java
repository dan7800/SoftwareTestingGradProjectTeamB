package com.google.android.gms.location.places;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class h implements Parcelable$Creator<PlaceRequest>
{
    static void a(final PlaceRequest placeRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, placeRequest.btV);
        b.a(parcel, 2, (Parcelable)placeRequest.Tv(), n, false);
        b.a(parcel, 3, placeRequest.Tz());
        b.d(parcel, 4, placeRequest.getPriority());
        b.D(parcel, ae);
    }
}
