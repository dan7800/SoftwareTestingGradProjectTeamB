package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class g implements Parcelable$Creator<GroundOverlayOptions>
{
    static void a(final GroundOverlayOptions groundOverlayOptions, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, groundOverlayOptions.Jt());
        b.a(parcel, 2, groundOverlayOptions.Us());
        b.a(parcel, 3, (Parcelable)groundOverlayOptions.Ut(), n, false);
        b.a(parcel, 4, groundOverlayOptions.getWidth());
        b.a(parcel, 5, groundOverlayOptions.getHeight());
        b.a(parcel, 6, (Parcelable)groundOverlayOptions.Uu(), n, false);
        b.a(parcel, 7, groundOverlayOptions.getBearing());
        b.a(parcel, 8, groundOverlayOptions.Ur());
        b.a(parcel, 9, groundOverlayOptions.isVisible());
        b.a(parcel, 10, groundOverlayOptions.Uv());
        b.a(parcel, 11, groundOverlayOptions.Uw());
        b.a(parcel, 12, groundOverlayOptions.Ux());
        b.D(parcel, ae);
    }
}
