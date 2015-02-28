package com.google.android.gms.maps.model;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class m implements Parcelable$Creator<StreetViewPanoramaCamera>
{
    static void a(final StreetViewPanoramaCamera streetViewPanoramaCamera, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, streetViewPanoramaCamera.Jt());
        b.a(parcel, 2, streetViewPanoramaCamera.cfg);
        b.a(parcel, 3, streetViewPanoramaCamera.cfh);
        b.a(parcel, 4, streetViewPanoramaCamera.cfi);
        b.D(parcel, ae);
    }
}
