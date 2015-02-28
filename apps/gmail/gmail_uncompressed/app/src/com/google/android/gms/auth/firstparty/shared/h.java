package com.google.android.gms.auth.firstparty.shared;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class h implements Parcelable$Creator<PACLConfig>
{
    static void a(final PACLConfig paclConfig, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, paclConfig.version);
        b.a(parcel, 2, paclConfig.bAg, false);
        b.a(parcel, 3, paclConfig.bAh, false);
        b.D(parcel, ae);
    }
}
