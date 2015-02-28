package com.google.android.gms.games.quest;

import android.os.*;
import com.google.android.gms.games.*;
import android.net.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class b implements Parcelable$Creator<QuestEntity>
{
    static void a(final QuestEntity questEntity, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, (Parcelable)questEntity.OR(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, questEntity.Qb(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, questEntity.Qf());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, (Parcelable)questEntity.Qc(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, questEntity.Qd(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, questEntity.getDescription(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, questEntity.Qg());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, questEntity.OJ());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, (Parcelable)questEntity.NR(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, questEntity.NS(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, questEntity.getName(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, questEntity.Qh());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, questEntity.Qi());
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 15, questEntity.getState());
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 17, questEntity.Qe(), false);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 16, questEntity.getType());
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1000, questEntity.Jt());
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
