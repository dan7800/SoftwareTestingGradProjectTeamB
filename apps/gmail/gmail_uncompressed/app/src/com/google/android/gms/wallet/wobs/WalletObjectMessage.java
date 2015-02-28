package com.google.android.gms.wallet.wobs;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class WalletObjectMessage implements SafeParcelable
{
    public static final Parcelable$Creator<WalletObjectMessage> CREATOR;
    String bSx;
    private final int btV;
    String cmF;
    TimeInterval cmJ;
    UriData cmK;
    UriData cmL;
    
    static {
        CREATOR = (Parcelable$Creator)new j();
    }
    
    WalletObjectMessage() {
        this.btV = 1;
    }
    
    WalletObjectMessage(final int btV, final String cmF, final String bSx, final TimeInterval cmJ, final UriData cmK, final UriData cmL) {
        this.btV = btV;
        this.cmF = cmF;
        this.bSx = bSx;
        this.cmJ = cmJ;
        this.cmK = cmK;
        this.cmL = cmL;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        j.a(this, parcel, n);
    }
}
