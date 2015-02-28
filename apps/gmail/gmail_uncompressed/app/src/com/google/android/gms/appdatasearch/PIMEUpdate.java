package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.accounts.*;
import android.os.*;

public class PIMEUpdate implements SafeParcelable
{
    public static final N CREATOR;
    public final Account account;
    final int btV;
    final byte[] buQ;
    final byte[] buR;
    public final int buS;
    public final String buT;
    public final String buU;
    public final boolean buV;
    final Bundle buW;
    public final long buX;
    public final long buY;
    
    static {
        CREATOR = new N();
    }
    
    PIMEUpdate(final int btV, final byte[] buQ, final byte[] buR, final int buS, final String buT, final String buU, final boolean buV, final Bundle buW, final long buX, final long buY, final Account account) {
        this.btV = btV;
        this.buQ = buQ;
        this.buR = buR;
        this.buS = buS;
        this.buT = buT;
        this.buU = buU;
        this.buV = buV;
        this.buW = buW;
        this.buX = buX;
        this.buY = buY;
        this.account = account;
    }
    
    public int describeContents() {
        final N creator = PIMEUpdate.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final N creator = PIMEUpdate.CREATOR;
        N.a(this, parcel, n);
    }
}
