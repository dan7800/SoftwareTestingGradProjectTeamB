package com.google.android.gms.wallet;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class InstrumentInfo implements SafeParcelable
{
    public static final Parcelable$Creator<InstrumentInfo> CREATOR;
    private final int btV;
    private String clk;
    private String cll;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
    }
    
    InstrumentInfo(final int btV, final String clk, final String cll) {
        this.btV = btV;
        this.clk = clk;
        this.cll = cll;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final String VB() {
        return this.clk;
    }
    
    public final String VC() {
        return this.cll;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        h.a(this, parcel);
    }
}
