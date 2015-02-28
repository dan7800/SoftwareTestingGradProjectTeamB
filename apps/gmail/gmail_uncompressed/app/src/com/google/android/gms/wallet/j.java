package com.google.android.gms.wallet;

import android.os.*;
import com.google.android.gms.maps.model.*;
import java.util.*;
import com.google.android.gms.wallet.wobs.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class j implements Parcelable$Creator<LoyaltyWalletObject>
{
    static void a(final LoyaltyWalletObject loyaltyWalletObject, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, loyaltyWalletObject.Jt());
        b.a(parcel, 2, loyaltyWalletObject.clp, false);
        b.a(parcel, 3, loyaltyWalletObject.clq, false);
        b.a(parcel, 4, loyaltyWalletObject.clr, false);
        b.a(parcel, 5, loyaltyWalletObject.cls, false);
        b.a(parcel, 6, loyaltyWalletObject.acw, false);
        b.a(parcel, 7, loyaltyWalletObject.clt, false);
        b.a(parcel, 8, loyaltyWalletObject.clu, false);
        b.a(parcel, 9, loyaltyWalletObject.clv, false);
        b.a(parcel, 10, loyaltyWalletObject.clw, false);
        b.a(parcel, 11, loyaltyWalletObject.clx, false);
        b.d(parcel, 12, loyaltyWalletObject.state);
        b.b(parcel, 13, loyaltyWalletObject.cly, false);
        b.a(parcel, 14, (Parcelable)loyaltyWalletObject.clz, n, false);
        b.b(parcel, 15, loyaltyWalletObject.clA, false);
        b.a(parcel, 17, loyaltyWalletObject.clC, false);
        b.a(parcel, 16, loyaltyWalletObject.clB, false);
        b.a(parcel, 19, loyaltyWalletObject.clE);
        b.b(parcel, 18, loyaltyWalletObject.clD, false);
        b.b(parcel, 21, loyaltyWalletObject.clG, false);
        b.b(parcel, 20, loyaltyWalletObject.clF, false);
        b.a(parcel, 23, (Parcelable)loyaltyWalletObject.clI, n, false);
        b.b(parcel, 22, loyaltyWalletObject.clH, false);
        b.D(parcel, ae);
    }
}
