package com.google.android.gms.location;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<LocationRequest>
{
    static void a(final LocationRequest locationRequest, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, locationRequest.do);
        b.d(parcel, 1000, locationRequest.Jt());
        b.a(parcel, 2, locationRequest.car);
        b.a(parcel, 3, locationRequest.cas);
        b.a(parcel, 4, locationRequest.cat);
        b.a(parcel, 5, locationRequest.cau);
        b.d(parcel, 6, locationRequest.cav);
        b.a(parcel, 7, locationRequest.caw);
        b.a(parcel, 8, locationRequest.cax);
        b.D(parcel, ae);
    }
}
