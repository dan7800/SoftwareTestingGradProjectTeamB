package com.google.android.gms.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class df implements Parcelable$Creator<sn>
{
    static void a(final sn sn, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, sn.btV);
        b.a(parcel, 2, (Parcelable)sn.Sg(), n, false);
        b.a(parcel, 3, (Parcelable)sn.Sh(), n, false);
        b.a(parcel, 4, sn.getTitle(), false);
        b.a(parcel, 6, (Parcelable)sn.Sp(), n, false);
        b.a(parcel, 7, (Parcelable)sn.Sr(), n, false);
        b.a(parcel, 8, (Parcelable)sn.Sq(), n, false);
        b.a(parcel, 9, sn.Sk());
        b.a(parcel, 11, sn.Sl());
        b.a(parcel, 12, sn.Sj());
        b.a(parcel, 15, sn.Ss());
        b.a(parcel, 19, sn.Si());
        b.a(parcel, 23, sn.Sn());
        b.a(parcel, 22, sn.Sm());
        b.a(parcel, 24, sn.So());
        b.D(parcel, ae);
    }
}
