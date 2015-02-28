package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class AccountRemovalResponse implements SafeParcelable
{
    public static final v CREATOR;
    final String bxS;
    final int version;
    
    static {
        CREATOR = new v();
    }
    
    AccountRemovalResponse(final int version, final String bxS) {
        this.version = version;
        this.bxS = bxS;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        v.a(this, parcel);
    }
}
