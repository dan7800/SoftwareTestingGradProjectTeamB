package com.google.android.gms.wearable.internal;

import android.os.*;
import com.google.android.gms.wearable.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class y implements Parcelable$Creator<t>
{
    static void a(final t t, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, t.versionCode);
        b.d(parcel, 2, t.statusCode);
        b.a(parcel, 3, t.cng, n);
        b.D(parcel, ae);
    }
}
