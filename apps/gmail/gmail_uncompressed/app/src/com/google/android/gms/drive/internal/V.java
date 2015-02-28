package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.drive.metadata.internal.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class v implements Parcelable$Creator<OnMetadataResponse>
{
    static void a(final OnMetadataResponse onMetadataResponse, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, onMetadataResponse.btV);
        b.a(parcel, 2, (Parcelable)onMetadataResponse.bHk, n, false);
        b.D(parcel, ae);
    }
}
