package com.google.android.gms.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class e implements Parcelable$Creator<bo>
{
    static void a(final bo bo, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, bo.versionCode);
        b.d(parcel, 2, bo.bRD);
        b.d(parcel, 3, bo.backgroundColor);
        b.d(parcel, 4, bo.bRE);
        b.d(parcel, 5, bo.bRF);
        b.d(parcel, 6, bo.bRG);
        b.d(parcel, 7, bo.bRH);
        b.d(parcel, 8, bo.bRI);
        b.d(parcel, 9, bo.bRJ);
        b.a(parcel, 10, bo.bRK, false);
        b.d(parcel, 11, bo.bRL);
        b.a(parcel, 12, bo.bRM, false);
        b.d(parcel, 13, bo.bRN);
        b.d(parcel, 14, bo.bRO);
        b.a(parcel, 15, bo.Tt, false);
        b.D(parcel, ae);
    }
}
