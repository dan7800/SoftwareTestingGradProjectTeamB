package com.google.android.gms.games.snapshot;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class b implements Parcelable$Creator<SnapshotEntity>
{
    static void a(final SnapshotEntity snapshotEntity, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, (Parcelable)snapshotEntity.Qm(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1000, snapshotEntity.Jt());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable)snapshotEntity.Qn(), n, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
