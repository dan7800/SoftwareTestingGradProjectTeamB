package com.google.android.gms.games;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class e implements Parcelable$Creator<PlayerLevel>
{
    static void a(final PlayerLevel playerLevel, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, playerLevel.Or());
        b.d(parcel, 1000, playerLevel.Jt());
        b.a(parcel, 2, playerLevel.Os());
        b.a(parcel, 3, playerLevel.Ot());
        b.D(parcel, ae);
    }
}
