package com.google.android.gms.location.places;

import android.os.*;
import com.google.android.gms.internal.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class f implements Parcelable$Creator<PlaceLikelihood>
{
    static void a(final PlaceLikelihood placeLikelihood, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)placeLikelihood.cbH, n, false);
        b.d(parcel, 1000, placeLikelihood.btV);
        b.a(parcel, 2, placeLikelihood.cbI);
        b.D(parcel, ae);
    }
}
