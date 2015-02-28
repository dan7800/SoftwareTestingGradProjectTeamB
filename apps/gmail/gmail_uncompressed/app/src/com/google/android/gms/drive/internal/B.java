package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.drive.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<GetMetadataRequest>
{
    static void a(final GetMetadataRequest getMetadataRequest, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, getMetadataRequest.btV);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable)getMetadataRequest.bHd, n, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
