package com.google.android.gms.fitness.request;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class g implements Parcelable$Creator<af>
{
    static void a(final af af, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, af.Jt());
        b.a(parcel, 2, af.getDeviceAddress(), false);
        b.D(parcel, ae);
    }
}
