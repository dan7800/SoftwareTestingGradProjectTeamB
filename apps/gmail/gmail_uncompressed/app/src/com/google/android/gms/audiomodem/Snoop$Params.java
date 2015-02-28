package com.google.android.gms.audiomodem;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class Snoop$Params implements SafeParcelable
{
    public static final Parcelable$Creator<Snoop$Params> CREATOR;
    private final int btV;
    private final Encoding[] bxa;
    private final boolean bxb;
    private final boolean bxc;
    private final long bxd;
    
    static {
        CREATOR = (Parcelable$Creator)new e();
    }
    
    Snoop$Params(final int btV, final Encoding[] bxa, final boolean bxb, final boolean bxc, final long bxd) {
        this.btV = btV;
        this.bxa = bxa;
        this.bxb = bxb;
        this.bxc = bxc;
        this.bxd = bxd;
    }
    
    public final Encoding[] JK() {
        return this.bxa;
    }
    
    public final boolean JL() {
        return this.bxb;
    }
    
    public final boolean JM() {
        return this.bxc;
    }
    
    public final long JN() {
        return this.bxd;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.a(this, parcel, n);
    }
}
