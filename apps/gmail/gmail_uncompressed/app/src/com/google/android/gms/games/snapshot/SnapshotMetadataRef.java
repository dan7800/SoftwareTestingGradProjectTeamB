package com.google.android.gms.games.snapshot;

import com.google.android.gms.common.data.*;
import com.google.android.gms.games.*;
import android.net.*;
import android.os.*;

public final class SnapshotMetadataRef extends h implements SnapshotMetadata
{
    private final Game bPi;
    private final Player bQs;
    
    private SnapshotMetadata Qz() {
        return new SnapshotMetadataEntity(this);
    }
    
    @Override
    public final Game OR() {
        return this.bPi;
    }
    
    @Override
    public final Player Qp() {
        return this.bQs;
    }
    
    @Override
    public final String Qq() {
        return this.getString("external_snapshot_id");
    }
    
    @Override
    public final Uri Qr() {
        return this.fS("cover_icon_image_uri");
    }
    
    @Override
    public final String Qs() {
        return this.getString("cover_icon_image_url");
    }
    
    @Override
    public final float Qt() {
        final float float1 = this.getFloat("cover_icon_image_height");
        final float float2 = this.getFloat("cover_icon_image_width");
        if (float1 == 0.0f) {
            return 0.0f;
        }
        return float2 / float1;
    }
    
    @Override
    public final String Qu() {
        return this.getString("unique_name");
    }
    
    @Override
    public final long Qv() {
        return this.getLong("last_modified_timestamp");
    }
    
    @Override
    public final long Qw() {
        return this.getLong("duration");
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return SnapshotMetadataEntity.a(this, o);
    }
    
    @Override
    public final String getDescription() {
        return this.getString("description");
    }
    
    @Override
    public final String getTitle() {
        return this.getString("title");
    }
    
    @Override
    public final int hashCode() {
        return SnapshotMetadataEntity.a(this);
    }
    
    @Override
    public final String toString() {
        return SnapshotMetadataEntity.b(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        ((SnapshotMetadataEntity)this.Qz()).writeToParcel(parcel, n);
    }
}
