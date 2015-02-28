package com.google.android.gms.wallet;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class f implements Parcelable$Creator<FullWalletRequest>
{
    static void a(final FullWalletRequest fullWalletRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, fullWalletRequest.Jt());
        b.a(parcel, 2, fullWalletRequest.ckQ, false);
        b.a(parcel, 3, fullWalletRequest.ckR, false);
        b.a(parcel, 4, (Parcelable)fullWalletRequest.cla, n, false);
        b.D(parcel, ae);
    }
}
