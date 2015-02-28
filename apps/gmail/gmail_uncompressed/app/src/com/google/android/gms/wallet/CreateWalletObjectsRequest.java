package com.google.android.gms.wallet;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class CreateWalletObjectsRequest implements SafeParcelable
{
    public static final Parcelable$Creator<CreateWalletObjectsRequest> CREATOR;
    private final int btV;
    LoyaltyWalletObject ckO;
    OfferWalletObject ckP;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    CreateWalletObjectsRequest() {
        this.btV = 2;
    }
    
    CreateWalletObjectsRequest(final int btV, final LoyaltyWalletObject ckO, final OfferWalletObject ckP) {
        this.btV = btV;
        this.ckO = ckO;
        this.ckP = ckP;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        d.a(this, parcel, n);
    }
}
