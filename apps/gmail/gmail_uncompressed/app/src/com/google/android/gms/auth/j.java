package com.google.android.gms.auth;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class j implements Parcelable$Creator<RecoveryWriteResponse>
{
    static void a(final RecoveryWriteResponse recoveryWriteResponse, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, recoveryWriteResponse.btV);
        b.a(parcel, 2, recoveryWriteResponse.bxD, false);
        b.D(parcel, ae);
    }
}
