package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class i implements Parcelable$Creator<dr>
{
    static void a(final dr dr, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, dr.versionCode);
        b.a(parcel, 2, (Parcelable)dr.bRT, n, false);
        b.a(parcel, 3, dr.QC());
        b.a(parcel, 4, dr.QD());
        b.a(parcel, 5, dr.QE());
        b.a(parcel, 6, dr.QF());
        b.a(parcel, 7, dr.bRY, false);
        b.a(parcel, 8, dr.bRZ);
        b.a(parcel, 9, dr.bSa, false);
        b.a(parcel, 10, dr.QH());
        b.d(parcel, 11, dr.orientation);
        b.d(parcel, 12, dr.bSc);
        b.a(parcel, 13, dr.bzq, false);
        b.a(parcel, 14, (Parcelable)dr.bSd, n, false);
        b.a(parcel, 15, dr.QG());
        b.a(parcel, 17, (Parcelable)dr.bSg, n, false);
        b.a(parcel, 16, dr.bSf, false);
        b.D(parcel, ae);
    }
}
