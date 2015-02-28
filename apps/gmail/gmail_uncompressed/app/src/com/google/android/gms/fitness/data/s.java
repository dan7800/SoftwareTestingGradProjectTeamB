package com.google.android.gms.fitness.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class s implements Parcelable$Creator<Subscription>
{
    static void a(final Subscription subscription, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)subscription.MA(), n, false);
        b.d(parcel, 1000, subscription.Jt());
        b.a(parcel, 2, (Parcelable)subscription.MF(), n, false);
        b.a(parcel, 3, subscription.MV());
        b.d(parcel, 4, subscription.MU());
        b.D(parcel, ae);
    }
}
