package com.google.android.gms.wearable.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class u implements Parcelable$Creator<p>
{
    static void a(final p p2, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, p2.versionCode);
        b.d(parcel, 2, p2.statusCode);
        b.d(parcel, 3, p2.cne);
        b.D(parcel, ae);
    }
}
