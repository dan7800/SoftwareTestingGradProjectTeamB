package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class ClearTokenRequest implements SafeParcelable
{
    public static final z CREATOR;
    String byq;
    final int version;
    
    static {
        CREATOR = new z();
    }
    
    public ClearTokenRequest() {
        this.version = 1;
    }
    
    ClearTokenRequest(final int version, final String byq) {
        this.version = version;
        this.byq = byq;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        z.a(this, parcel);
    }
}
