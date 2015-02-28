package com.google.android.gms.drive.query.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class k implements Parcelable$Creator<NotFilter>
{
    static void a(final NotFilter notFilter, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, notFilter.btV);
        b.a(parcel, 1, (Parcelable)notFilter.bIF, n, false);
        b.D(parcel, ae);
    }
}
