package com.google.android.gms.games.internal.request;

import android.os.*;
import com.google.android.gms.games.request.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class a implements Parcelable$Creator<GameRequestCluster>
{
    static void a(final GameRequestCluster gameRequestCluster, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.b(parcel, 1, gameRequestCluster.Pv(), false);
        b.d(parcel, 1000, gameRequestCluster.Jt());
        b.D(parcel, ae);
    }
}
