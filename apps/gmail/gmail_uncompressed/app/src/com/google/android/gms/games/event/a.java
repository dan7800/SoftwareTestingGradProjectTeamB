package com.google.android.gms.games.event;

import android.os.*;
import android.net.*;
import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.games.*;

public final class a implements Parcelable$Creator<EventEntity>
{
    static void a(final EventEntity eventEntity, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, eventEntity.OM(), false);
        b.d(parcel, 1000, eventEntity.Jt());
        b.a(parcel, 2, eventEntity.getName(), false);
        b.a(parcel, 3, eventEntity.getDescription(), false);
        b.a(parcel, 4, (Parcelable)eventEntity.NR(), n, false);
        b.a(parcel, 5, eventEntity.NS(), false);
        b.a(parcel, 6, (Parcelable)eventEntity.OG(), n, false);
        b.a(parcel, 7, eventEntity.getValue());
        b.a(parcel, 8, eventEntity.ON(), false);
        b.a(parcel, 9, eventEntity.isVisible());
        b.D(parcel, ae);
    }
}
