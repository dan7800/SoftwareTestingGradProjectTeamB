package com.google.android.gms.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class de implements Parcelable$Creator<sl>
{
    static void a(final sl sl, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, sl.btV);
        b.a(parcel, 2, sl.Sz());
        b.a(parcel, 3, sl.SA());
        b.a(parcel, 4, sl.getName(), false);
        b.a(parcel, 5, sl.SB());
        b.a(parcel, 6, sl.SC());
        b.a(parcel, 8, sl.SD(), false);
        b.D(parcel, ae);
    }
}
