package com.google.android.gms.wallet.wobs;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class LoyaltyPointsBalance implements SafeParcelable
{
    public static final Parcelable$Creator<LoyaltyPointsBalance> CREATOR;
    private final int btV;
    String cmA;
    double cmB;
    String cmC;
    long cmD;
    int cmE;
    int cmz;
    
    static {
        CREATOR = (Parcelable$Creator)new e();
    }
    
    LoyaltyPointsBalance() {
        this.btV = 1;
        this.cmE = -1;
        this.cmz = -1;
        this.cmB = -1.0;
    }
    
    LoyaltyPointsBalance(final int btV, final int cmz, final String cmA, final double cmB, final String cmC, final long cmD, final int cmE) {
        this.btV = btV;
        this.cmz = cmz;
        this.cmA = cmA;
        this.cmB = cmB;
        this.cmC = cmC;
        this.cmD = cmD;
        this.cmE = cmE;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        e.a(this, parcel);
    }
}
