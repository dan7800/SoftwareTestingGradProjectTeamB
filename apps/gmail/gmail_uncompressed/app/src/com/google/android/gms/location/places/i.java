package com.google.android.gms.location.places;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class i implements Parcelable$Creator<PlaceType>
{
    static void a(final PlaceType placeType, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, placeType.bzB, false);
        b.d(parcel, 1000, placeType.btV);
        b.D(parcel, ae);
    }
}
