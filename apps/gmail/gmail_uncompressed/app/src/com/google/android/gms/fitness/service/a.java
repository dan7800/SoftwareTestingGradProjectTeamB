package com.google.android.gms.fitness.service;

import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class a implements Parcelable$Creator<FitnessSensorServiceRequest>
{
    static void a(final FitnessSensorServiceRequest fitnessSensorServiceRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)fitnessSensorServiceRequest.MA(), n, false);
        b.d(parcel, 1000, fitnessSensorServiceRequest.Jt());
        b.a(parcel, 2, fitnessSensorServiceRequest.NF());
        b.a(parcel, 3, fitnessSensorServiceRequest.MV());
        b.a(parcel, 4, fitnessSensorServiceRequest.NN());
        b.D(parcel, ae);
    }
}
