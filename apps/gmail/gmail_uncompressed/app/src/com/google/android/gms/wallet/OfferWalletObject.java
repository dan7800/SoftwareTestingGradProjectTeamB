package com.google.android.gms.wallet;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.wallet.wobs.*;
import android.os.*;

public final class OfferWalletObject implements SafeParcelable
{
    public static final Parcelable$Creator<OfferWalletObject> CREATOR;
    private final int btV;
    String clS;
    CommonWalletObject clT;
    String clp;
    
    static {
        CREATOR = (Parcelable$Creator)new n();
    }
    
    OfferWalletObject() {
        this.btV = 3;
    }
    
    OfferWalletObject(final int btV, final String s, final String clS, final CommonWalletObject clT) {
        this.btV = btV;
        this.clS = clS;
        if (btV < 3) {
            this.clT = CommonWalletObject.VI().gD(s).VJ();
            return;
        }
        this.clT = clT;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        n.a(this, parcel, n);
    }
}
