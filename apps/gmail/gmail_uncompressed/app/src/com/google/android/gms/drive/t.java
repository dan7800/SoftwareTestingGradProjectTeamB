package com.google.android.gms.drive;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class t implements Parcelable$Creator<UserMetadata>
{
    static void a(final UserMetadata userMetadata, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, userMetadata.btV);
        b.a(parcel, 2, userMetadata.bGM, false);
        b.a(parcel, 3, userMetadata.bFK, false);
        b.a(parcel, 4, userMetadata.bGN, false);
        b.a(parcel, 5, userMetadata.bGO);
        b.a(parcel, 6, userMetadata.bGP, false);
        b.D(parcel, ae);
    }
}
