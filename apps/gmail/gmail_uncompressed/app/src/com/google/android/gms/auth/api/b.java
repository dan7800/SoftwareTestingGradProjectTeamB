package com.google.android.gms.auth.api;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class b implements Parcelable$Creator<GoogleAuthApiResponse>
{
    static void a(final GoogleAuthApiResponse googleAuthApiResponse, final Parcel parcel) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, googleAuthApiResponse.responseCode);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1000, googleAuthApiResponse.versionCode);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, googleAuthApiResponse.bxK);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, googleAuthApiResponse.bxL);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
