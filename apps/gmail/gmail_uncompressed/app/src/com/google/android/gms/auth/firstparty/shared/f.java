package com.google.android.gms.auth.firstparty.shared;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class f implements Parcelable$Creator<FACLData>
{
    static void a(final FACLData faclData, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, faclData.version);
        b.a(parcel, 2, (Parcelable)faclData.bAa, n, false);
        b.a(parcel, 3, faclData.bAb, false);
        b.a(parcel, 4, faclData.bAc);
        b.a(parcel, 5, faclData.bAd, false);
        b.D(parcel, ae);
    }
}
