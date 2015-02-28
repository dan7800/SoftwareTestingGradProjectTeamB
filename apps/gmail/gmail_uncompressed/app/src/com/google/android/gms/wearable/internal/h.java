package com.google.android.gms.wearable.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class h implements Parcelable$Creator<ak>
{
    static void a(final ak ak, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, ak.btV);
        b.a(parcel, 2, ak.getId(), false);
        b.a(parcel, 3, ak.getDisplayName(), false);
        b.D(parcel, ae);
    }
}
