package com.google.android.gms.games.quest;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<MilestoneEntity>
{
    static void a(final MilestoneEntity milestoneEntity, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, milestoneEntity.PW(), false);
        b.d(parcel, 1000, milestoneEntity.Jt());
        b.a(parcel, 2, milestoneEntity.PX());
        b.a(parcel, 3, milestoneEntity.PY());
        b.a(parcel, 4, milestoneEntity.PZ());
        b.d(parcel, 5, milestoneEntity.getState());
        b.a(parcel, 6, milestoneEntity.OM(), false);
        b.D(parcel, ae);
    }
}
