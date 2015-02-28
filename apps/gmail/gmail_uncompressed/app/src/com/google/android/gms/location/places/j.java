package com.google.android.gms.location.places;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class j implements Parcelable$Creator<AutocompletePrediction$a>
{
    static void a(final AutocompletePrediction$a autocompletePrediction$a, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, autocompletePrediction$a.gY);
        b.d(parcel, 1000, autocompletePrediction$a.btV);
        b.d(parcel, 2, autocompletePrediction$a.mLength);
        b.D(parcel, ae);
    }
}
