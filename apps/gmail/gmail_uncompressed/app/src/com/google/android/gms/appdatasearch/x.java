package com.google.android.gms.appdatasearch;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class x implements Parcelable$Creator<UsageInfo>
{
    static void a(final UsageInfo usageInfo, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)usageInfo.bwB, n, false);
        b.d(parcel, 1000, usageInfo.btV);
        b.a(parcel, 2, usageInfo.bwC);
        b.d(parcel, 3, usageInfo.bwD);
        b.a(parcel, 4, usageInfo.Tt, false);
        b.a(parcel, 5, (Parcelable)usageInfo.bwE, n, false);
        b.D(parcel, ae);
    }
}
