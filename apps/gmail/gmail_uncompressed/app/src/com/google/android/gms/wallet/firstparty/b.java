package com.google.android.gms.wallet.firstparty;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<GetInstrumentsResponse>
{
    static void a(final GetInstrumentsResponse getInstrumentsResponse, final Parcel parcel) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, getInstrumentsResponse.Jt());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, getInstrumentsResponse.clZ);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, getInstrumentsResponse.cma);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
