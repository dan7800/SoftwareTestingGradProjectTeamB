package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class or implements SafeParcelable
{
    public static final bx CREATOR;
    private final String bVQ;
    private final int btV;
    private final String bxh;
    
    static {
        CREATOR = new bx();
    }
    
    or(final int btV, final String bxh, final String bvq) {
        this.btV = btV;
        this.bxh = bxh;
        this.bVQ = bvq;
    }
    
    public final String FP() {
        return this.bxh;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final String RR() {
        return this.bVQ;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        bx.a(this, parcel);
    }
}
