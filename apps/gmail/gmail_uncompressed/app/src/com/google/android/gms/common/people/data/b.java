package com.google.android.gms.common.people.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class b implements Parcelable$Creator<Audience>
{
    static void a(final Audience audience, final Parcel parcel) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 1, audience.Ln(), false);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1000, audience.Jt());
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 2, audience.Lo());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, audience.Lp());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, audience.isReadOnly());
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
