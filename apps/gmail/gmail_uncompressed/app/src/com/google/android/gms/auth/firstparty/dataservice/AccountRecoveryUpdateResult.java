package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class AccountRecoveryUpdateResult implements SafeParcelable
{
    public static final t CREATOR;
    public final String byd;
    final int version;
    
    static {
        CREATOR = new t();
    }
    
    AccountRecoveryUpdateResult(final int version, final String byd) {
        this.version = version;
        this.byd = byd;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        t.a(this, parcel);
    }
}
