package com.google.android.gms.auth.firstparty.shared;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<AppDescription>
{
    static void a(final AppDescription appDescription, final Parcel parcel) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, appDescription.version);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 2, appDescription.bzO);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, appDescription.bzP, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, appDescription.bzQ, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, appDescription.bzR, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, appDescription.bym);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
