package com.google.android.gms.location.places;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class c implements Parcelable$Creator<AutocompletePrediction>
{
    static void a(final AutocompletePrediction autocompletePrediction, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, autocompletePrediction.bMj, false);
        b.d(parcel, 1000, autocompletePrediction.btV);
        b.a(parcel, 2, autocompletePrediction.cbv, false);
        b.a(parcel, 3, autocompletePrediction.cbu, false);
        b.b(parcel, 4, autocompletePrediction.cbw, false);
        b.D(parcel, ae);
    }
}
