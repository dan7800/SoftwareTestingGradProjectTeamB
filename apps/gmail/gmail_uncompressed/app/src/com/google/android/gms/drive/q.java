package com.google.android.gms.drive;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class q implements Parcelable$Creator<DrivePreferences>
{
    static void a(final DrivePreferences drivePreferences, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, drivePreferences.btV);
        b.a(parcel, 2, drivePreferences.bGB);
        b.D(parcel, ae);
    }
}
