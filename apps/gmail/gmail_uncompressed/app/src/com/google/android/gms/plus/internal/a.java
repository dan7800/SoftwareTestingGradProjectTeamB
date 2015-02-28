package com.google.android.gms.plus.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<PlusCommonExtras>
{
    static void a(final PlusCommonExtras plusCommonExtras, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, plusCommonExtras.Ve(), false);
        b.d(parcel, 1000, plusCommonExtras.Jt());
        b.a(parcel, 2, plusCommonExtras.Vf(), false);
        b.D(parcel, ae);
    }
}
