package com.google.android.gms.wallet;

import android.os.*;
import com.google.android.gms.identity.intents.model.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class k implements Parcelable$Creator<MaskedWallet>
{
    static void a(final MaskedWallet maskedWallet, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, maskedWallet.Jt());
        b.a(parcel, 2, maskedWallet.ckQ, false);
        b.a(parcel, 3, maskedWallet.ckR, false);
        b.a(parcel, 4, maskedWallet.ckW);
        b.a(parcel, 5, maskedWallet.ckT, false);
        b.a(parcel, 6, (Parcelable)maskedWallet.ckU, n, false);
        b.a(parcel, 7, (Parcelable)maskedWallet.ckV, n, false);
        b.a(parcel, 8, maskedWallet.clJ, n);
        b.a(parcel, 9, maskedWallet.clK, n);
        b.a(parcel, 10, (Parcelable)maskedWallet.ckX, n, false);
        b.a(parcel, 11, (Parcelable)maskedWallet.ckY, n, false);
        b.a(parcel, 12, maskedWallet.ckZ, n);
        b.D(parcel, ae);
    }
}
