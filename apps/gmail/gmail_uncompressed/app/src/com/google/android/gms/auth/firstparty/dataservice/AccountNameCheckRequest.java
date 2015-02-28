package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.auth.firstparty.shared.*;
import android.os.*;

public class AccountNameCheckRequest implements SafeParcelable
{
    public static final c CREATOR;
    String bxN;
    String bxO;
    String bxP;
    AppDescription bxQ;
    CaptchaSolution bxR;
    final int version;
    
    static {
        CREATOR = new c();
    }
    
    public AccountNameCheckRequest() {
        this.version = 1;
    }
    
    AccountNameCheckRequest(final int version, final String bxN, final String bxO, final String bxP, final AppDescription bxQ, final CaptchaSolution bxR) {
        this.version = version;
        this.bxN = bxN;
        this.bxO = bxO;
        this.bxP = bxP;
        this.bxQ = bxQ;
        this.bxR = bxR;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel, n);
    }
}
