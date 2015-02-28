package com.google.android.gms.auth.firstparty.proximity.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<PermitAccess>
{
    static void a(final PermitAccess permitAccess, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, permitAccess.bxf);
        b.a(parcel, 2, permitAccess.bzz, false);
        b.a(parcel, 3, permitAccess.bzB, false);
        b.a(parcel, 4, permitAccess.Rb);
        b.D(parcel, ae);
    }
}
