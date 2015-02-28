package com.google.android.gms.games.snapshot;

import android.os.*;
import com.google.android.gms.games.*;
import android.net.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<SnapshotMetadataEntity>
{
    static void a(final SnapshotMetadataEntity snapshotMetadataEntity, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.a(parcel, 1, (Parcelable)snapshotMetadataEntity.OR(), n, false);
        b.d(parcel, 1000, snapshotMetadataEntity.Jt());
        b.a(parcel, 2, (Parcelable)snapshotMetadataEntity.Qp(), n, false);
        b.a(parcel, 3, snapshotMetadataEntity.Qq(), false);
        b.a(parcel, 5, (Parcelable)snapshotMetadataEntity.Qr(), n, false);
        b.a(parcel, 6, snapshotMetadataEntity.Qs(), false);
        b.a(parcel, 7, snapshotMetadataEntity.getTitle(), false);
        b.a(parcel, 8, snapshotMetadataEntity.getDescription(), false);
        b.a(parcel, 9, snapshotMetadataEntity.Qv());
        b.a(parcel, 10, snapshotMetadataEntity.Qw());
        b.a(parcel, 11, snapshotMetadataEntity.Qt());
        b.a(parcel, 12, snapshotMetadataEntity.Qu(), false);
        b.D(parcel, ae);
    }
}
