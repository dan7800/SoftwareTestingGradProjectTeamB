package com.google.android.gms.games;

import android.net.*;
import com.google.android.gms.games.internal.*;
import android.os.*;
import com.google.android.gms.games.internal.player.*;
import java.util.*;
import com.google.android.gms.common.internal.*;

final class c extends d
{
    @Override
    public final PlayerEntity ag(final Parcel parcel) {
        if (GamesDowngradeableSafeParcel.d(com.google.android.gms.common.internal.d.KY()) || com.google.android.gms.common.internal.d.fU(PlayerEntity.class.getCanonicalName())) {
            return super.ag(parcel);
        }
        final String string = parcel.readString();
        final String string2 = parcel.readString();
        final String string3 = parcel.readString();
        final String string4 = parcel.readString();
        Uri parse;
        if (string3 == null) {
            parse = null;
        }
        else {
            parse = Uri.parse(string3);
        }
        Uri parse2;
        if (string4 == null) {
            parse2 = null;
        }
        else {
            parse2 = Uri.parse(string4);
        }
        return new PlayerEntity(11, string, string2, parse, parse2, parcel.readLong(), -1, -1L, null, null, null, null, null, true);
    }
}
