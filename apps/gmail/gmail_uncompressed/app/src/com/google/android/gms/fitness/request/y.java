package com.google.android.gms.fitness.request;

import android.os.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class y implements Parcelable$Creator<ListSubscriptionsRequest>
{
    static void a(final ListSubscriptionsRequest listSubscriptionsRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)listSubscriptionsRequest.MF(), n, false);
        b.d(parcel, 1000, listSubscriptionsRequest.Jt());
        b.D(parcel, ae);
    }
}
