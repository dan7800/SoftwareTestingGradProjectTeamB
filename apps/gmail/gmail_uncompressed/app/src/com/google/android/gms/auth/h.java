package com.google.android.gms.auth;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class h implements Parcelable$Creator<RecoveryReadResponse>
{
    static void a(final RecoveryReadResponse recoveryReadResponse, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, recoveryReadResponse.btV);
        b.a(parcel, 2, recoveryReadResponse.bxw, false);
        b.a(parcel, 3, recoveryReadResponse.bxx, false);
        b.a(parcel, 4, recoveryReadResponse.bxy, false);
        b.b(parcel, 5, recoveryReadResponse.bxz, false);
        b.a(parcel, 6, recoveryReadResponse.bxA, false);
        b.a(parcel, 7, recoveryReadResponse.bmI, false);
        b.a(parcel, 8, recoveryReadResponse.bxB, false);
        b.D(parcel, ae);
    }
}
