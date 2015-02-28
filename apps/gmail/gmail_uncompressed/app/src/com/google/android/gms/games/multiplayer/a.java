package com.google.android.gms.games.multiplayer;

import com.google.android.gms.games.internal.*;
import android.os.*;
import com.google.android.gms.common.internal.*;
import com.google.android.gms.games.*;
import java.util.*;

final class a extends b
{
    @Override
    public final InvitationEntity aj(final Parcel parcel) {
        if (GamesDowngradeableSafeParcel.d(d.KY()) || d.fU(InvitationEntity.class.getCanonicalName())) {
            return super.aj(parcel);
        }
        final GameEntity gameEntity = (GameEntity)GameEntity.CREATOR.createFromParcel(parcel);
        final String string = parcel.readString();
        final long long1 = parcel.readLong();
        final int int1 = parcel.readInt();
        final ParticipantEntity participantEntity = (ParticipantEntity)ParticipantEntity.CREATOR.createFromParcel(parcel);
        final int int2 = parcel.readInt();
        final ArrayList list = new ArrayList<ParticipantEntity>(int2);
        for (int i = 0; i < int2; ++i) {
            list.add(ParticipantEntity.CREATOR.createFromParcel(parcel));
        }
        return new InvitationEntity(2, gameEntity, string, long1, int1, participantEntity, (ArrayList<ParticipantEntity>)list, -1, 0);
    }
}
