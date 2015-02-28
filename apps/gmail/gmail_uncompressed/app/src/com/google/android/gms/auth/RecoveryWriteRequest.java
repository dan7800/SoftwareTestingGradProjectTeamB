package com.google.android.gms.auth;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class RecoveryWriteRequest implements SafeParcelable
{
    public static final i CREATOR;
    final int btV;
    public boolean bxC;
    public String bxw;
    public String bxx;
    public String bxy;
    public String mAccount;
    
    static {
        CREATOR = new i();
    }
    
    public RecoveryWriteRequest() {
        this.btV = 1;
    }
    
    RecoveryWriteRequest(final int btV, final String mAccount, final String bxw, final String bxx, final String bxy, final boolean bxC) {
        this.btV = btV;
        this.mAccount = mAccount;
        this.bxw = bxw;
        this.bxx = bxx;
        this.bxy = bxy;
        this.bxC = bxC;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        i.a(this, parcel);
    }
}
