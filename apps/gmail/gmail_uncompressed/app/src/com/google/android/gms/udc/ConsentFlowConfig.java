package com.google.android.gms.udc;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class ConsentFlowConfig implements SafeParcelable
{
    public static final a CREATOR;
    private final int btV;
    private boolean ckD;
    private boolean ckE;
    
    static {
        CREATOR = new a();
    }
    
    private ConsentFlowConfig() {
        this(1, false, true);
    }
    
    ConsentFlowConfig(final int btV, final boolean ckD, final boolean ckE) {
        this.btV = btV;
        this.ckD = ckD;
        this.ckE = ckE;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final boolean Vw() {
        return this.ckD;
    }
    
    public final boolean Vx() {
        return this.ckE;
    }
    
    public int describeContents() {
        final a creator = ConsentFlowConfig.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final a creator = ConsentFlowConfig.CREATOR;
        a.a(this, parcel);
    }
}
