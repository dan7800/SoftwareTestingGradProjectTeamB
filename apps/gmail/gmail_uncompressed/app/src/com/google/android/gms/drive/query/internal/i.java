package com.google.android.gms.drive.query.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class i implements Parcelable$Creator<LogicalFilter>
{
    static void a(final LogicalFilter logicalFilter, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, logicalFilter.btV);
        b.a(parcel, 1, (Parcelable)logicalFilter.bIr, n, false);
        b.b(parcel, 2, logicalFilter.bIE, false);
        b.D(parcel, ae);
    }
}
