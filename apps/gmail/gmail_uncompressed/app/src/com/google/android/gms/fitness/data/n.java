package com.google.android.gms.fitness.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class n implements Parcelable$Creator<RawDataPoint>
{
    static void a(final RawDataPoint rawDataPoint, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, rawDataPoint.bKz);
        b.d(parcel, 1000, rawDataPoint.btV);
        b.a(parcel, 2, rawDataPoint.bKA);
        b.a(parcel, 3, rawDataPoint.bKB, n);
        b.d(parcel, 4, rawDataPoint.bMe);
        b.d(parcel, 5, rawDataPoint.bMf);
        b.a(parcel, 6, rawDataPoint.bKD);
        b.a(parcel, 7, rawDataPoint.bKE);
        b.D(parcel, ae);
    }
}
