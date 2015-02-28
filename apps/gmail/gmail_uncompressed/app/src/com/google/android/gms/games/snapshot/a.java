package com.google.android.gms.games.snapshot;

import android.os.*;
import com.google.android.gms.drive.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<SnapshotContents>
{
    static void a(final SnapshotContents snapshotContents, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)snapshotContents.Qo(), n, false);
        b.d(parcel, 1000, snapshotContents.Jt());
        b.D(parcel, ae);
    }
}
