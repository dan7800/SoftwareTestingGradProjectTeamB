package com.google.android.gms.common.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class f implements Parcelable$Creator<a>
{
    static void a(final a a, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, a.btV);
        b.a(parcel, 2, (Parcelable)a.bEi, n, false);
        b.d(parcel, 3, a.bwX);
        b.D(parcel, ae);
    }
}
