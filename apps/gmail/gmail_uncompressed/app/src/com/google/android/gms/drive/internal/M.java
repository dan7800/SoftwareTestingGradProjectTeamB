package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.drive.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class m implements Parcelable$Creator<LoadRealtimeRequest>
{
    static void a(final LoadRealtimeRequest loadRealtimeRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, loadRealtimeRequest.btV);
        b.a(parcel, 2, (Parcelable)loadRealtimeRequest.bGk, n, false);
        b.a(parcel, 3, loadRealtimeRequest.bHt);
        b.D(parcel, ae);
    }
}
