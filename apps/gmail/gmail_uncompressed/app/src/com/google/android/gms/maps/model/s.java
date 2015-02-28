package com.google.android.gms.maps.model;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class s implements Parcelable$Creator<VisibleRegion>
{
    static void a(final VisibleRegion visibleRegion, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, visibleRegion.Jt());
        b.a(parcel, 2, (Parcelable)visibleRegion.cfY, n, false);
        b.a(parcel, 3, (Parcelable)visibleRegion.cfZ, n, false);
        b.a(parcel, 4, (Parcelable)visibleRegion.cga, n, false);
        b.a(parcel, 5, (Parcelable)visibleRegion.cgb, n, false);
        b.a(parcel, 6, (Parcelable)visibleRegion.cgc, n, false);
        b.D(parcel, ae);
    }
}
