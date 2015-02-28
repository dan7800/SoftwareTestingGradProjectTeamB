package com.google.android.gms.games.snapshot;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public final class SnapshotEntity implements SafeParcelable, Snapshot
{
    public static final b CREATOR;
    private final SnapshotMetadataEntity bQf;
    private final SnapshotContents bQg;
    private final int btV;
    
    static {
        CREATOR = new b();
    }
    
    SnapshotEntity(final int btV, final SnapshotMetadata snapshotMetadata, final SnapshotContents bQg) {
        this.btV = btV;
        this.bQf = new SnapshotMetadataEntity(snapshotMetadata);
        this.bQg = bQg;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    @Override
    public final SnapshotMetadata Qm() {
        return this.bQf;
    }
    
    @Override
    public final SnapshotContents Qn() {
        if (this.bQg.isClosed()) {
            return null;
        }
        return this.bQg;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o instanceof Snapshot) {
            if (this != o) {
                final Snapshot snapshot = (Snapshot)o;
                if (!E.b(snapshot.Qm(), super.Qm()) || !E.b(snapshot.Qn(), super.Qn())) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { super.Qm(), super.Qn() });
    }
    
    @Override
    public final String toString() {
        return E.ad(this).e("Metadata", super.Qm()).e("HasContents", super.Qn() != null).toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel, n);
    }
}
