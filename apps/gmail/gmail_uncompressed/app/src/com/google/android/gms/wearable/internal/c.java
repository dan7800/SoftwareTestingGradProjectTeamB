package com.google.android.gms.wearable.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<ab>
{
    static void a(final ab ab, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, ab.versionCode);
        b.d(parcel, 2, ab.statusCode);
        b.a(parcel, 3, (Parcelable)ab.cmW, n, false);
        b.D(parcel, ae);
    }
}
