package com.google.android.gms.drive.realtime.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<EndCompoundOperationRequest>
{
    static void a(final EndCompoundOperationRequest endCompoundOperationRequest, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, endCompoundOperationRequest.btV);
        b.D(parcel, ae);
    }
}
