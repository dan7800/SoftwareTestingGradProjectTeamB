package com.google.android.gms.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class bb implements Parcelable$Creator<og>
{
    static void a(final og og, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, og.Jt());
        b.a(parcel, 2, og.FP(), false);
        b.a(parcel, 3, og.RL());
        b.a(parcel, 4, og.RM());
        b.a(parcel, 5, og.RN());
        b.a(parcel, 6, og.RO());
        b.a(parcel, 7, og.RP());
        b.D(parcel, ae);
    }
}
