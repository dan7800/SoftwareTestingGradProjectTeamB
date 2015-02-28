package com.google.android.gms.drive.query.internal;

import android.os.*;
import com.google.android.gms.drive.metadata.internal.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<ComparisonFilter>
{
    static void a(final ComparisonFilter comparisonFilter, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, comparisonFilter.btV);
        b.a(parcel, 1, (Parcelable)comparisonFilter.bIr, n, false);
        b.a(parcel, 2, (Parcelable)comparisonFilter.bIs, n, false);
        b.D(parcel, ae);
    }
}
