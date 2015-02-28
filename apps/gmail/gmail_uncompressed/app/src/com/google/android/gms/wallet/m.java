package com.google.android.gms.wallet;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class m implements Parcelable$Creator<NotifyTransactionStatusRequest>
{
    static void a(final NotifyTransactionStatusRequest notifyTransactionStatusRequest, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, notifyTransactionStatusRequest.btV);
        b.a(parcel, 2, notifyTransactionStatusRequest.ckQ, false);
        b.d(parcel, 3, notifyTransactionStatusRequest.status);
        b.a(parcel, 4, notifyTransactionStatusRequest.clR, false);
        b.D(parcel, ae);
    }
}
