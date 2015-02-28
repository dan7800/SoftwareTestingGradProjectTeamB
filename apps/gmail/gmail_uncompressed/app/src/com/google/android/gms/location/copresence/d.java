package com.google.android.gms.location.copresence;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<AccessLock>
{
    static void a(final AccessLock accessLock, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, accessLock.Jt());
        b.a(parcel, 2, accessLock.SR(), false);
        b.D(parcel, ae);
    }
}
