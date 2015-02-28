package com.google.android.gms.wearable.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class l implements Parcelable$Creator<ar>
{
    static void a(final ar ar, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, ar.versionCode);
        b.d(parcel, 2, ar.statusCode);
        b.d(parcel, 3, ar.cnb);
        b.D(parcel, ae);
    }
}
