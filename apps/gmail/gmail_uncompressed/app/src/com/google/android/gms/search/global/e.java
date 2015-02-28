package com.google.android.gms.search.global;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class e implements Parcelable$Creator<GetGlobalSearchSourcesCall$Request>
{
    static void a(final GetGlobalSearchSourcesCall$Request getGlobalSearchSourcesCall$Request, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, getGlobalSearchSourcesCall$Request.btV);
        b.a(parcel, 1, getGlobalSearchSourcesCall$Request.ckn);
        b.D(parcel, ae);
    }
}
