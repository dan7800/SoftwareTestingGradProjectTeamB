package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class bo implements SafeParcelable
{
    public static final e CREATOR;
    public final String Tt;
    public final int bRD;
    public final int bRE;
    public final int bRF;
    public final int bRG;
    public final int bRH;
    public final int bRI;
    public final int bRJ;
    public final String bRK;
    public final int bRL;
    public final String bRM;
    public final int bRN;
    public final int bRO;
    public final int backgroundColor;
    public final int versionCode;
    
    static {
        CREATOR = new e();
    }
    
    bo(final int versionCode, final int brd, final int backgroundColor, final int bre, final int brf, final int brg, final int brh, final int bri, final int brj, final String brk, final int brl, final String brm, final int brn, final int bro, final String tt) {
        this.versionCode = versionCode;
        this.bRD = brd;
        this.backgroundColor = backgroundColor;
        this.bRE = bre;
        this.bRF = brf;
        this.bRG = brg;
        this.bRH = brh;
        this.bRI = bri;
        this.bRJ = brj;
        this.bRK = brk;
        this.bRL = brl;
        this.bRM = brm;
        this.bRN = brn;
        this.bRO = bro;
        this.Tt = tt;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        e.a(this, parcel);
    }
}
