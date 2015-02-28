package com.google.android.gms.drive.realtime.internal.event;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class g implements Parcelable$Creator<ValueChangedDetails>
{
    static void a(final ValueChangedDetails valueChangedDetails, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, valueChangedDetails.btV);
        b.d(parcel, 2, valueChangedDetails.bJu);
        b.D(parcel, ae);
    }
}
