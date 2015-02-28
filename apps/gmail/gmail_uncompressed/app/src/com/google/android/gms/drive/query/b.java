package com.google.android.gms.drive.query;

import android.os.*;
import com.google.android.gms.drive.query.internal.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class b implements Parcelable$Creator<SortOrder>
{
    static void a(final SortOrder sortOrder, final Parcel parcel) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1000, sortOrder.btV);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 1, sortOrder.bIp, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, sortOrder.bIq);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
