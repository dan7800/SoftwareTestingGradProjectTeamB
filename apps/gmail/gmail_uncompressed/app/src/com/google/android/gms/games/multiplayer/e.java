package com.google.android.gms.games.multiplayer;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class e implements Parcelable$Creator<ParticipantResult>
{
    static void a(final ParticipantResult participantResult, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, participantResult.PC(), false);
        b.d(parcel, 1000, participantResult.Jt());
        b.d(parcel, 2, participantResult.PF());
        b.d(parcel, 3, participantResult.PG());
        b.D(parcel, ae);
    }
}
