package com.google.android.gms.games;

import android.net.*;
import com.google.android.gms.games.internal.*;
import android.os.*;
import java.util.*;
import com.google.android.gms.common.internal.*;

final class a extends b
{
    @Override
    public final GameEntity af(final Parcel parcel) {
        if (GamesDowngradeableSafeParcel.d(d.KY()) || d.fU(GameEntity.class.getCanonicalName())) {
            return super.af(parcel);
        }
        final String string = parcel.readString();
        final String string2 = parcel.readString();
        final String string3 = parcel.readString();
        final String string4 = parcel.readString();
        final String string5 = parcel.readString();
        final String string6 = parcel.readString();
        final String string7 = parcel.readString();
        Uri parse;
        if (string7 == null) {
            parse = null;
        }
        else {
            parse = Uri.parse(string7);
        }
        final String string8 = parcel.readString();
        Uri parse2;
        if (string8 == null) {
            parse2 = null;
        }
        else {
            parse2 = Uri.parse(string8);
        }
        final String string9 = parcel.readString();
        Uri parse3;
        if (string9 == null) {
            parse3 = null;
        }
        else {
            parse3 = Uri.parse(string9);
        }
        return new GameEntity(5, string, string2, string3, string4, string5, string6, parse, parse2, parse3, parcel.readInt() > 0, parcel.readInt() > 0, parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), false, false, null, null, null, false, false, false, null);
    }
}
