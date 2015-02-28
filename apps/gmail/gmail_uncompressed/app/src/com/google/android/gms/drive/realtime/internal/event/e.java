package com.google.android.gms.drive.realtime.internal.event;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class e implements Parcelable$Creator<TextDeletedDetails>
{
    static void a(final TextDeletedDetails textDeletedDetails, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, textDeletedDetails.btV);
        b.d(parcel, 2, textDeletedDetails.y);
        b.d(parcel, 3, textDeletedDetails.bJt);
        b.D(parcel, ae);
    }
}
