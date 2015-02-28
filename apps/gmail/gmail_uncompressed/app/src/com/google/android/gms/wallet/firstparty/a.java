package com.google.android.gms.wallet.firstparty;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<GetInstrumentsRequest>
{
    static void a(final GetInstrumentsRequest getInstrumentsRequest, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, getInstrumentsRequest.Jt());
        b.a(parcel, 2, getInstrumentsRequest.clY);
        b.D(parcel, ae);
    }
}
