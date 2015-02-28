package com.google.android.gms.wallet.wobs;

import android.os.*;
import com.google.android.gms.maps.model.*;
import java.util.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<CommonWalletObject>
{
    static void a(final CommonWalletObject commonWalletObject, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, commonWalletObject.Jt());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, commonWalletObject.clp, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, commonWalletObject.clx, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, commonWalletObject.name, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, commonWalletObject.clr, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, commonWalletObject.clt, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, commonWalletObject.clu, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, commonWalletObject.clv, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, commonWalletObject.clw, false);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 10, commonWalletObject.state);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 11, commonWalletObject.cly, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, (Parcelable)commonWalletObject.clz, n, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 13, commonWalletObject.clA, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, commonWalletObject.clB, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 15, commonWalletObject.clC, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 17, commonWalletObject.clE);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 16, commonWalletObject.clD, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 19, commonWalletObject.clG, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 18, commonWalletObject.clF, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 20, commonWalletObject.clH, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
