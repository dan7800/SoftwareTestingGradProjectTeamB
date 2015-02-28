package com.google.android.gms.drive.realtime.internal.event;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class j implements Parcelable$Creator<ValuesSetDetails>
{
    static void a(final ValuesSetDetails valuesSetDetails, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, valuesSetDetails.btV);
        b.d(parcel, 2, valuesSetDetails.y);
        b.d(parcel, 3, valuesSetDetails.bIZ);
        b.d(parcel, 4, valuesSetDetails.bJa);
        b.D(parcel, ae);
    }
}
