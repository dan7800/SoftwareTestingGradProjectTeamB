package com.google.android.gms.appdatasearch;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class p implements Parcelable$Creator<RegisteredPackageInfo>
{
    static void a(final RegisteredPackageInfo registeredPackageInfo, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, registeredPackageInfo.packageName, false);
        b.d(parcel, 1000, registeredPackageInfo.btV);
        b.a(parcel, 2, registeredPackageInfo.bvX);
        b.a(parcel, 3, registeredPackageInfo.bvY);
        b.a(parcel, 4, registeredPackageInfo.bvZ);
        b.D(parcel, ae);
    }
}
