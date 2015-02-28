package com.google.android.gms.wallet;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<CreateWalletObjectsRequest>
{
    static void a(final CreateWalletObjectsRequest createWalletObjectsRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, createWalletObjectsRequest.Jt());
        b.a(parcel, 2, (Parcelable)createWalletObjectsRequest.ckO, n, false);
        b.a(parcel, 3, (Parcelable)createWalletObjectsRequest.ckP, n, false);
        b.D(parcel, ae);
    }
}
