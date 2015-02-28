package com.google.android.gms.wallet.wobs;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class TextModuleData implements SafeParcelable
{
    public static final Parcelable$Creator<TextModuleData> CREATOR;
    String bSx;
    private final int btV;
    String cmF;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    TextModuleData() {
        this.btV = 1;
    }
    
    TextModuleData(final int btV, final String cmF, final String bSx) {
        this.btV = btV;
        this.cmF = cmF;
        this.bSx = bSx;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        g.a(this, parcel);
    }
}
