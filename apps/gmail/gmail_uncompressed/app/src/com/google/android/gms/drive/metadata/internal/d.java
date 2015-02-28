package com.google.android.gms.drive.metadata.internal;

import android.os.*;
import com.google.android.gms.drive.metadata.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<CustomProperty>
{
    static void a(final CustomProperty customProperty, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, customProperty.btV);
        b.a(parcel, 2, (Parcelable)customProperty.bIi, n, false);
        b.a(parcel, 3, customProperty.mValue, false);
        b.D(parcel, ae);
    }
}
