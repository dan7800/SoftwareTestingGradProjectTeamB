package com.google.android.gms.wallet;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.identity.intents.model.*;
import android.os.*;

public final class FullWallet implements SafeParcelable
{
    public static final Parcelable$Creator<FullWallet> CREATOR;
    private final int btV;
    String ckQ;
    String ckR;
    ProxyCard ckS;
    String ckT;
    Address ckU;
    Address ckV;
    String[] ckW;
    UserAddress ckX;
    UserAddress ckY;
    InstrumentInfo[] ckZ;
    
    static {
        CREATOR = (Parcelable$Creator)new e();
    }
    
    private FullWallet() {
        this.btV = 1;
    }
    
    FullWallet(final int btV, final String ckQ, final String ckR, final ProxyCard ckS, final String ckT, final Address ckU, final Address ckV, final String[] ckW, final UserAddress ckX, final UserAddress ckY, final InstrumentInfo[] ckZ) {
        this.btV = btV;
        this.ckQ = ckQ;
        this.ckR = ckR;
        this.ckS = ckS;
        this.ckT = ckT;
        this.ckU = ckU;
        this.ckV = ckV;
        this.ckW = ckW;
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
        e.a(this, parcel, n);
    }
}
