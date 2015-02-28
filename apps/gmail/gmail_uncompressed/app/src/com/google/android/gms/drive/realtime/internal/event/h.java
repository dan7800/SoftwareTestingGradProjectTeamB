package com.google.android.gms.drive.realtime.internal.event;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class h implements Parcelable$Creator<ValuesAddedDetails>
{
    static void a(final ValuesAddedDetails valuesAddedDetails, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, valuesAddedDetails.btV);
        b.d(parcel, 2, valuesAddedDetails.y);
        b.d(parcel, 3, valuesAddedDetails.bIZ);
        b.d(parcel, 4, valuesAddedDetails.bJa);
        b.a(parcel, 5, valuesAddedDetails.bJv, false);
        b.d(parcel, 6, valuesAddedDetails.bJw);
        b.D(parcel, ae);
    }
}
