package com.google.android.gms.wallet.shared;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class BrokerAndRelationships implements SafeParcelable
{
    public static final Parcelable$Creator<BrokerAndRelationships> CREATOR;
    private final int btV;
    String cmk;
    String[] cml;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    BrokerAndRelationships() {
        this(1, null, null);
    }
    
    BrokerAndRelationships(final int btV, final String cmk, String[] cml) {
        this.btV = btV;
        this.cmk = cmk;
        if (cml == null) {
            cml = new String[0];
        }
        this.cml = cml;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel);
    }
}
