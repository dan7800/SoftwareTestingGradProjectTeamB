package com.google.android.gms.drive.query.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class j implements Parcelable$Creator<MatchAllFilter>
{
    static void a(final MatchAllFilter matchAllFilter, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, matchAllFilter.btV);
        b.D(parcel, ae);
    }
}
