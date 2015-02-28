package com.google.android.gms.auth.firstparty.shared;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class i implements Parcelable$Creator<PlusProfileCreationResponse>
{
    static void a(final PlusProfileCreationResponse plusProfileCreationResponse, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, plusProfileCreationResponse.version);
        b.a(parcel, 2, plusProfileCreationResponse.bAi, false);
        b.D(parcel, ae);
    }
}
