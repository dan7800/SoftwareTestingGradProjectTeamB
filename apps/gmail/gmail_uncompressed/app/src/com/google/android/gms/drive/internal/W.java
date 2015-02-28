package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class w implements Parcelable$Creator<OnLoadRealtimeResponse>
{
    static void a(final OnLoadRealtimeResponse onLoadRealtimeResponse, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, onLoadRealtimeResponse.btV);
        b.a(parcel, 2, onLoadRealtimeResponse.bHE);
        b.D(parcel, ae);
    }
}
