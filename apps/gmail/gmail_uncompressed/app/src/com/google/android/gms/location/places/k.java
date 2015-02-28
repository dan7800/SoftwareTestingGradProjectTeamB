package com.google.android.gms.location.places;

import android.os.*;
import com.google.android.gms.maps.model.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class k implements Parcelable$Creator<UserAddedPlace>
{
    static void a(final UserAddedPlace userAddedPlace, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, userAddedPlace.getName(), false);
        b.d(parcel, 1000, userAddedPlace.btV);
        b.a(parcel, 2, (Parcelable)userAddedPlace.Rx(), n, false);
        b.a(parcel, 3, userAddedPlace.getAddress(), false);
        b.b(parcel, 4, userAddedPlace.Rw(), false);
        b.a(parcel, 5, userAddedPlace.RB(), false);
        b.a(parcel, 6, userAddedPlace.TA(), false);
        b.D(parcel, ae);
    }
}
