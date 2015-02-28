package com.google.android.gms.wearable;

import android.net.*;
import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class e implements Parcelable$Creator<PutDataRequest>
{
    static void a(final PutDataRequest putDataRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, putDataRequest.btV);
        b.a(parcel, 2, (Parcelable)putDataRequest.getUri(), n, false);
        b.a(parcel, 4, putDataRequest.VN());
        b.a(parcel, 5, putDataRequest.getData());
        b.D(parcel, ae);
    }
}
