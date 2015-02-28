package com.google.android.gms.drive.realtime.internal.event;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<ReferenceShiftedDetails>
{
    static void a(final ReferenceShiftedDetails referenceShiftedDetails, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, referenceShiftedDetails.btV);
        b.a(parcel, 2, referenceShiftedDetails.bJp, false);
        b.a(parcel, 3, referenceShiftedDetails.bJq, false);
        b.d(parcel, 4, referenceShiftedDetails.bJr);
        b.d(parcel, 5, referenceShiftedDetails.bJs);
        b.D(parcel, ae);
    }
}
