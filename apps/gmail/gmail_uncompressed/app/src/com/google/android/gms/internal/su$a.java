package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class su$a implements SafeParcelable
{
    public static final dj CREATOR;
    public long bZK;
    public long bZL;
    final int btV;
    public boolean bvY;
    public String packageName;
    
    static {
        CREATOR = new dj();
    }
    
    public su$a() {
        this.btV = 1;
    }
    
    su$a(final int btV, final String packageName, final long bzk, final boolean bvY, final long bzl) {
        this.btV = btV;
        this.packageName = packageName;
        this.bZK = bzk;
        this.bvY = bvY;
        this.bZL = bzl;
    }
    
    public int describeContents() {
        final dj creator = su$a.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final dj creator = su$a.CREATOR;
        dj.a(this, parcel);
    }
}
