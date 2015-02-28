package com.google.android.gms.games.snapshot;

import com.google.android.gms.common.internal.safeparcel.*;
import android.net.*;
import com.google.android.gms.common.data.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public final class SnapshotMetadataChange implements SafeParcelable
{
    public static final c CREATOR;
    public static final SnapshotMetadataChange bQk;
    private final String bMj;
    private final Long bQh;
    private final Uri bQi;
    private a bQj;
    private final int btV;
    
    static {
        CREATOR = new c();
        bQk = new SnapshotMetadataChange();
    }
    
    SnapshotMetadataChange() {
        this(4, null, null, null, null);
    }
    
    SnapshotMetadataChange(final int btV, final String bMj, final Long bQh, final a bQj, final Uri bQi) {
        boolean b = true;
        this.btV = btV;
        this.bMj = bMj;
        this.bQh = bQh;
        this.bQj = bQj;
        this.bQi = bQi;
        if (this.bQj != null) {
            if (this.bQi != null) {
                b = false;
            }
            G.a(b, "Cannot set both a URI and an image");
        }
        else if (this.bQi != null) {
            if (this.bQj != null) {
                b = false;
            }
            G.a(b, "Cannot set both a URI and an image");
        }
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final Uri Qr() {
        return this.bQi;
    }
    
    public final Long Qx() {
        return this.bQh;
    }
    
    public final a Qy() {
        return this.bQj;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final String getDescription() {
        return this.bMj;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel, n);
    }
}
