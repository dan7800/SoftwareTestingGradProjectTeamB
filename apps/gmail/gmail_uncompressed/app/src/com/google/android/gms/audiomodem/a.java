package com.google.android.gms.audiomodem;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<DecodedToken>
{
    static void a(final DecodedToken decodedToken, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, decodedToken.Jt());
        b.a(parcel, 2, decodedToken.Ju());
        b.d(parcel, 3, decodedToken.getRank());
        b.D(parcel, ae);
    }
}
