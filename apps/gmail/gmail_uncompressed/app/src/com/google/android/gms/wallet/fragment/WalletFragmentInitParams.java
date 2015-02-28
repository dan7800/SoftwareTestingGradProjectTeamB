package com.google.android.gms.wallet.fragment;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.wallet.*;
import android.os.*;

public final class WalletFragmentInitParams implements SafeParcelable
{
    public static final Parcelable$Creator<WalletFragmentInitParams> CREATOR;
    final int btV;
    private String bxh;
    private MaskedWalletRequest cmb;
    private int cmc;
    private MaskedWallet cmd;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    private WalletFragmentInitParams() {
        this.btV = 1;
        this.cmc = -1;
    }
    
    WalletFragmentInitParams(final int btV, final String bxh, final MaskedWalletRequest cmb, final int cmc, final MaskedWallet cmd) {
        this.btV = btV;
        this.bxh = bxh;
        this.cmb = cmb;
        this.cmc = cmc;
        this.cmd = cmd;
    }
    
    public final String FP() {
        return this.bxh;
    }
    
    public final MaskedWalletRequest VD() {
        return this.cmb;
    }
    
    public final int VE() {
        return this.cmc;
    }
    
    public final MaskedWallet VF() {
        return this.cmd;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel, n);
    }
}
