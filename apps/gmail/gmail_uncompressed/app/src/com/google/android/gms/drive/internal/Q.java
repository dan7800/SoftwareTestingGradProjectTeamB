package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.drive.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class q implements Parcelable$Creator<OnDriveIdResponse>
{
    static void a(final OnDriveIdResponse onDriveIdResponse, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, onDriveIdResponse.btV);
        b.a(parcel, 2, (Parcelable)onDriveIdResponse.bHd, n, false);
        b.D(parcel, ae);
    }
}
