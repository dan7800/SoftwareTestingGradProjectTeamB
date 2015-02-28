package com.google.android.gms.wallet;

import android.os.*;
import com.google.android.gms.wallet.wobs.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class n implements Parcelable$Creator<OfferWalletObject>
{
    static void a(final OfferWalletObject offerWalletObject, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, offerWalletObject.Jt());
        b.a(parcel, 2, offerWalletObject.clp, false);
        b.a(parcel, 3, offerWalletObject.clS, false);
        b.a(parcel, 4, (Parcelable)offerWalletObject.clT, n, false);
        b.D(parcel, ae);
    }
}
