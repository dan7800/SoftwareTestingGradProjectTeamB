package com.google.android.gms.drive.query.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class l implements Parcelable$Creator<Operator>
{
    static void a(final Operator operator, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, operator.btV);
        b.a(parcel, 1, operator.aK, false);
        b.D(parcel, ae);
    }
}
