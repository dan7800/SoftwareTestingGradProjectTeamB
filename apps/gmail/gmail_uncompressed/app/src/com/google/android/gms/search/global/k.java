package com.google.android.gms.search.global;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class k implements Parcelable$Creator<SetSignedInAccountCall$Request>
{
    static void a(final SetSignedInAccountCall$Request setSignedInAccountCall$Request, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, setSignedInAccountCall$Request.btV);
        b.a(parcel, 1, setSignedInAccountCall$Request.acw, false);
        b.a(parcel, 2, setSignedInAccountCall$Request.ckr, false);
        b.d(parcel, 3, setSignedInAccountCall$Request.flags);
        b.D(parcel, ae);
    }
}
