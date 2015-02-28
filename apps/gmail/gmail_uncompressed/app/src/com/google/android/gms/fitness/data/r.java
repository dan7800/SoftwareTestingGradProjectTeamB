package com.google.android.gms.fitness.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class r implements Parcelable$Creator<p>
{
    static void a(final p p3, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)p3.Ms(), n, false);
        b.d(parcel, 1000, p3.btV);
        b.a(parcel, 2, (Parcelable)p3.Nb(), n, false);
        b.D(parcel, ae);
    }
}
