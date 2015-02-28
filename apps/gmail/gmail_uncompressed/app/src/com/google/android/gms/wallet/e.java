package com.google.android.gms.wallet;

import android.os.*;
import com.google.android.gms.identity.intents.model.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class e implements Parcelable$Creator<FullWallet>
{
    static void a(final FullWallet fullWallet, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, fullWallet.Jt());
        b.a(parcel, 2, fullWallet.ckQ, false);
        b.a(parcel, 3, fullWallet.ckR, false);
        b.a(parcel, 4, (Parcelable)fullWallet.ckS, n, false);
        b.a(parcel, 5, fullWallet.ckT, false);
        b.a(parcel, 6, (Parcelable)fullWallet.ckU, n, false);
        b.a(parcel, 7, (Parcelable)fullWallet.ckV, n, false);
        b.a(parcel, 8, fullWallet.ckW);
        b.a(parcel, 9, (Parcelable)fullWallet.ckX, n, false);
        b.a(parcel, 10, (Parcelable)fullWallet.ckY, n, false);
        b.a(parcel, 11, fullWallet.ckZ, n);
        b.D(parcel, ae);
    }
}
