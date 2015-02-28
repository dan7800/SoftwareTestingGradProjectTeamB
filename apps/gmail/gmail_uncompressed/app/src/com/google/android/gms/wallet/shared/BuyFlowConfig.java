package com.google.android.gms.wallet.shared;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class BuyFlowConfig implements SafeParcelable
{
    public static final Parcelable$Creator<BuyFlowConfig> CREATOR;
    final int btV;
    String cmm;
    ApplicationParameters cmn;
    String cmo;
    String cmp;
    String cmq;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    BuyFlowConfig() {
        this.btV = 2;
    }
    
    BuyFlowConfig(final int btV, final String cmm, final ApplicationParameters cmn, final String cmo, final String cmp, final String cmq) {
        this.btV = btV;
        this.cmm = cmm;
        this.cmn = cmn;
        this.cmo = cmo;
        this.cmp = cmp;
        this.cmq = cmq;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel, n);
    }
}
