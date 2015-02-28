package com.google.android.gms.fitness.request;

import android.os.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class f implements Parcelable$Creator<SubscribeRequest>
{
    static void a(final SubscribeRequest subscribeRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)subscribeRequest.Nw(), n, false);
        b.d(parcel, 1000, subscribeRequest.Jt());
        b.a(parcel, 2, subscribeRequest.Nx());
        b.D(parcel, ae);
    }
}
