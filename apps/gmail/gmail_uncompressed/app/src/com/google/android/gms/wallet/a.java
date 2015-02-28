package com.google.android.gms.wallet;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<Address>
{
    static void a(final Address address, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, address.Jt());
        b.a(parcel, 2, address.name, false);
        b.a(parcel, 3, address.bRb, false);
        b.a(parcel, 4, address.bRc, false);
        b.a(parcel, 5, address.bRd, false);
        b.a(parcel, 6, address.bRa, false);
        b.a(parcel, 7, address.ckJ, false);
        b.a(parcel, 8, address.ckK, false);
        b.a(parcel, 9, address.bRi, false);
        b.a(parcel, 10, address.bya, false);
        b.a(parcel, 11, address.bRk);
        b.a(parcel, 12, address.bRl, false);
        b.D(parcel, ae);
    }
}
