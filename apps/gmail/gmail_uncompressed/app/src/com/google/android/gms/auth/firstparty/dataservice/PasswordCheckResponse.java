package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class PasswordCheckResponse implements SafeParcelable
{
    public static final M CREATOR;
    String bxU;
    String byO;
    String byP;
    final int version;
    
    static {
        CREATOR = new M();
    }
    
    PasswordCheckResponse(final int version, final String byO, final String byP, final String bxU) {
        this.version = version;
        this.byO = byO;
        this.byP = byP;
        this.bxU = bxU;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        M.a(this, parcel);
    }
}
