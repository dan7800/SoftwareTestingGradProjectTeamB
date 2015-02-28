package com.google.android.gms.fitness.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class u implements Parcelable$Creator<Value>
{
    static void a(final Value value, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, value.getFormat());
        b.d(parcel, 1000, value.Jt());
        b.a(parcel, 2, value.MX());
        b.a(parcel, 3, value.Na());
        b.D(parcel, ae);
    }
}
