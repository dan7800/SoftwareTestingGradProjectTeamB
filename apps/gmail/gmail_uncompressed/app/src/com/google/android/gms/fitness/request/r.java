package com.google.android.gms.fitness.request;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class r implements Parcelable$Creator<j>
{
    static void a(final j j, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, j.getName(), false);
        b.d(parcel, 1000, j.Jt());
        b.D(parcel, ae);
    }
}
