package com.google.android.gms.auth;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class i implements Parcelable$Creator<RecoveryWriteRequest>
{
    static void a(final RecoveryWriteRequest recoveryWriteRequest, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, recoveryWriteRequest.btV);
        b.a(parcel, 2, recoveryWriteRequest.mAccount, false);
        b.a(parcel, 3, recoveryWriteRequest.bxw, false);
        b.a(parcel, 4, recoveryWriteRequest.bxx, false);
        b.a(parcel, 5, recoveryWriteRequest.bxy, false);
        b.a(parcel, 6, recoveryWriteRequest.bxC);
        b.D(parcel, ae);
    }
}
