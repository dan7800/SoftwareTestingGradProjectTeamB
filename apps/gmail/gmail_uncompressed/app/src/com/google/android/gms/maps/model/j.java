package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class j implements Parcelable$Creator<MarkerOptions>
{
    static void a(final MarkerOptions markerOptions, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, markerOptions.Jt());
        b.a(parcel, 2, (Parcelable)markerOptions.Ui(), n, false);
        b.a(parcel, 3, markerOptions.getTitle(), false);
        b.a(parcel, 4, markerOptions.uG(), false);
        b.a(parcel, 5, markerOptions.Uy());
        b.a(parcel, 6, markerOptions.Uw());
        b.a(parcel, 7, markerOptions.Ux());
        b.a(parcel, 8, markerOptions.Uz());
        b.a(parcel, 9, markerOptions.isVisible());
        b.a(parcel, 10, markerOptions.UA());
        b.a(parcel, 11, markerOptions.getRotation());
        b.a(parcel, 12, markerOptions.UB());
        b.a(parcel, 13, markerOptions.UC());
        b.a(parcel, 14, markerOptions.getAlpha());
        b.D(parcel, ae);
    }
}
