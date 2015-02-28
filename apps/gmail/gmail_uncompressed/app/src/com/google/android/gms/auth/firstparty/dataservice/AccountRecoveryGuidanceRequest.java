package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class AccountRecoveryGuidanceRequest implements SafeParcelable
{
    public static final r CREATOR;
    public final String acw;
    final int version;
    
    static {
        CREATOR = new r();
    }
    
    AccountRecoveryGuidanceRequest(final int version, final String acw) {
        this.version = version;
        this.acw = acw;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        r.a(this, parcel);
    }
}
