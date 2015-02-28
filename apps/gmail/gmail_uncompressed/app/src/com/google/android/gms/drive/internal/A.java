package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.drive.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<AddEventListenerRequest>
{
    static void a(final AddEventListenerRequest addEventListenerRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, addEventListenerRequest.btV);
        b.a(parcel, 2, (Parcelable)addEventListenerRequest.bGk, n, false);
        b.d(parcel, 3, addEventListenerRequest.bHa);
        b.D(parcel, ae);
    }
}
