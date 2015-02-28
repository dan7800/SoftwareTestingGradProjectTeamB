package com.google.android.gms.auth;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class RecoveryWriteResponse implements SafeParcelable
{
    public static final j CREATOR;
    final int btV;
    public String bxD;
    
    static {
        CREATOR = new j();
    }
    
    public RecoveryWriteResponse() {
        this.btV = 1;
    }
    
    RecoveryWriteResponse(final int btV, final String bxD) {
        this.btV = btV;
        this.bxD = bxD;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.a(this, parcel);
    }
}
