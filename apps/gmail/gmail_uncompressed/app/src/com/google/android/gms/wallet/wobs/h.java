package com.google.android.gms.wallet.wobs;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class h implements Parcelable$Creator<TimeInterval>
{
    static void a(final TimeInterval timeInterval, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, timeInterval.Jt());
        b.a(parcel, 2, timeInterval.cmG);
        b.a(parcel, 3, timeInterval.cmH);
        b.D(parcel, ae);
    }
}
