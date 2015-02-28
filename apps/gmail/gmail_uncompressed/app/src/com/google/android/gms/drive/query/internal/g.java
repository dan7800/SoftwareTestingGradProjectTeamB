package com.google.android.gms.drive.query.internal;

import android.os.*;
import com.google.android.gms.drive.metadata.internal.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class g implements Parcelable$Creator<HasFilter>
{
    static void a(final HasFilter hasFilter, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, hasFilter.btV);
        b.a(parcel, 1, (Parcelable)hasFilter.bIs, n, false);
        b.D(parcel, ae);
    }
}
