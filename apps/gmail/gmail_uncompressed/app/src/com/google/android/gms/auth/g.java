package com.google.android.gms.auth;

import android.os.*;
import android.app.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class g implements Parcelable$Creator<RecoveryDecision>
{
    static void a(final RecoveryDecision recoveryDecision, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, recoveryDecision.btV);
        b.a(parcel, 2, (Parcelable)recoveryDecision.bxr, n, false);
        b.a(parcel, 3, recoveryDecision.bxs);
        b.a(parcel, 4, recoveryDecision.bxt);
        b.a(parcel, 5, recoveryDecision.bxu);
        b.a(parcel, 6, (Parcelable)recoveryDecision.bxv, n, false);
        b.D(parcel, ae);
    }
}
