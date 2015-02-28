package com.google.android.gms.common.server.response;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class g implements Parcelable$Creator<f>
{
    static void a(final f f, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, f.Jt());
        b.a(parcel, f.LM());
        b.a(parcel, 3, (Parcelable)f.LN(), n, false);
        b.D(parcel, ae);
    }
}
