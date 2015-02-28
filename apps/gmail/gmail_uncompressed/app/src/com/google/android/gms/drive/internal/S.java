package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.drive.events.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class s implements Parcelable$Creator<OnEventResponse>
{
    static void a(final OnEventResponse onEventResponse, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, onEventResponse.btV);
        b.d(parcel, 2, onEventResponse.bHa);
        b.a(parcel, 3, (Parcelable)onEventResponse.bHz, n, false);
        b.a(parcel, 5, (Parcelable)onEventResponse.bHA, n, false);
        b.D(parcel, ae);
    }
}
