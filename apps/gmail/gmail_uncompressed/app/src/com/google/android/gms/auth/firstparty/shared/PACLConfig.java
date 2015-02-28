package com.google.android.gms.auth.firstparty.shared;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class PACLConfig implements SafeParcelable
{
    public static final h CREATOR;
    String bAg;
    String bAh;
    final int version;
    
    static {
        CREATOR = new h();
    }
    
    PACLConfig(final int version, final String bAg, final String bAh) {
        this.version = version;
        this.bAg = bAg;
        this.bAh = bAh;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.a(this, parcel);
    }
}
