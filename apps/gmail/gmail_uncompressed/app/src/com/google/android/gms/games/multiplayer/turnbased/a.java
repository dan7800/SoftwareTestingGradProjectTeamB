package com.google.android.gms.games.multiplayer.turnbased;

import com.google.android.gms.games.*;
import com.google.android.gms.games.multiplayer.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public final class a implements Parcelable$Creator<TurnBasedMatchEntity>
{
    static void a(final TurnBasedMatchEntity turnBasedMatchEntity, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)turnBasedMatchEntity.OR(), n, false);
        b.a(parcel, 2, turnBasedMatchEntity.PM(), false);
        b.a(parcel, 3, turnBasedMatchEntity.PI(), false);
        b.a(parcel, 4, turnBasedMatchEntity.Pj());
        b.a(parcel, 5, turnBasedMatchEntity.PO(), false);
        b.a(parcel, 6, turnBasedMatchEntity.OJ());
        b.a(parcel, 7, turnBasedMatchEntity.PP(), false);
        b.d(parcel, 8, turnBasedMatchEntity.getStatus());
        b.d(parcel, 10, turnBasedMatchEntity.Pl());
        b.d(parcel, 11, turnBasedMatchEntity.getVersion());
        b.a(parcel, 12, turnBasedMatchEntity.getData());
        b.b(parcel, 13, turnBasedMatchEntity.Pn(), false);
        b.a(parcel, 14, turnBasedMatchEntity.PQ(), false);
        b.a(parcel, 15, turnBasedMatchEntity.PR());
        b.a(parcel, 17, turnBasedMatchEntity.PJ());
        b.d(parcel, 16, turnBasedMatchEntity.PS());
        b.d(parcel, 1000, turnBasedMatchEntity.Jt());
        b.a(parcel, 19, turnBasedMatchEntity.PT());
        b.d(parcel, 18, turnBasedMatchEntity.PN());
        b.a(parcel, 21, turnBasedMatchEntity.PU(), false);
        b.a(parcel, 20, turnBasedMatchEntity.getDescription(), false);
        b.D(parcel, ae);
    }
}
