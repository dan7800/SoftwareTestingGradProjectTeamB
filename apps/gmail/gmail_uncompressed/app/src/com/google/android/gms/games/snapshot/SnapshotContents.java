package com.google.android.gms.games.snapshot;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.*;
import android.os.*;

public final class SnapshotContents implements SafeParcelable
{
    public static final a CREATOR;
    private static final Object bQe;
    private Contents bHu;
    private final int btV;
    
    static {
        bQe = new Object();
        CREATOR = new a();
    }
    
    SnapshotContents(final int btV, final Contents bHu) {
        this.btV = btV;
        this.bHu = bHu;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final Contents Qo() {
        return this.bHu;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final boolean isClosed() {
        return this.bHu == null;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel, n);
    }
}
