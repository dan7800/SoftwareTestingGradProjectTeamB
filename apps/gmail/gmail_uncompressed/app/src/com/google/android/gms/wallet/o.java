package com.google.android.gms.wallet;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class o implements Parcelable$Creator<ProxyCard>
{
    static void a(final ProxyCard proxyCard, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, proxyCard.Jt());
        b.a(parcel, 2, proxyCard.clU, false);
        b.a(parcel, 3, proxyCard.clV, false);
        b.d(parcel, 4, proxyCard.clW);
        b.d(parcel, 5, proxyCard.clX);
        b.D(parcel, ae);
    }
}
