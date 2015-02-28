package com.google.android.gms.location.reporting;

import android.os.*;
import android.accounts.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<GmmSettings>
{
    static void a(final GmmSettings gmmSettings, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, gmmSettings.Jt());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, gmmSettings.TG());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable)gmmSettings.mr(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, gmmSettings.TH());
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
