package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.auth.firstparty.shared.*;
import android.os.*;

public class AccountSignInRequest implements SafeParcelable
{
    public static final w CREATOR;
    AppDescription bxQ;
    CaptchaSolution bxR;
    boolean byl;
    boolean bym;
    AccountCredentials byn;
    final int version;
    
    static {
        CREATOR = new w();
    }
    
    public AccountSignInRequest() {
        this.version = 1;
    }
    
    AccountSignInRequest(final int version, final AppDescription bxQ, final boolean byl, final boolean bym, final CaptchaSolution bxR, final AccountCredentials byn) {
        this.version = version;
        this.bxQ = bxQ;
        this.byl = byl;
        this.bym = bym;
        this.bxR = bxR;
        this.byn = byn;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        w.a(this, parcel, n);
    }
}
