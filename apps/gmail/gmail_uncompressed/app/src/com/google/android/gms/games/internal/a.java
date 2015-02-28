package com.google.android.gms.games.internal;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<ConnectionInfo>
{
    static void a(final ConnectionInfo connectionInfo, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, connectionInfo.OP(), false);
        b.d(parcel, 1000, connectionInfo.Jt());
        b.d(parcel, 2, connectionInfo.OQ());
        b.D(parcel, ae);
    }
}
