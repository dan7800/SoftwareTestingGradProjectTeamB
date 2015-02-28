package com.google.android.gms.maps.model;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class i implements Parcelable$Creator<LatLng>
{
    static void a(final LatLng latLng, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, latLng.Jt());
        b.a(parcel, 2, latLng.cfz);
        b.a(parcel, 3, latLng.cfA);
        b.D(parcel, ae);
    }
}
