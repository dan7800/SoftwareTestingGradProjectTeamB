package com.google.android.gms.wearable.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class i implements Parcelable$Creator<PackageStorageInfo>
{
    static void a(final PackageStorageInfo packageStorageInfo, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, packageStorageInfo.versionCode);
        b.a(parcel, 2, packageStorageInfo.packageName, false);
        b.a(parcel, 3, packageStorageInfo.label, false);
        b.a(parcel, 4, packageStorageInfo.cmU);
        b.D(parcel, ae);
    }
}
