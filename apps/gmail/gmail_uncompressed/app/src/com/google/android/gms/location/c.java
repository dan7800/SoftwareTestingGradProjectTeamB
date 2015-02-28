package com.google.android.gms.location;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<DetectedActivity>
{
    static void a(final DetectedActivity detectedActivity, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, detectedActivity.cap);
        b.d(parcel, 1000, detectedActivity.Jt());
        b.d(parcel, 2, detectedActivity.caq);
        b.D(parcel, ae);
    }
}
