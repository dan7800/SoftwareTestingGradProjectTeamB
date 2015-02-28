package com.google.android.gms.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class u implements Parcelable$Creator<gy>
{
    static void a(final gy gy, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, gy.versionCode);
        b.a(parcel, 2, gy.bSP, false);
        b.d(parcel, 3, gy.bSQ);
        b.d(parcel, 4, gy.bSR);
        b.a(parcel, 5, gy.bSS);
        b.D(parcel, ae);
    }
}
