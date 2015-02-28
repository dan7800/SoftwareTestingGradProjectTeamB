package com.google.android.gms.audiomodem;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class g implements Parcelable$Creator<TokenReceiver$Params>
{
    static void a(final TokenReceiver$Params tokenReceiver$Params, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, tokenReceiver$Params.Jt());
        b.a(parcel, 2, tokenReceiver$Params.JK(), n);
        b.D(parcel, ae);
    }
}
