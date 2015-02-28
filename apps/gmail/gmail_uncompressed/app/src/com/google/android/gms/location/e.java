package com.google.android.gms.location;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class e implements Parcelable$Creator<LocationStatus>
{
    static void a(final LocationStatus locationStatus, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, locationStatus.cay);
        b.d(parcel, 1000, locationStatus.Jt());
        b.d(parcel, 2, locationStatus.caz);
        b.a(parcel, 3, locationStatus.caA);
        b.D(parcel, ae);
    }
}
