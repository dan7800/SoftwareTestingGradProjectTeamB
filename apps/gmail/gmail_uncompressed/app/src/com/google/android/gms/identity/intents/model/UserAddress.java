package com.google.android.gms.identity.intents.model;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class UserAddress implements SafeParcelable
{
    public static final Parcelable$Creator<UserAddress> CREATOR;
    String bRa;
    String bRb;
    String bRc;
    String bRd;
    String bRe;
    String bRf;
    String bRg;
    String bRh;
    String bRi;
    String bRj;
    boolean bRk;
    String bRl;
    String bRm;
    private final int btV;
    String bya;
    String name;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    UserAddress() {
        this.btV = 1;
    }
    
    UserAddress(final int btV, final String name, final String bRb, final String bRc, final String bRd, final String bRe, final String bRf, final String bRg, final String bRh, final String bRa, final String bRi, final String bRj, final String bya, final boolean bRk, final String bRl, final String bRm) {
        this.btV = btV;
        this.name = name;
        this.bRb = bRb;
        this.bRc = bRc;
        this.bRd = bRd;
        this.bRe = bRe;
        this.bRf = bRf;
        this.bRg = bRg;
        this.bRh = bRh;
        this.bRa = bRa;
        this.bRi = bRi;
        this.bRj = bRj;
        this.bya = bya;
        this.bRk = bRk;
        this.bRl = bRl;
        this.bRm = bRm;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel);
    }
}
