package com.google.android.gms.drive.query.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<FilterHolder>
{
    static void a(final FilterHolder filterHolder, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)filterHolder.bIv, n, false);
        b.d(parcel, 1000, filterHolder.btV);
        b.a(parcel, 2, (Parcelable)filterHolder.bIw, n, false);
        b.a(parcel, 3, (Parcelable)filterHolder.bIx, n, false);
        b.a(parcel, 4, (Parcelable)filterHolder.bIy, n, false);
        b.a(parcel, 5, (Parcelable)filterHolder.bIz, n, false);
        b.a(parcel, 6, (Parcelable)filterHolder.bIA, n, false);
        b.a(parcel, 7, (Parcelable)filterHolder.bIB, n, false);
        b.D(parcel, ae);
    }
}
