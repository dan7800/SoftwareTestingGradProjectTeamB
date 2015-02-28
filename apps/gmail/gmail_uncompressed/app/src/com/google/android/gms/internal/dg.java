package com.google.android.gms.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class dg implements Parcelable$Creator<sp>
{
    static void a(final sp sp, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, sp.btV);
        b.a(parcel, 2, sp.SE());
        b.a(parcel, 3, sp.SF(), false);
        b.a(parcel, 4, sp.SG(), false);
        b.D(parcel, ae);
    }
}
