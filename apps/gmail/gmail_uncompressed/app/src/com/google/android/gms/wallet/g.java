package com.google.android.gms.wallet;

import android.os.*;
import com.google.android.gms.identity.intents.model.*;
import android.accounts.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class g implements Parcelable$Creator<ImmediateFullWalletRequest>
{
    static void a(final ImmediateFullWalletRequest immediateFullWalletRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, immediateFullWalletRequest.Jt());
        b.d(parcel, 2, immediateFullWalletRequest.clb);
        b.a(parcel, 3, (Parcelable)immediateFullWalletRequest.account, n, false);
        b.a(parcel, 4, immediateFullWalletRequest.clc, false);
        b.d(parcel, 5, immediateFullWalletRequest.cld);
        b.a(parcel, 6, immediateFullWalletRequest.cle);
        b.a(parcel, 7, immediateFullWalletRequest.clf);
        b.a(parcel, 8, immediateFullWalletRequest.clg);
        b.a(parcel, 9, immediateFullWalletRequest.bzP, false);
        b.a(parcel, 10, immediateFullWalletRequest.clh);
        b.a(parcel, 11, immediateFullWalletRequest.cli, n);
        b.b(parcel, 12, immediateFullWalletRequest.clj, false);
        b.D(parcel, ae);
    }
}
