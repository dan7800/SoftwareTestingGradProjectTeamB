package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.common.data.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class u implements Parcelable$Creator<OnListParentsResponse>
{
    static void a(final OnListParentsResponse onListParentsResponse, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, onListParentsResponse.btV);
        b.a(parcel, 2, (Parcelable)onListParentsResponse.bHD, n, false);
        b.D(parcel, ae);
    }
}
