package com.google.android.gms.wallet;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class FullWalletRequest implements SafeParcelable
{
    public static final Parcelable$Creator<FullWalletRequest> CREATOR;
    private final int btV;
    String ckQ;
    String ckR;
    Cart cla;
    
    static {
        CREATOR = (Parcelable$Creator)new f();
    }
    
    FullWalletRequest() {
        this.btV = 1;
    }
    
    FullWalletRequest(final int btV, final String ckQ, final String ckR, final Cart cla) {
        this.btV = btV;
        this.ckQ = ckQ;
        this.ckR = ckR;
        this.cla = cla;
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
