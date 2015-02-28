package com.google.android.gms.maps.model;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class h implements Parcelable$Creator<LatLngBounds>
{
    static void a(final LatLngBounds latLngBounds, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, latLngBounds.Jt());
        b.a(parcel, 2, (Parcelable)latLngBounds.cfB, n, false);
        b.a(parcel, 3, (Parcelable)latLngBounds.cfC, n, false);
        b.D(parcel, ae);
    }
}
