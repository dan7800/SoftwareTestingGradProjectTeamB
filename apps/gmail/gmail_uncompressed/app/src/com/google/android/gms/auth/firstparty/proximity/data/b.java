package com.google.android.gms.auth.firstparty.proximity.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<AuthorizationRequest>
{
    static void a(final AuthorizationRequest authorizationRequest, final Parcel parcel) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, authorizationRequest.bxf);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, authorizationRequest.bzx, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, authorizationRequest.bzy, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, authorizationRequest.Rb);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
