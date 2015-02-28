package com.google.android.gms.auth.firstparty.shared;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class AccountCredentials implements SafeParcelable
{
    public static final a CREATOR;
    String bxh;
    boolean bzH;
    String bzI;
    String bzJ;
    String bzK;
    String bzL;
    String bzM;
    final int version;
    
    static {
        CREATOR = new a();
    }
    
    public AccountCredentials() {
        this.version = 1;
    }
    
    AccountCredentials(final int version, final boolean bzH, final String bxh, final String bzI, final String bzJ, final String bzK, final String bzL, final String bzM) {
        this.version = version;
        this.bzH = bzH;
        this.bxh = bxh;
        this.bzI = bzI;
        this.bzJ = bzJ;
        this.bzK = bzK;
        this.bzL = bzL;
        this.bzM = bzM;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
