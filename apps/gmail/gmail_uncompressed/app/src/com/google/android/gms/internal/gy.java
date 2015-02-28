package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class gy implements SafeParcelable
{
    public static final u CREATOR;
    public String bSP;
    public int bSQ;
    public int bSR;
    public boolean bSS;
    public final int versionCode;
    
    static {
        CREATOR = new u();
    }
    
    gy(final int versionCode, final String bsp, final int bsq, final int bsr, final boolean bss) {
        this.versionCode = versionCode;
        this.bSP = bsp;
        this.bSQ = bsq;
        this.bSR = bsr;
        this.bSS = bss;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        u.a(this, parcel);
    }
}
