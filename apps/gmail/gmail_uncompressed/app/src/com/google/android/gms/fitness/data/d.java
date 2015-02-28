package com.google.android.gms.fitness.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<DataPoint>
{
    static void a(final DataPoint dataPoint, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)dataPoint.MA(), n, false);
        b.d(parcel, 1000, dataPoint.Jt());
        b.a(parcel, 3, dataPoint.getTimestampNanos());
        b.a(parcel, 4, dataPoint.ME());
        b.a(parcel, 5, dataPoint.Mz(), n);
        b.a(parcel, 6, (Parcelable)dataPoint.MB(), n, false);
        b.a(parcel, 7, dataPoint.MC());
        b.a(parcel, 8, dataPoint.MD());
        b.D(parcel, ae);
    }
}
