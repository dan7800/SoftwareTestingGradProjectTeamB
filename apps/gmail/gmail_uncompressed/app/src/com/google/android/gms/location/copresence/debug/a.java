package com.google.android.gms.location.copresence.debug;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class a implements Parcelable$Creator<CopresenceDebugPokeRequest>
{
    static void a(final CopresenceDebugPokeRequest copresenceDebugPokeRequest, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, copresenceDebugPokeRequest.Tn());
        b.d(parcel, 1000, copresenceDebugPokeRequest.Jt());
        b.a(parcel, 4, copresenceDebugPokeRequest.To());
        b.a(parcel, 5, copresenceDebugPokeRequest.Rp());
        b.D(parcel, ae);
    }
}
