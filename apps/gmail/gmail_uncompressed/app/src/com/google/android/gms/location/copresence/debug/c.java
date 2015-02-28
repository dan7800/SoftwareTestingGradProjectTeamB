package com.google.android.gms.location.copresence.debug;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<b>
{
    static void a(final b b, final Parcel parcel) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1000, b.Jt());
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
