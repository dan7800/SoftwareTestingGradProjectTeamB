package com.google.android.gms.wallet;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<CountrySpecification>
{
    static void a(final CountrySpecification countrySpecification, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, countrySpecification.Jt());
        b.a(parcel, 2, countrySpecification.bRa, false);
        b.D(parcel, ae);
    }
}
