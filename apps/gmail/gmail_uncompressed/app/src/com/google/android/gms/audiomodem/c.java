package com.google.android.gms.audiomodem;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<DtmfEncoding>
{
    static void a(final DtmfEncoding dtmfEncoding, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, dtmfEncoding.Jt());
        b.d(parcel, 2, dtmfEncoding.Jv());
        b.a(parcel, 3, dtmfEncoding.Jw());
        b.a(parcel, 4, dtmfEncoding.JA());
        b.d(parcel, 5, dtmfEncoding.JF());
        b.d(parcel, 6, dtmfEncoding.JG());
        b.d(parcel, 7, dtmfEncoding.JH());
        b.D(parcel, ae);
    }
}
