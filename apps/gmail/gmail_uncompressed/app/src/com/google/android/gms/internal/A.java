package com.google.android.gms.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<ac>
{
    static void a(final ac ac, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, ac.versionCode);
        b.a(parcel, 2, ac.bRn);
        b.a(parcel, 3, ac.bRo);
        b.D(parcel, ae);
    }
}
