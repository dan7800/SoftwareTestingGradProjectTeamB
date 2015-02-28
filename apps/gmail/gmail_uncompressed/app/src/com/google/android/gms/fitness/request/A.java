package com.google.android.gms.fitness.request;

import android.os.*;
import android.app.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<z>
{
    static void a(final z z, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)z.NA(), n, false);
        b.d(parcel, 1000, z.Jt());
        b.D(parcel, ae);
    }
}
