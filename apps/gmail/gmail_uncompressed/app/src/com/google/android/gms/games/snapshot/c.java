package com.google.android.gms.games.snapshot;

import android.os.*;
import android.net.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<SnapshotMetadataChange>
{
    static void a(final SnapshotMetadataChange snapshotMetadataChange, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, snapshotMetadataChange.getDescription(), false);
        b.d(parcel, 1000, snapshotMetadataChange.Jt());
        b.a(parcel, 2, snapshotMetadataChange.Qx());
        b.a(parcel, 4, (Parcelable)snapshotMetadataChange.Qr(), n, false);
        b.a(parcel, 5, (Parcelable)snapshotMetadataChange.Qy(), n, false);
        b.D(parcel, ae);
    }
}
