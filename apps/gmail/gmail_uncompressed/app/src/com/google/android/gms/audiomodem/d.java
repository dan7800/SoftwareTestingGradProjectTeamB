package com.google.android.gms.audiomodem;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<Encoding>
{
    static void a(final Encoding encoding, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, encoding.Jt());
        b.d(parcel, 2, encoding.getType());
        b.a(parcel, 3, (Parcelable)encoding.JI(), n, false);
        b.a(parcel, 4, (Parcelable)encoding.JJ(), n, false);
        b.D(parcel, ae);
    }
}
