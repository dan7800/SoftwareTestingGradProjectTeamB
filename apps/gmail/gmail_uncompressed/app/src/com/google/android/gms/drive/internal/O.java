package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.drive.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class o implements Parcelable$Creator<OnContentsResponse>
{
    static void a(final OnContentsResponse onContentsResponse, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, onContentsResponse.btV);
        b.a(parcel, 2, (Parcelable)onContentsResponse.bHu, n, false);
        b.a(parcel, 3, onContentsResponse.bHv);
        b.D(parcel, ae);
    }
}
