package com.google.android.gms.location.places.personalized;

import android.os.*;
import com.google.android.gms.location.places.personalized.internal.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class c implements Parcelable$Creator<PlaceUserData>
{
    static void a(final PlaceUserData placeUserData, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, placeUserData.TC(), false);
        b.d(parcel, 1000, placeUserData.btV);
        b.a(parcel, 2, placeUserData.Ty(), false);
        b.b(parcel, 5, placeUserData.TE(), false);
        b.b(parcel, 6, placeUserData.TD(), false);
        b.D(parcel, ae);
    }
}
