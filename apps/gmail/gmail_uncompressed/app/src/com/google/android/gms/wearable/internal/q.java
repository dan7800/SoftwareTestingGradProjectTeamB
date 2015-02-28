package com.google.android.gms.wearable.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class q implements Parcelable$Creator<DataItemAssetParcelable>
{
    static void a(final DataItemAssetParcelable dataItemAssetParcelable, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, dataItemAssetParcelable.btV);
        b.a(parcel, 2, dataItemAssetParcelable.getId(), false);
        b.a(parcel, 3, dataItemAssetParcelable.VM(), false);
        b.D(parcel, ae);
    }
}
