package com.google.android.gms.maps;

import android.os.*;
import com.google.android.gms.maps.model.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<StreetViewPanoramaOptions>
{
    static void a(final StreetViewPanoramaOptions streetViewPanoramaOptions, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, streetViewPanoramaOptions.Jt());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable)streetViewPanoramaOptions.Uh(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, streetViewPanoramaOptions.Uk(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, (Parcelable)streetViewPanoramaOptions.Ui(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, streetViewPanoramaOptions.Uj());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, streetViewPanoramaOptions.Ue());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, streetViewPanoramaOptions.TZ());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, streetViewPanoramaOptions.Uf());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, streetViewPanoramaOptions.Ug());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, streetViewPanoramaOptions.TV());
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
