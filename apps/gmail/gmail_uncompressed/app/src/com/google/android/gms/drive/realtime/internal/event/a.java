package com.google.android.gms.drive.realtime.internal.event;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<ObjectChangedDetails>
{
    static void a(final ObjectChangedDetails objectChangedDetails, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, objectChangedDetails.btV);
        b.d(parcel, 2, objectChangedDetails.bIZ);
        b.d(parcel, 3, objectChangedDetails.bJa);
        b.D(parcel, ae);
    }
}
