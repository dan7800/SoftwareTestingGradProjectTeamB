package com.google.android.gms.identity.intents.model;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<UserAddress>
{
    static void a(final UserAddress userAddress, final Parcel parcel) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, userAddress.Jt());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, userAddress.name, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, userAddress.bRb, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, userAddress.bRc, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, userAddress.bRd, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, userAddress.bRe, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, userAddress.bRf, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, userAddress.bRg, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, userAddress.bRh, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, userAddress.bRa, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, userAddress.bRi, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, userAddress.bRj, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, userAddress.bya, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, userAddress.bRk);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 15, userAddress.bRl, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 16, userAddress.bRm, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
