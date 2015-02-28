package com.google.android.gms.drive.metadata;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class h implements Parcelable$Creator<CustomPropertyKey>
{
    static void a(final CustomPropertyKey customPropertyKey, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, customPropertyKey.btV);
        b.a(parcel, 2, customPropertyKey.bHZ, false);
        b.d(parcel, 3, customPropertyKey.dD);
        b.D(parcel, ae);
    }
}
