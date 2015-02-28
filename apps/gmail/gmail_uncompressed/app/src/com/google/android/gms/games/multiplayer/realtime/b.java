package com.google.android.gms.games.multiplayer.realtime;

import com.google.android.gms.games.internal.*;
import android.os.*;
import com.google.android.gms.games.multiplayer.*;
import com.google.android.gms.common.internal.*;
import java.util.*;

final class b extends c
{
    @Override
    public final RoomEntity al(final Parcel parcel) {
        if (GamesDowngradeableSafeParcel.d(d.KY()) || d.fU(RoomEntity.class.getCanonicalName())) {
            return super.al(parcel);
        }
        final String string = parcel.readString();
        final String string2 = parcel.readString();
        final long long1 = parcel.readLong();
        final int int1 = parcel.readInt();
        final String string3 = parcel.readString();
        final int int2 = parcel.readInt();
        final Bundle bundle = parcel.readBundle();
        final int int3 = parcel.readInt();
        final ArrayList list = new ArrayList<ParticipantEntity>(int3);
        for (int i = 0; i < int3; ++i) {
            list.add(ParticipantEntity.CREATOR.createFromParcel(parcel));
        }
        return new RoomEntity(2, string, string2, long1, int1, string3, int2, bundle, (ArrayList<ParticipantEntity>)list, -1);
    }
}
