package com.google.android.gms.auth;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class f implements Parcelable$Creator<Country>
{
    static void a(final Country country, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, country.btV);
        b.a(parcel, 2, country.mName, false);
        b.a(parcel, 3, country.PP, false);
        b.D(parcel, ae);
    }
}
