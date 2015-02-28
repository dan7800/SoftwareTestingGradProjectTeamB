package com.google.android.gms.games.multiplayer;

import android.net.*;
import com.google.android.gms.games.internal.*;
import android.os.*;
import com.google.android.gms.games.*;
import java.util.*;
import com.google.android.gms.common.internal.*;

final class c extends d
{
    @Override
    public final ParticipantEntity ak(final Parcel parcel) {
        boolean b = true;
        if (GamesDowngradeableSafeParcel.d(com.google.android.gms.common.internal.d.KY()) || com.google.android.gms.common.internal.d.fU(ParticipantEntity.class.getCanonicalName())) {
            return super.ak(parcel);
        }
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
        final String string4 = parcel.readString();
        Uri parse2;
        if (string4 == null) {
            parse2 = null;
        }
        else {
            parse2 = Uri.parse(string4);
        }
        final int int1 = parcel.readInt();
        final String string5 = parcel.readString();
        final boolean b2 = parcel.readInt() > 0 && b;
        if (parcel.readInt() <= 0) {
            b = false;
        }
        PlayerEntity playerEntity;
        if (b) {
            playerEntity = (PlayerEntity)PlayerEntity.CREATOR.createFromParcel(parcel);
        }
        else {
            playerEntity = null;
        }
        return new ParticipantEntity(3, string, string2, parse, parse2, int1, string5, b2, playerEntity, 7, null, null, null);
    }
}
