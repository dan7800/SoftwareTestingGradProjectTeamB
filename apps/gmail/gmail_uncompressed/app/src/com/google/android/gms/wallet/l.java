package com.google.android.gms.wallet;

import android.os.*;
import com.google.android.gms.identity.intents.model.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class l implements Parcelable$Creator<MaskedWalletRequest>
{
    static void a(final MaskedWalletRequest maskedWalletRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, maskedWalletRequest.Jt());
        b.a(parcel, 2, maskedWalletRequest.ckR, false);
        b.a(parcel, 3, maskedWalletRequest.cle);
        b.a(parcel, 4, maskedWalletRequest.clf);
        b.a(parcel, 5, maskedWalletRequest.clg);
        b.a(parcel, 6, maskedWalletRequest.clL, false);
        b.a(parcel, 7, maskedWalletRequest.ckM, false);
        b.a(parcel, 8, maskedWalletRequest.clM, false);
        b.a(parcel, 9, (Parcelable)maskedWalletRequest.cla, n, false);
        b.a(parcel, 10, maskedWalletRequest.clN);
        b.a(parcel, 11, maskedWalletRequest.clO);
        b.a(parcel, 12, maskedWalletRequest.cli, n);
        b.a(parcel, 13, maskedWalletRequest.clP);
        b.a(parcel, 14, maskedWalletRequest.clQ);
        b.b(parcel, 15, maskedWalletRequest.clj, false);
        b.D(parcel, ae);
    }
}
