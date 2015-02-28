package com.google.android.gms.drive;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class p implements Parcelable$Creator<DriveId>
{
    static void a(final DriveId driveId, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, driveId.btV);
        b.a(parcel, 2, driveId.bGx, false);
        b.a(parcel, 3, driveId.bGy);
        b.a(parcel, 4, driveId.bGz);
        b.D(parcel, ae);
    }
}
