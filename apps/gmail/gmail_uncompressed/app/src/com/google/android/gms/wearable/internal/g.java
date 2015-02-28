package com.google.android.gms.wearable.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class g implements Parcelable$Creator<ah>
{
    static void a(final ah ah, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, ah.btV);
        b.d(parcel, 2, ah.LS());
        b.a(parcel, 3, ah.getPath(), false);
        b.a(parcel, 4, ah.getData());
        b.a(parcel, 5, ah.VO(), false);
        b.D(parcel, ae);
    }
}
