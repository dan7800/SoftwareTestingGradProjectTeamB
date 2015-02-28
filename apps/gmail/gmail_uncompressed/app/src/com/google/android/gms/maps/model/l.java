package com.google.android.gms.maps.model;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class l implements Parcelable$Creator<PolylineOptions>
{
    static void a(final PolylineOptions polylineOptions, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, polylineOptions.Jt());
        b.b(parcel, 2, polylineOptions.UE(), false);
        b.a(parcel, 3, polylineOptions.getWidth());
        b.d(parcel, 4, polylineOptions.getColor());
        b.a(parcel, 5, polylineOptions.Ur());
        b.a(parcel, 6, polylineOptions.isVisible());
        b.a(parcel, 7, polylineOptions.UF());
        b.D(parcel, ae);
    }
}
