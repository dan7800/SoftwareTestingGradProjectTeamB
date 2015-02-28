package com.google.android.gms.wearable;

import android.os.*;
import android.net.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<Asset>
{
    static void a(final Asset asset, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, asset.btV);
        b.a(parcel, 2, asset.getData());
        b.a(parcel, 3, asset.VK(), false);
        b.a(parcel, 4, (Parcelable)asset.cmN, n, false);
        b.a(parcel, 5, (Parcelable)asset.uri, n, false);
        b.D(parcel, ae);
    }
}
