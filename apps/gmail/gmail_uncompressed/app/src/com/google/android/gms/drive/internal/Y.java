package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.drive.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class y implements Parcelable$Creator<OnStorageStatsResponse>
{
    static void a(final OnStorageStatsResponse onStorageStatsResponse, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, onStorageStatsResponse.btV);
        b.a(parcel, 2, (Parcelable)onStorageStatsResponse.bHF, n, false);
        b.D(parcel, ae);
    }
}
