package com.google.android.gms.wearable.internal;

import android.net.*;
import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class s implements Parcelable$Creator<m>
{
    static void a(final m m, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, m.btV);
        b.a(parcel, 2, (Parcelable)m.getUri(), n, false);
        b.a(parcel, 4, m.VN());
        b.a(parcel, 5, m.getData());
        b.D(parcel, ae);
    }
}
