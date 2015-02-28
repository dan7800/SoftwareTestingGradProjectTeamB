package com.google.android.gms.maps.model;

import android.os.*;
import java.util.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class k implements Parcelable$Creator<PolygonOptions>
{
    static void a(final PolygonOptions polygonOptions, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, polygonOptions.Jt());
        b.b(parcel, 2, polygonOptions.UE(), false);
        b.b(parcel, 3, polygonOptions.UD());
        b.a(parcel, 4, polygonOptions.getStrokeWidth());
        b.d(parcel, 5, polygonOptions.Up());
        b.d(parcel, 6, polygonOptions.Uq());
        b.a(parcel, 7, polygonOptions.Ur());
        b.a(parcel, 8, polygonOptions.isVisible());
        b.a(parcel, 9, polygonOptions.UF());
        b.D(parcel, ae);
    }
}
