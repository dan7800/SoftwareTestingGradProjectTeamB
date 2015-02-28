package com.google.android.gms.fitness.request;

import android.os.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class l implements Parcelable$Creator<e>
{
    static void a(final e e, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)e.Nb(), n, false);
        b.d(parcel, 1000, e.Jt());
        b.D(parcel, ae);
    }
}
