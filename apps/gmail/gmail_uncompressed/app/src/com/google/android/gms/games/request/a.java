package com.google.android.gms.games.request;

import com.google.android.gms.games.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public final class a implements Parcelable$Creator<GameRequestEntity>
{
    static void a(final GameRequestEntity gameRequestEntity, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)gameRequestEntity.OR(), n, false);
        b.d(parcel, 1000, gameRequestEntity.Jt());
        b.a(parcel, 2, (Parcelable)gameRequestEntity.Px(), n, false);
        b.a(parcel, 3, gameRequestEntity.getData());
        b.a(parcel, 4, gameRequestEntity.Pw(), false);
        b.b(parcel, 5, gameRequestEntity.Pz(), false);
        b.d(parcel, 7, gameRequestEntity.getType());
        b.a(parcel, 9, gameRequestEntity.Pj());
        b.a(parcel, 10, gameRequestEntity.Py());
        b.a(parcel, 11, gameRequestEntity.Qk());
        b.d(parcel, 12, gameRequestEntity.getStatus());
        b.D(parcel, ae);
    }
}
