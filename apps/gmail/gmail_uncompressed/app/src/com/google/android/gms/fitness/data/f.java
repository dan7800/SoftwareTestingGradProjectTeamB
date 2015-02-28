package com.google.android.gms.fitness.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class f implements Parcelable$Creator<DataSource>
{
    static void a(final DataSource dataSource, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)dataSource.MF(), n, false);
        b.d(parcel, 1000, dataSource.Jt());
        b.a(parcel, 2, dataSource.getName(), false);
        b.d(parcel, 3, dataSource.getType());
        b.a(parcel, 4, (Parcelable)dataSource.MJ(), n, false);
        b.a(parcel, 5, (Parcelable)dataSource.MI(), n, false);
        b.a(parcel, 6, dataSource.MK(), false);
        b.a(parcel, 7, dataSource.ML());
        b.D(parcel, ae);
    }
}
