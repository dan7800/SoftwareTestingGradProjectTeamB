package com.google.android.gms.maps.model;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class f implements Parcelable$Creator<CircleOptions>
{
    static void a(final CircleOptions circleOptions, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, circleOptions.Jt());
        b.a(parcel, 2, (Parcelable)circleOptions.Un(), n, false);
        b.a(parcel, 3, circleOptions.Uo());
        b.a(parcel, 4, circleOptions.getStrokeWidth());
        b.d(parcel, 5, circleOptions.Up());
        b.d(parcel, 6, circleOptions.Uq());
        b.a(parcel, 7, circleOptions.Ur());
        b.a(parcel, 8, circleOptions.isVisible());
        b.D(parcel, ae);
    }
}
