package com.google.android.gms.search.global;

import android.os.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class l implements Parcelable$Creator<SetSignedInAccountCall$Response>
{
    static void a(final SetSignedInAccountCall$Response setSignedInAccountCall$Response, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1000, setSignedInAccountCall$Response.btV);
        b.a(parcel, 1, (Parcelable)setSignedInAccountCall$Response.buu, n, false);
        b.D(parcel, ae);
    }
}
