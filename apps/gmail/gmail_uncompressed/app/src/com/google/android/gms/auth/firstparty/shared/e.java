package com.google.android.gms.auth.firstparty.shared;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class e implements Parcelable$Creator<FACLConfig>
{
    static void a(final FACLConfig faclConfig, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, faclConfig.version);
        b.a(parcel, 2, faclConfig.bzU);
        b.a(parcel, 3, faclConfig.bzV, false);
        b.a(parcel, 4, faclConfig.bzW);
        b.a(parcel, 5, faclConfig.bzX);
        b.a(parcel, 6, faclConfig.bzY);
        b.a(parcel, 7, faclConfig.bzZ);
        b.D(parcel, ae);
    }
}
