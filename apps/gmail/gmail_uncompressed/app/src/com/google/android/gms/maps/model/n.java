package com.google.android.gms.maps.model;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class n implements Parcelable$Creator<StreetViewPanoramaLink>
{
    static void a(final StreetViewPanoramaLink streetViewPanoramaLink, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, streetViewPanoramaLink.Jt());
        b.a(parcel, 2, streetViewPanoramaLink.cfO, false);
        b.a(parcel, 3, streetViewPanoramaLink.cfi);
        b.D(parcel, ae);
    }
}
