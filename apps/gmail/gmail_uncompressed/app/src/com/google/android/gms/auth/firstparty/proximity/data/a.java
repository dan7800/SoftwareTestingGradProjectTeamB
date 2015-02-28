package com.google.android.gms.auth.firstparty.proximity.data;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<Authorization>
{
    static void a(final Authorization authorization, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, authorization.bxf);
        b.a(parcel, 2, authorization.bzx, false);
        b.a(parcel, 3, authorization.bzy, false);
        b.a(parcel, 4, authorization.Rb);
        b.D(parcel, ae);
    }
}
