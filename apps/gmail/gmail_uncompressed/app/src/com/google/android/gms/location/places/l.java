package com.google.android.gms.location.places;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class l implements Parcelable$Creator<UserDataType>
{
    static void a(final UserDataType userDataType, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, userDataType.bzB, false);
        b.d(parcel, 1000, userDataType.btV);
        b.d(parcel, 2, userDataType.cem);
        b.D(parcel, ae);
    }
}
