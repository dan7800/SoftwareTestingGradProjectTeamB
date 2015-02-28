package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.drive.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class l implements Parcelable$Creator<ListParentsRequest>
{
    static void a(final ListParentsRequest listParentsRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, listParentsRequest.btV);
        b.a(parcel, 2, (Parcelable)listParentsRequest.bHs, n, false);
        b.D(parcel, ae);
    }
}
