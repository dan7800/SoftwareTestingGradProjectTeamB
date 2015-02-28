package com.google.android.gms.wearable.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<z>
{
    static void a(final z z, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, z.versionCode);
        b.d(parcel, 2, z.statusCode);
        b.a(parcel, 3, (Parcelable)z.cni, n, false);
        b.D(parcel, ae);
    }
}
