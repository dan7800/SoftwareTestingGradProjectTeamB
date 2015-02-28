package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class l implements Parcelable$Creator<ea>
{
    static void a(final ea ea, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, ea.versionCode);
        b.a(parcel, 2, ea.QI());
        b.a(parcel, 3, ea.QJ());
        b.a(parcel, 4, ea.QK());
        b.a(parcel, 5, ea.QL());
        b.D(parcel, ae);
    }
}
