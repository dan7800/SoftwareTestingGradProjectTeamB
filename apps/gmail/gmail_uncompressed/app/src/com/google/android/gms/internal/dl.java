package com.google.android.gms.internal;

import android.os.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class dl implements Parcelable$Creator<su$c>
{
    static void a(final su$c su$c, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, su$c.btV);
        b.a(parcel, 1, (Parcelable)su$c.buu, n, false);
        b.a(parcel, 2, su$c.bZM, n);
        b.a(parcel, 3, su$c.bZN);
        b.a(parcel, 4, su$c.bZO);
        b.a(parcel, 5, su$c.bZP);
        b.D(parcel, ae);
    }
}
