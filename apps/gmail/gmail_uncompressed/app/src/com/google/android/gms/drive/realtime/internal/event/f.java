package com.google.android.gms.drive.realtime.internal.event;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class f implements Parcelable$Creator<TextInsertedDetails>
{
    static void a(final TextInsertedDetails textInsertedDetails, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, textInsertedDetails.btV);
        b.d(parcel, 2, textInsertedDetails.y);
        b.d(parcel, 3, textInsertedDetails.bJt);
        b.D(parcel, ae);
    }
}
