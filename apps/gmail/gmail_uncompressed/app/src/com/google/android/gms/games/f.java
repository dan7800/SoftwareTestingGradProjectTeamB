package com.google.android.gms.games;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class f implements Parcelable$Creator<PlayerLevelInfo>
{
    static void a(final PlayerLevelInfo playerLevelInfo, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, playerLevelInfo.Ou());
        b.d(parcel, 1000, playerLevelInfo.Jt());
        b.a(parcel, 2, playerLevelInfo.Ov());
        b.a(parcel, 3, (Parcelable)playerLevelInfo.Ow(), n, false);
        b.a(parcel, 4, (Parcelable)playerLevelInfo.Ox(), n, false);
        b.D(parcel, ae);
    }
}
