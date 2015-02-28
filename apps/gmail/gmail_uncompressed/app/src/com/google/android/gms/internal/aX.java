package com.google.android.gms.internal;

import android.os.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class ax implements Parcelable$Creator<lr>
{
    static void a(final lr lr, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)lr.MA(), n, false);
        b.d(parcel, 1000, lr.Jt());
        b.D(parcel, ae);
    }
}
