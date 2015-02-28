package com.google.android.gms.auth;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<AccountChangeEvent>
{
    static void a(final AccountChangeEvent accountChangeEvent, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, accountChangeEvent.bxf);
        b.a(parcel, 2, accountChangeEvent.bxg);
        b.a(parcel, 3, accountChangeEvent.bxh, false);
        b.d(parcel, 4, accountChangeEvent.bxi);
        b.d(parcel, 5, accountChangeEvent.bxj);
        b.a(parcel, 6, accountChangeEvent.bxk, false);
        b.D(parcel, ae);
    }
}
