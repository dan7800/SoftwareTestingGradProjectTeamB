package com.google.android.gms.wearable.internal;

import android.os.*;
import com.google.android.gms.wearable.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class w implements Parcelable$Creator<r>
{
    static void a(final r r, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, r.versionCode);
        b.d(parcel, 2, r.statusCode);
        b.a(parcel, 3, (Parcelable)r.cnf, n, false);
        b.D(parcel, ae);
    }
}
