package com.google.android.gms.wearable.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class n implements Parcelable$Creator<StorageInfoResponse>
{
    static void a(final StorageInfoResponse storageInfoResponse, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, storageInfoResponse.versionCode);
        b.d(parcel, 2, storageInfoResponse.statusCode);
        b.a(parcel, 3, storageInfoResponse.cmU);
        b.b(parcel, 4, storageInfoResponse.cmV, false);
        b.D(parcel, ae);
    }
}
