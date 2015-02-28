package com.google.android.gms.location.places;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class g implements Parcelable$Creator<PlaceReport>
{
    static void a(final PlaceReport placeReport, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, placeReport.btV);
        b.a(parcel, 2, placeReport.Ty(), false);
        b.a(parcel, 3, placeReport.getTag(), false);
        b.D(parcel, ae);
    }
}
