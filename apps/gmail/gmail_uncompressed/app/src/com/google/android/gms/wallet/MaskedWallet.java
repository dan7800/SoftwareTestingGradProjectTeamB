package com.google.android.gms.wallet;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.identity.intents.model.*;
import android.os.*;

public final class MaskedWallet implements SafeParcelable
{
    public static final Parcelable$Creator<MaskedWallet> CREATOR;
    private final int btV;
    String ckQ;
    String ckR;
    String ckT;
    Address ckU;
    Address ckV;
    String[] ckW;
    UserAddress ckX;
    UserAddress ckY;
    InstrumentInfo[] ckZ;
    LoyaltyWalletObject[] clJ;
    OfferWalletObject[] clK;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    private MaskedWallet() {
        this.btV = 2;
    }
    
    MaskedWallet(final int btV, final String ckQ, final String ckR, final String[] ckW, final String ckT, final Address ckU, final Address ckV, final LoyaltyWalletObject[] clJ, final OfferWalletObject[] clK, final UserAddress ckX, final UserAddress ckY, final InstrumentInfo[] ckZ) {
        this.btV = btV;
        this.ckQ = ckQ;
        this.ckR = ckR;
        this.ckW = ckW;
        this.ckT = ckT;
        this.ckU = ckU;
        this.ckV = ckV;
        this.clJ = clJ;
        this.clK = clK;
        this.ckX = ckX;
        this.ckY = ckY;
        this.ckZ = ckZ;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        k.a(this, parcel, n);
    }
}
