package com.google.android.gms.drive.realtime.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<ParcelableIndexReference>
{
    static void a(final ParcelableIndexReference parcelableIndexReference, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, parcelableIndexReference.btV);
        b.a(parcel, 2, parcelableIndexReference.bIX, false);
        b.d(parcel, 3, parcelableIndexReference.y);
        b.a(parcel, 4, parcelableIndexReference.bIY);
        b.D(parcel, ae);
    }
}
