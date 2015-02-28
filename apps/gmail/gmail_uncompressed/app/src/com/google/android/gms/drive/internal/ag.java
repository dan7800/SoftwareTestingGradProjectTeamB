package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class ag implements Parcelable$Creator<GetDriveIdFromUniqueIdentifierRequest>
{
    static void a(final GetDriveIdFromUniqueIdentifierRequest getDriveIdFromUniqueIdentifierRequest, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, getDriveIdFromUniqueIdentifierRequest.btV);
        b.a(parcel, 2, getDriveIdFromUniqueIdentifierRequest.bHq, false);
        b.a(parcel, 3, getDriveIdFromUniqueIdentifierRequest.bHr);
        b.D(parcel, ae);
    }
}
