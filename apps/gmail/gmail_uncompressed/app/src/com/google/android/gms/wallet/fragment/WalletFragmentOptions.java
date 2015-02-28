package com.google.android.gms.wallet.fragment;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class WalletFragmentOptions implements SafeParcelable
{
    public static final Parcelable$Creator<WalletFragmentOptions> CREATOR;
    private int ae;
    private int bGj;
    final int btV;
    private int cme;
    private WalletFragmentStyle cmf;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    private WalletFragmentOptions() {
        this.btV = 1;
    }
    
    WalletFragmentOptions(final int btV, final int cme, final int ae, final WalletFragmentStyle cmf, final int bGj) {
        this.btV = btV;
        this.cme = cme;
        this.ae = ae;
        this.cmf = cmf;
        this.bGj = bGj;
    }
    
    public final int VG() {
        return this.cme;
    }
    
    public final WalletFragmentStyle VH() {
        return this.cmf;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final int getMode() {
        return this.bGj;
    }
    
    public final int getTheme() {
        return this.ae;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel, n);
    }
}
