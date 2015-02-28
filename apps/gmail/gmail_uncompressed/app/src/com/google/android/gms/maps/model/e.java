package com.google.android.gms.maps.model;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class e implements Parcelable$Creator<CameraPosition>
{
    static void a(final CameraPosition cameraPosition, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, cameraPosition.Jt());
        b.a(parcel, 2, (Parcelable)cameraPosition.cff, n, false);
        b.a(parcel, 3, cameraPosition.cfg);
        b.a(parcel, 4, cameraPosition.cfh);
        b.a(parcel, 5, cameraPosition.cfi);
        b.D(parcel, ae);
    }
}
