package com.google.android.gms.fitness.request;

import android.os.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class h implements Parcelable$Creator<UnsubscribeRequest>
{
    static void a(final UnsubscribeRequest unsubscribeRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)unsubscribeRequest.MF(), n, false);
        b.d(parcel, 1000, unsubscribeRequest.Jt());
        b.a(parcel, 2, (Parcelable)unsubscribeRequest.MA(), n, false);
        b.D(parcel, ae);
    }
}
