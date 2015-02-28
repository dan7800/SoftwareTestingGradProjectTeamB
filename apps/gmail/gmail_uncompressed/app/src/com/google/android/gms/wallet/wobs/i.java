package com.google.android.gms.wallet.wobs;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class i implements Parcelable$Creator<UriData>
{
    static void a(final UriData uriData, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, uriData.Jt());
        b.a(parcel, 2, uriData.cmI, false);
        b.a(parcel, 3, uriData.description, false);
        b.D(parcel, ae);
    }
}
