package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class k implements Parcelable$Creator<ap>
{
    static void a(final ap ap, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, ap.btV);
        b.a(parcel, 2, ap.VP());
        b.D(parcel, ae);
    }
}
