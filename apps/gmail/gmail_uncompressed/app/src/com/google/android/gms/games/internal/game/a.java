package com.google.android.gms.games.internal.game;

import android.os.*;
import com.google.android.gms.games.internal.*;
import com.google.android.gms.games.*;
import com.google.android.gms.games.snapshot.*;
import com.google.android.gms.common.internal.*;
import java.util.*;

final class a extends b
{
    @Override
    public final ExtendedGameEntity ah(final Parcel parcel) {
        if (GamesDowngradeableSafeParcel.d(d.KY()) || d.fU(ExtendedGameEntity.class.getCanonicalName())) {
            return super.ah(parcel);
        }
        final GameEntity gameEntity = (GameEntity)GameEntity.CREATOR.createFromParcel(parcel);
        final int int1 = parcel.readInt();
        final boolean b = parcel.readInt() == 1;
        final int int2 = parcel.readInt();
        final long long1 = parcel.readLong();
        final long long2 = parcel.readLong();
        final String string = parcel.readString();
        final long long3 = parcel.readLong();
        final String string2 = parcel.readString();
        final int int3 = parcel.readInt();
        final ArrayList list = new ArrayList<GameBadgeEntity>(int3);
        for (int i = 0; i < int3; ++i) {
            list.add(GameBadgeEntity.CREATOR.ai(parcel));
        }
        return new ExtendedGameEntity(2, gameEntity, int1, b, int2, long1, long2, string, long3, string2, (ArrayList<GameBadgeEntity>)list, null);
    }
}
