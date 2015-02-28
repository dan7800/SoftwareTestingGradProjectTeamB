package com.google.android.gms.wallet.fragment;

import android.os.*;
import com.google.android.gms.wallet.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<WalletFragmentInitParams>
{
    static void a(final WalletFragmentInitParams walletFragmentInitParams, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, walletFragmentInitParams.btV);
        b.a(parcel, 2, walletFragmentInitParams.FP(), false);
        b.a(parcel, 3, (Parcelable)walletFragmentInitParams.VD(), n, false);
        b.d(parcel, 4, walletFragmentInitParams.VE());
        b.a(parcel, 5, (Parcelable)walletFragmentInitParams.VF(), n, false);
        b.D(parcel, ae);
    }
}
