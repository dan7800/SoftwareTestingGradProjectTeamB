package com.google.android.gms.wallet;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class h implements Parcelable$Creator<InstrumentInfo>
{
    static void a(final InstrumentInfo instrumentInfo, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, instrumentInfo.Jt());
        b.a(parcel, 2, instrumentInfo.VB(), false);
        b.a(parcel, 3, instrumentInfo.VC(), false);
        b.D(parcel, ae);
    }
}
