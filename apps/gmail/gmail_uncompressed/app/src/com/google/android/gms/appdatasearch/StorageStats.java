package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class StorageStats implements SafeParcelable
{
    public static final u CREATOR;
    final int btV;
    public final RegisteredPackageInfo[] bwu;
    public final long bwv;
    public final long bww;
    public final long bwx;
    
    static {
        CREATOR = new u();
    }
    
    StorageStats(final int btV, final RegisteredPackageInfo[] bwu, final long bwv, final long bww, final long bwx) {
        this.btV = btV;
        this.bwu = bwu;
        this.bwv = bwv;
        this.bww = bww;
        this.bwx = bwx;
    }
    
    public int describeContents() {
        final u creator = StorageStats.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final u creator = StorageStats.CREATOR;
        u.a(this, parcel, n);
    }
}
