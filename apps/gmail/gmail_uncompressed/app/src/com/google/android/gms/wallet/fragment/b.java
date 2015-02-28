package com.google.android.gms.wallet.fragment;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<WalletFragmentOptions>
{
    static void a(final WalletFragmentOptions walletFragmentOptions, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, walletFragmentOptions.btV);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 2, walletFragmentOptions.VG());
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 3, walletFragmentOptions.getTheme());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, (Parcelable)walletFragmentOptions.VH(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 5, walletFragmentOptions.getMode());
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
