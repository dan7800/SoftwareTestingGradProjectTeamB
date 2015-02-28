package com.google.android.gms.games.internal.game;

import android.os.*;
import android.net.*;
import com.google.android.gms.games.internal.*;
import java.util.*;
import com.google.android.gms.common.internal.*;

final class c extends d
{
    @Override
    public final GameBadgeEntity ai(final Parcel parcel) {
        if (GamesDowngradeableSafeParcel.d(com.google.android.gms.common.internal.d.KY()) || com.google.android.gms.common.internal.d.fU(GameBadgeEntity.class.getCanonicalName())) {
            return super.ai(parcel);
        }
        final int int1 = parcel.readInt();
        final String string = parcel.readString();
        final String string2 = parcel.readString();
        final String string3 = parcel.readString();
        Uri parse;
        if (string3 == null) {
            parse = null;
        }
        else {
            parse = Uri.parse(string3);
        }
        return new GameBadgeEntity(1, int1, string, string2, parse);
    }
}
