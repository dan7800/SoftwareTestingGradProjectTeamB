package com.google.android.gms.drive.query.internal;

import android.os.*;
import com.google.android.gms.drive.metadata.internal.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<FieldOnlyFilter>
{
    static void a(final FieldOnlyFilter fieldOnlyFilter, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1000, fieldOnlyFilter.btV);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, (Parcelable)fieldOnlyFilter.bIs, n, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
