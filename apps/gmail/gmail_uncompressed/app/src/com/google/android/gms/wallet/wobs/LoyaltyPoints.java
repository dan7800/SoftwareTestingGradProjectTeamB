package com.google.android.gms.wallet.wobs;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class LoyaltyPoints implements SafeParcelable
{
    public static final Parcelable$Creator<LoyaltyPoints> CREATOR;
    private final int btV;
    TimeInterval clz;
    LoyaltyPointsBalance cmy;
    String label;
    String type;
    
    static {
        CREATOR = (Parcelable$Creator)new f();
    }
    
    LoyaltyPoints() {
        this.btV = 1;
    }
    
    LoyaltyPoints(final int btV, final String label, final LoyaltyPointsBalance cmy, final String type, final TimeInterval clz) {
        this.btV = btV;
        this.label = label;
        this.cmy = cmy;
        this.type = type;
        this.clz = clz;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        f.a(this, parcel, n);
    }
}
