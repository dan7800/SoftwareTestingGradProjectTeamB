package com.google.android.gms.audiomodem;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class e implements Parcelable$Creator<Snoop$Params>
{
    static void a(final Snoop$Params snoop$Params, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, snoop$Params.Jt());
        b.a(parcel, 2, snoop$Params.JK(), n);
        b.a(parcel, 3, snoop$Params.JL());
        b.a(parcel, 4, snoop$Params.JM());
        b.a(parcel, 5, snoop$Params.JN());
        b.D(parcel, ae);
    }
}
