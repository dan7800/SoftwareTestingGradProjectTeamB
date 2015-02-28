package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class AccountRemovalRequest implements SafeParcelable
{
    public static final u CREATOR;
    String acw;
    final int version;
    
    static {
        CREATOR = new u();
    }
    
    public AccountRemovalRequest() {
        this.version = 1;
    }
    
    AccountRemovalRequest(final int version, final String acw) {
        this.version = version;
        this.acw = acw;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        u.a(this, parcel);
    }
}
