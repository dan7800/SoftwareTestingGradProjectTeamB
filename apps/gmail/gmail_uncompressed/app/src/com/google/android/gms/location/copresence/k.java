package com.google.android.gms.location.copresence;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class k implements Parcelable$Creator<MessageFilter$a>
{
    static void a(final MessageFilter$a messageFilter$a, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, messageFilter$a.Jt());
        b.a(parcel, 2, messageFilter$a.bTo, false);
        b.a(parcel, 3, messageFilter$a.type, false);
        b.a(parcel, 4, (Parcelable)messageFilter$a.caQ, n, false);
        b.a(parcel, 5, messageFilter$a.caR);
        b.a(parcel, 6, (Parcelable)messageFilter$a.caS, n, false);
        b.D(parcel, ae);
    }
}
