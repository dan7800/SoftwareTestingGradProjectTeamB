package com.google.android.gms.drive.realtime.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<BeginCompoundOperationRequest>
{
    static void a(final BeginCompoundOperationRequest beginCompoundOperationRequest, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, beginCompoundOperationRequest.btV);
        b.a(parcel, 2, beginCompoundOperationRequest.bIP);
        b.a(parcel, 3, beginCompoundOperationRequest.mName, false);
        b.a(parcel, 4, beginCompoundOperationRequest.bIQ);
        b.D(parcel, ae);
    }
}
