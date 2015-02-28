package com.google.android.gms.pseudonymous;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<PseudonymousIdToken>
{
    static void a(final PseudonymousIdToken pseudonymousIdToken, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, pseudonymousIdToken.btV);
        b.a(parcel, 2, pseudonymousIdToken.getValue(), false);
        b.D(parcel, ae);
    }
}
