package com.google.android.gms.location.places;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class e implements Parcelable$Creator<PlaceFilter>
{
    static void a(final PlaceFilter placeFilter, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.b(parcel, 1, placeFilter.cbz, false);
        b.d(parcel, 1000, placeFilter.btV);
        b.a(parcel, 2, placeFilter.Tw(), false);
        b.a(parcel, 3, placeFilter.Tx());
        b.b(parcel, 4, placeFilter.cbC, false);
        b.a(parcel, 6, placeFilter.cbD, false);
        b.D(parcel, ae);
    }
}
