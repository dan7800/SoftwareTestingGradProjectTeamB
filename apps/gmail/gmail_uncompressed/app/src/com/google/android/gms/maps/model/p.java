package com.google.android.gms.maps.model;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class p implements Parcelable$Creator<StreetViewPanoramaOrientation>
{
    static void a(final StreetViewPanoramaOrientation streetViewPanoramaOrientation, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, streetViewPanoramaOrientation.Jt());
        b.a(parcel, 2, streetViewPanoramaOrientation.cfh);
        b.a(parcel, 3, streetViewPanoramaOrientation.cfi);
        b.D(parcel, ae);
    }
}
