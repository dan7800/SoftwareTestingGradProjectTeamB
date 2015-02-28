package com.google.android.gms.games.snapshot;

import com.google.android.gms.common.internal.safeparcel.*;
import android.net.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import com.google.android.gms.games.*;
import android.os.*;

public final class SnapshotMetadataEntity implements SafeParcelable, SnapshotMetadata
{
    public static final d CREATOR;
    private final String bGC;
    private final String bMj;
    private final GameEntity bOg;
    private final Uri bQi;
    private final PlayerEntity bQl;
    private final String bQm;
    private final String bQn;
    private final long bQo;
    private final long bQp;
    private final float bQq;
    private final String bQr;
    private final int btV;
    
    static {
        CREATOR = new d();
    }
    
    SnapshotMetadataEntity(final int btV, final GameEntity bOg, final PlayerEntity bQl, final String bQm, final Uri bQi, final String bQn, final String bgc, final String bMj, final long bQo, final long bQp, final float bQq, final String bQr) {
        this.btV = btV;
        this.bOg = bOg;
        this.bQl = bQl;
        this.bQm = bQm;
        this.bQi = bQi;
        this.bQn = bQn;
        this.bQq = bQq;
        this.bGC = bgc;
        this.bMj = bMj;
        this.bQo = bQo;
        this.bQp = bQp;
        this.bQr = bQr;
    }
    
    public SnapshotMetadataEntity(final SnapshotMetadata snapshotMetadata) {
        this.btV = 3;
        this.bOg = new GameEntity(snapshotMetadata.OR());
        this.bQl = new PlayerEntity(snapshotMetadata.Qp());
        this.bQm = snapshotMetadata.Qq();
        this.bQi = snapshotMetadata.Qr();
        this.bQn = snapshotMetadata.Qs();
        this.bQq = snapshotMetadata.Qt();
        this.bGC = snapshotMetadata.getTitle();
        this.bMj = snapshotMetadata.getDescription();
        this.bQo = snapshotMetadata.Qv();
        this.bQp = snapshotMetadata.Qw();
        this.bQr = snapshotMetadata.Qu();
    }
    
    static int a(final SnapshotMetadata snapshotMetadata) {
        return Arrays.hashCode(new Object[] { snapshotMetadata.OR(), snapshotMetadata.Qp(), snapshotMetadata.Qq(), snapshotMetadata.Qr(), snapshotMetadata.Qt(), snapshotMetadata.getTitle(), snapshotMetadata.getDescription(), snapshotMetadata.Qv(), snapshotMetadata.Qw(), snapshotMetadata.Qu() });
    }
    
    static boolean a(final SnapshotMetadata snapshotMetadata, final Object o) {
        if (o instanceof SnapshotMetadata) {
            if (snapshotMetadata == o) {
                return true;
            }
            final SnapshotMetadata snapshotMetadata2 = (SnapshotMetadata)o;
            if (E.b(snapshotMetadata2.OR(), snapshotMetadata.OR()) && E.b(snapshotMetadata2.Qp(), snapshotMetadata.Qp()) && E.b(snapshotMetadata2.Qq(), snapshotMetadata.Qq()) && E.b(snapshotMetadata2.Qr(), snapshotMetadata.Qr()) && E.b(snapshotMetadata2.Qt(), snapshotMetadata.Qt()) && E.b(snapshotMetadata2.getTitle(), snapshotMetadata.getTitle()) && E.b(snapshotMetadata2.getDescription(), snapshotMetadata.getDescription()) && E.b(snapshotMetadata2.Qv(), snapshotMetadata.Qv()) && E.b(snapshotMetadata2.Qw(), snapshotMetadata.Qw()) && E.b(snapshotMetadata2.Qu(), snapshotMetadata.Qu())) {
                return true;
            }
        }
        return false;
    }
    
    static String b(final SnapshotMetadata snapshotMetadata) {
        return E.ad(snapshotMetadata).e("Game", snapshotMetadata.OR()).e("Owner", snapshotMetadata.Qp()).e("SnapshotId", snapshotMetadata.Qq()).e("CoverImageUri", snapshotMetadata.Qr()).e("CoverImageUrl", snapshotMetadata.Qs()).e("CoverImageAspectRatio", snapshotMetadata.Qt()).e("Description", snapshotMetadata.getDescription()).e("LastModifiedTimestamp", snapshotMetadata.Qv()).e("PlayedTime", snapshotMetadata.Qw()).e("UniqueName", snapshotMetadata.Qu()).toString();
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    @Override
    public final Game OR() {
        return this.bOg;
    }
    
    @Override
    public final Player Qp() {
        return this.bQl;
    }
    
    @Override
    public final String Qq() {
        return this.bQm;
    }
    
    @Override
    public final Uri Qr() {
        return this.bQi;
    }
    
    @Override
    public final String Qs() {
        return this.bQn;
    }
    
    @Override
    public final float Qt() {
        return this.bQq;
    }
    
    @Override
    public final String Qu() {
        return this.bQr;
    }
    
    @Override
    public final long Qv() {
        return this.bQo;
    }
    
    @Override
    public final long Qw() {
        return this.bQp;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return a(this, o);
    }
    
    @Override
    public final String getDescription() {
        return this.bMj;
    }
    
    @Override
    public final String getTitle() {
        return this.bGC;
    }
    
    @Override
    public final int hashCode() {
        return a(this);
    }
    
    @Override
    public final String toString() {
        return b(this);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        d.a(this, parcel, n);
    }
}
