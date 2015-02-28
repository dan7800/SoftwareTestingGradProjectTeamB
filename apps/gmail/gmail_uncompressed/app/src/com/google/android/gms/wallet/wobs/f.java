package com.google.android.gms.wallet.wobs;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class f implements Parcelable$Creator<LoyaltyPoints>
{
    static void a(final LoyaltyPoints loyaltyPoints, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, loyaltyPoints.Jt());
        b.a(parcel, 2, loyaltyPoints.label, false);
        b.a(parcel, 3, (Parcelable)loyaltyPoints.cmy, n, false);
        b.a(parcel, 4, loyaltyPoints.type, false);
        b.a(parcel, 5, (Parcelable)loyaltyPoints.clz, n, false);
        b.D(parcel, ae);
    }
}
