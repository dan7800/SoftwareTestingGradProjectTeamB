package com.google.android.gms.wallet.wobs;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class j implements Parcelable$Creator<WalletObjectMessage>
{
    static void a(final WalletObjectMessage walletObjectMessage, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, walletObjectMessage.Jt());
        b.a(parcel, 2, walletObjectMessage.cmF, false);
        b.a(parcel, 3, walletObjectMessage.bSx, false);
        b.a(parcel, 4, (Parcelable)walletObjectMessage.cmJ, n, false);
        b.a(parcel, 5, (Parcelable)walletObjectMessage.cmK, n, false);
        b.a(parcel, 6, (Parcelable)walletObjectMessage.cmL, n, false);
        b.D(parcel, ae);
    }
}
