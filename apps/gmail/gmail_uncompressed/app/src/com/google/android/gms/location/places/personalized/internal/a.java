package com.google.android.gms.location.places.personalized.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<TestDataImpl>
{
    static void a(final TestDataImpl testDataImpl, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, testDataImpl.TF(), false);
        b.d(parcel, 1000, testDataImpl.btV);
        b.D(parcel, ae);
    }
}
