package com.google.android.gms.games.internal.player;

import android.os.*;
import android.net.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<MostRecentGameInfoEntity>
{
    static void a(final MostRecentGameInfoEntity mostRecentGameInfoEntity, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, mostRecentGameInfoEntity.Po(), false);
        b.d(parcel, 1000, mostRecentGameInfoEntity.Jt());
        b.a(parcel, 2, mostRecentGameInfoEntity.Pp(), false);
        b.a(parcel, 3, mostRecentGameInfoEntity.Pq());
        b.a(parcel, 4, (Parcelable)mostRecentGameInfoEntity.Pr(), n, false);
        b.a(parcel, 5, (Parcelable)mostRecentGameInfoEntity.Ps(), n, false);
        b.a(parcel, 6, (Parcelable)mostRecentGameInfoEntity.Pt(), n, false);
        b.D(parcel, ae);
    }
}
