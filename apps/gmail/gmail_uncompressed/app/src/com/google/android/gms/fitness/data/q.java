package com.google.android.gms.fitness.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class q implements Parcelable$Creator<Session>
{
    static void a(final Session session, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, session.Mx());
        b.d(parcel, 1000, session.Jt());
        b.a(parcel, 2, session.My());
        b.a(parcel, 3, session.getName(), false);
        b.a(parcel, 4, session.MT(), false);
        b.a(parcel, 5, session.getDescription(), false);
        b.d(parcel, 7, session.Mt());
        b.a(parcel, 8, (Parcelable)session.MI(), n, false);
        b.D(parcel, ae);
    }
}
