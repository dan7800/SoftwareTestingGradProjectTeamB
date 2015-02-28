package com.google.android.gms.maps;

import android.os.*;
import com.google.android.gms.maps.model.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<GoogleMapOptions>
{
    static void a(final GoogleMapOptions googleMapOptions, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, googleMapOptions.Jt());
        b.a(parcel, 2, googleMapOptions.TU());
        b.a(parcel, 3, googleMapOptions.TV());
        b.d(parcel, 4, googleMapOptions.Uc());
        b.a(parcel, 5, (Parcelable)googleMapOptions.Ud(), n, false);
        b.a(parcel, 6, googleMapOptions.TW());
        b.a(parcel, 7, googleMapOptions.TX());
        b.a(parcel, 8, googleMapOptions.TY());
        b.a(parcel, 9, googleMapOptions.TZ());
        b.a(parcel, 10, googleMapOptions.Ua());
        b.a(parcel, 11, googleMapOptions.Ub());
        b.D(parcel, ae);
    }
}
