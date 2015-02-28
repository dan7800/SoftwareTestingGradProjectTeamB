package com.google.android.gms.drive.realtime.internal.event;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class i implements Parcelable$Creator<ValuesRemovedDetails>
{
    static void a(final ValuesRemovedDetails valuesRemovedDetails, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, valuesRemovedDetails.btV);
        b.d(parcel, 2, valuesRemovedDetails.y);
        b.d(parcel, 3, valuesRemovedDetails.bIZ);
        b.d(parcel, 4, valuesRemovedDetails.bJa);
        b.a(parcel, 5, valuesRemovedDetails.bJx, false);
        b.d(parcel, 6, valuesRemovedDetails.bJy);
        b.D(parcel, ae);
    }
}
