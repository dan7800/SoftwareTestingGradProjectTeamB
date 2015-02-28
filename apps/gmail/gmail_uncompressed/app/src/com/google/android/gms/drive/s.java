package com.google.android.gms.drive;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class s implements Parcelable$Creator<StorageStats>
{
    static void a(final StorageStats storageStats, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, storageStats.btV);
        b.a(parcel, 2, storageStats.bGH);
        b.a(parcel, 3, storageStats.bGI);
        b.a(parcel, 4, storageStats.bGJ);
        b.a(parcel, 5, storageStats.bGK);
        b.d(parcel, 6, storageStats.bGL);
        b.D(parcel, ae);
    }
}
