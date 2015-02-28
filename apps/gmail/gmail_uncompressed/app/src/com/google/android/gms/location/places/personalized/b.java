package com.google.android.gms.location.places.personalized;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<PlaceAlias>
{
    static void a(final PlaceAlias placeAlias, final Parcel parcel) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, placeAlias.TB(), false);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1000, placeAlias.btV);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
