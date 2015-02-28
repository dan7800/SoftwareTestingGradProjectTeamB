package com.google.android.gms.games.internal.multiplayer;

import android.os.*;
import com.google.android.gms.games.multiplayer.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class a implements Parcelable$Creator<ZInvitationCluster>
{
    static void a(final ZInvitationCluster zInvitationCluster, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.b(parcel, 1, zInvitationCluster.Pg(), false);
        b.d(parcel, 1000, zInvitationCluster.Jt());
        b.D(parcel, ae);
    }
}
