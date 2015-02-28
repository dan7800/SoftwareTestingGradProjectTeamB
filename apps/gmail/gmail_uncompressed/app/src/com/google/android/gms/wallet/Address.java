package com.google.android.gms.wallet;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

@Deprecated
public final class Address implements SafeParcelable
{
    public static final Parcelable$Creator<Address> CREATOR;
    String bRa;
    String bRb;
    String bRc;
    String bRd;
    String bRi;
    boolean bRk;
    String bRl;
    private final int btV;
    String bya;
    String ckJ;
    String ckK;
    String name;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    Address() {
        this.btV = 1;
    }
    
    Address(final int btV, final String name, final String bRb, final String bRc, final String bRd, final String bRa, final String ckJ, final String ckK, final String bRi, final String bya, final boolean bRk, final String bRl) {
        this.btV = btV;
        this.name = name;
        this.bRb = bRb;
        this.bRc = bRc;
        this.bRd = bRd;
        this.bRa = bRa;
        this.ckJ = ckJ;
        this.ckK = ckK;
        this.bRi = bRi;
        this.bya = bya;
        this.bRk = bRk;
        this.bRl = bRl;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
