package com.google.android.gms.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class di implements Parcelable$Creator<st>
{
    static void a(final st st, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, st.btV);
        b.a(parcel, 2, st.SI());
        b.a(parcel, 3, st.SJ());
        b.a(parcel, 4, st.SK());
        b.D(parcel, ae);
    }
}
