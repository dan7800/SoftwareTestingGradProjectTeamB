package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.auth.firstparty.shared.*;
import android.os.*;

public class UpdateCredentialsRequest implements SafeParcelable
{
    public static final i CREATOR;
    CaptchaSolution bxR;
    AccountCredentials byn;
    final int version;
    
    static {
        CREATOR = new i();
    }
    
    public UpdateCredentialsRequest() {
        this.version = 1;
    }
    
    UpdateCredentialsRequest(final int version, final AccountCredentials byn, final CaptchaSolution bxR) {
        this.version = version;
        this.byn = byn;
        this.bxR = bxR;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        i.a(this, parcel, n);
    }
}
