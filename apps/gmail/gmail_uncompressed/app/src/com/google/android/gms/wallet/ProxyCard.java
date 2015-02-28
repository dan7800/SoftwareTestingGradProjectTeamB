package com.google.android.gms.wallet;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class ProxyCard implements SafeParcelable
{
    public static final Parcelable$Creator<ProxyCard> CREATOR;
    private final int btV;
    String clU;
    String clV;
    int clW;
    int clX;
    
    static {
        CREATOR = (Parcelable$Creator)new o();
    }
    
    ProxyCard(final int btV, final String clU, final String clV, final int clW, final int clX) {
        this.btV = btV;
        this.clU = clU;
        this.clV = clV;
        this.clW = clW;
        this.clX = clX;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        o.a(this, parcel);
    }
}
