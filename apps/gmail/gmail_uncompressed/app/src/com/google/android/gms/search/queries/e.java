package com.google.android.gms.search.queries;

import android.os.*;
import com.google.android.gms.appdatasearch.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class e implements Parcelable$Creator<GlobalQueryCall$b>
{
    static void a(final GlobalQueryCall$b globalQueryCall$b, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, globalQueryCall$b.btV);
        b.a(parcel, 1, globalQueryCall$b.Tt, false);
        b.d(parcel, 2, globalQueryCall$b.start);
        b.d(parcel, 3, globalQueryCall$b.bZQ);
        b.a(parcel, 4, (Parcelable)globalQueryCall$b.ckz, n, false);
        b.D(parcel, ae);
    }
}
