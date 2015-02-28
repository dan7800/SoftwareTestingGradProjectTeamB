package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class z implements Parcelable$Creator<OnSyncMoreResponse>
{
    static void a(final OnSyncMoreResponse onSyncMoreResponse, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, onSyncMoreResponse.btV);
        b.a(parcel, 2, onSyncMoreResponse.bHC);
        b.D(parcel, ae);
    }
}
