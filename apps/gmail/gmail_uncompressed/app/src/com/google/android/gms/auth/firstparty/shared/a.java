package com.google.android.gms.auth.firstparty.shared;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<AccountCredentials>
{
    static void a(final AccountCredentials accountCredentials, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, accountCredentials.version);
        b.a(parcel, 2, accountCredentials.bzH);
        b.a(parcel, 3, accountCredentials.bxh, false);
        b.a(parcel, 4, accountCredentials.bzI, false);
        b.a(parcel, 5, accountCredentials.bzJ, false);
        b.a(parcel, 6, accountCredentials.bzK, false);
        b.a(parcel, 7, accountCredentials.bzL, false);
        b.a(parcel, 8, accountCredentials.bzM, false);
        b.D(parcel, ae);
    }
}
