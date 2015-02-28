package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.drive.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class r implements Parcelable$Creator<OnDrivePreferencesResponse>
{
    static void a(final OnDrivePreferencesResponse onDrivePreferencesResponse, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, onDrivePreferencesResponse.btV);
        b.a(parcel, 2, (Parcelable)onDrivePreferencesResponse.bHy, n, false);
        b.D(parcel, ae);
    }
}
