package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class GplusInfoResponse implements SafeParcelable
{
    public static final F CREATOR;
    String byB;
    boolean byC;
    String byD;
    boolean byE;
    boolean byF;
    String byG;
    String byH;
    String byo;
    String byp;
    final int version;
    
    static {
        CREATOR = new F();
    }
    
    GplusInfoResponse(final int version, final boolean byC, final String byo, final String byp, final String byD, final boolean byE, final boolean byF, final String byG, final String byB, final String byH) {
        this.version = version;
        this.byC = byC;
        this.byo = byo;
        this.byp = byp;
        this.byD = byD;
        this.byE = byE;
        this.byF = byF;
        this.byG = byG;
        this.byB = byB;
        this.byH = byH;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        F.a(this, parcel);
    }
}
