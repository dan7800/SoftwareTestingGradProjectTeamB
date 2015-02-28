package com.google.android.gms.location.copresence;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class g implements Parcelable$Creator<AclResourceId>
{
    static void a(final AclResourceId aclResourceId, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, aclResourceId.Jt());
        b.a(parcel, 2, aclResourceId.SZ(), false);
        b.a(parcel, 3, aclResourceId.getId(), false);
        b.a(parcel, 4, aclResourceId.Ta(), false);
        b.D(parcel, ae);
    }
}
