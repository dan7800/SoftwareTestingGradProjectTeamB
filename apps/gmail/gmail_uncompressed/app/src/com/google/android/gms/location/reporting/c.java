package com.google.android.gms.location.reporting;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<InactiveReason>
{
    static void a(final InactiveReason inactiveReason, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, inactiveReason.Jt());
        b.d(parcel, 2, inactiveReason.TI());
        b.a(parcel, 3, inactiveReason.getName(), false);
        b.D(parcel, ae);
    }
}
