package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class d implements Parcelable$Creator<ac>
{
    static void a(final ac ac, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, ac.Nv());
        b.d(parcel, 1000, ac.Jt());
        b.D(parcel, ae);
    }
}
