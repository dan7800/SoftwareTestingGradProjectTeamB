package com.google.android.gms.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class h implements Parcelable$Creator<do>
{
    static void a(final do do1, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, do1.versionCode);
        b.a(parcel, 2, do1.bRP, false);
        b.a(parcel, 3, do1.bzq, false);
        b.a(parcel, 4, do1.mimeType, false);
        b.a(parcel, 5, do1.packageName, false);
        b.a(parcel, 6, do1.bRQ, false);
        b.a(parcel, 7, do1.bRR, false);
        b.a(parcel, 8, do1.bRS, false);
        b.D(parcel, ae);
    }
}
