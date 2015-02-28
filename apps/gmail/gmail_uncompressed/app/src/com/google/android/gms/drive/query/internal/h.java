package com.google.android.gms.drive.query.internal;

import android.os.*;
import com.google.android.gms.drive.metadata.internal.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class h implements Parcelable$Creator<InFilter>
{
    static void a(final InFilter inFilter, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, inFilter.btV);
        b.a(parcel, 1, (Parcelable)inFilter.bIs, n, false);
        b.D(parcel, ae);
    }
}
