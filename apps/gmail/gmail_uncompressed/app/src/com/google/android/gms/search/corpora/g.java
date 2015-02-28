package com.google.android.gms.search.corpora;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class g implements Parcelable$Creator<RequestIndexingCall$b>
{
    static void a(final RequestIndexingCall$b requestIndexingCall$b, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, requestIndexingCall$b.btV);
        b.a(parcel, 1, requestIndexingCall$b.packageName, false);
        b.a(parcel, 2, requestIndexingCall$b.btW, false);
        b.a(parcel, 3, requestIndexingCall$b.ckj);
        b.D(parcel, ae);
    }
}
