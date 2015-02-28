package com.google.android.gms.wallet.fragment;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class c implements Parcelable$Creator<WalletFragmentStyle>
{
    static void a(final WalletFragmentStyle walletFragmentStyle, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, walletFragmentStyle.btV);
        b.a(parcel, 2, walletFragmentStyle.cmg);
        b.d(parcel, 3, walletFragmentStyle.cmh);
        b.D(parcel, ae);
    }
}
