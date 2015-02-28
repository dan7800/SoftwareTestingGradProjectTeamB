package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class r implements Parcelable$Creator<TileOverlayOptions>
{
    static void a(final TileOverlayOptions tileOverlayOptions, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, tileOverlayOptions.Jt());
        b.a(parcel, 2, tileOverlayOptions.UG());
        b.a(parcel, 3, tileOverlayOptions.isVisible());
        b.a(parcel, 4, tileOverlayOptions.Ur());
        b.a(parcel, 5, tileOverlayOptions.UH());
        b.D(parcel, ae);
    }
}
