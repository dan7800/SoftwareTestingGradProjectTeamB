package com.google.android.gms.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class dh implements Parcelable$Creator<sr>
{
    static void a(final sr sr, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, sr.btV);
        b.a(parcel, 2, sr.SH());
        b.D(parcel, ae);
    }
}
