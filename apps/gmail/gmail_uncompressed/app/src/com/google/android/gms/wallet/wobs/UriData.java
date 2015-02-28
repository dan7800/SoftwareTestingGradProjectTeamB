package com.google.android.gms.wallet.wobs;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class UriData implements SafeParcelable
{
    public static final Parcelable$Creator<UriData> CREATOR;
    private final int btV;
    String cmI;
    String description;
    
    static {
        CREATOR = (Parcelable$Creator)new i();
    }
    
    UriData() {
        this.btV = 1;
    }
    
    UriData(final int btV, final String cmI, final String description) {
        this.btV = btV;
        this.cmI = cmI;
        this.description = description;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        i.a(this, parcel);
    }
}
