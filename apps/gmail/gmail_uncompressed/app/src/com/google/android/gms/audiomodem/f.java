package com.google.android.gms.audiomodem;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class f implements Parcelable$Creator<TokenBroadcaster$Params>
{
    static void a(final TokenBroadcaster$Params tokenBroadcaster$Params, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, tokenBroadcaster$Params.Jt());
        b.a(parcel, 2, tokenBroadcaster$Params.Ju());
        b.d(parcel, 3, tokenBroadcaster$Params.getVolume());
        b.a(parcel, 4, tokenBroadcaster$Params.JK(), n);
        b.D(parcel, ae);
    }
}
