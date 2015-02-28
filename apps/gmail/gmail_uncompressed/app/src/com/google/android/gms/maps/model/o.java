package com.google.android.gms.maps.model;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class o implements Parcelable$Creator<StreetViewPanoramaLocation>
{
    static void a(final StreetViewPanoramaLocation streetViewPanoramaLocation, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, streetViewPanoramaLocation.Jt());
        b.a(parcel, 2, streetViewPanoramaLocation.cfP, n);
        b.a(parcel, 3, (Parcelable)streetViewPanoramaLocation.cfQ, n, false);
        b.a(parcel, 4, streetViewPanoramaLocation.cfO, false);
        b.D(parcel, ae);
    }
}
