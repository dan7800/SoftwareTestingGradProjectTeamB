package com.google.android.gms.games.achievement;

import android.os.*;
import android.net.*;
import com.google.android.gms.games.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<AchievementEntity>
{
    static void a(final AchievementEntity achievementEntity, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, achievementEntity.Oz(), false);
        b.d(parcel, 2, achievementEntity.getType());
        b.a(parcel, 3, achievementEntity.getName(), false);
        b.a(parcel, 4, achievementEntity.getDescription(), false);
        b.a(parcel, 5, (Parcelable)achievementEntity.OA(), n, false);
        b.a(parcel, 6, achievementEntity.OB(), false);
        b.a(parcel, 7, (Parcelable)achievementEntity.OC(), n, false);
        b.a(parcel, 8, achievementEntity.OD(), false);
        b.d(parcel, 9, achievementEntity.OE());
        b.a(parcel, 10, achievementEntity.OF(), false);
        b.a(parcel, 11, (Parcelable)achievementEntity.OG(), n, false);
        b.d(parcel, 12, achievementEntity.getState());
        b.d(parcel, 13, achievementEntity.OH());
        b.a(parcel, 14, achievementEntity.OI(), false);
        b.a(parcel, 15, achievementEntity.OJ());
        b.a(parcel, 16, achievementEntity.OK());
        b.d(parcel, 1000, achievementEntity.Jt());
        b.D(parcel, ae);
    }
}
