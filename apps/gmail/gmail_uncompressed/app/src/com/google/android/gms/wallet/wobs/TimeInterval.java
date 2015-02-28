package com.google.android.gms.wallet.wobs;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class TimeInterval implements SafeParcelable
{
    public static final Parcelable$Creator<TimeInterval> CREATOR;
    private final int btV;
    long cmG;
    long cmH;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
    }
    
    TimeInterval() {
        this.btV = 1;
    }
    
    TimeInterval(final int btV, final long cmG, final long cmH) {
        this.btV = btV;
        this.cmG = cmG;
        this.cmH = cmH;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        h.a(this, parcel);
    }
}
