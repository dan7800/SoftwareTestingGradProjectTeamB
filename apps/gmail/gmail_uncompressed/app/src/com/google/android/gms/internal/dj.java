package com.google.android.gms.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class dj implements Parcelable$Creator<su$a>
{
    static void a(final su$a su$a, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, su$a.btV);
        b.a(parcel, 1, su$a.packageName, false);
        b.a(parcel, 2, su$a.bZK);
        b.a(parcel, 3, su$a.bvY);
        b.a(parcel, 4, su$a.bZL);
        b.D(parcel, ae);
    }
}
