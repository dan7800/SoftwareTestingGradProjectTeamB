package com.google.android.gms.identity.accounts.api;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<AccountData>
{
    static void a(final AccountData accountData, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, accountData.FP(), false);
        b.d(parcel, 1000, accountData.Jt());
        b.a(parcel, 2, accountData.Iu(), false);
        b.D(parcel, ae);
    }
}
