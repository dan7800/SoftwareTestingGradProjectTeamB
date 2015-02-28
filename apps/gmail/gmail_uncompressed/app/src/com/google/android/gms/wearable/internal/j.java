package com.google.android.gms.wearable.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class j implements Parcelable$Creator<an>
{
    static void a(final an an, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, an.versionCode);
        b.d(parcel, 2, an.statusCode);
        b.a(parcel, 3, (Parcelable)an.cmZ, n, false);
        b.D(parcel, ae);
    }
}
