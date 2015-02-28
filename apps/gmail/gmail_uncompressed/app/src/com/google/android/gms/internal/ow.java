package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public final class ow implements SafeParcelable
{
    public static final bB CREATOR;
    final boolean bVS;
    final boolean bVT;
    final String bVU;
    final boolean bVV;
    private final int btV;
    
    static {
        CREATOR = new bB();
    }
    
    ow(final int btV, final boolean bvs, final boolean bvt, final String bvu, final boolean bvv) {
        this.btV = btV;
        this.bVS = bvs;
        this.bVT = bvt;
        this.bVU = bvu;
        this.bVV = bvv;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final String toString() {
        return E.ad(this).e("useOfflineDatabase", this.bVS).e("useWebData", this.bVT).e("endpoint", this.bVU).toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        bB.a(this, parcel);
    }
}
