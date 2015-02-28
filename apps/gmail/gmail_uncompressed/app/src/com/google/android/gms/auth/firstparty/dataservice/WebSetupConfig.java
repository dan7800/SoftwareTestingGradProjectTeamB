package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class WebSetupConfig implements SafeParcelable
{
    public static final l CREATOR;
    public final String bzq;
    final int version;
    
    static {
        CREATOR = new l();
    }
    
    WebSetupConfig(final int version, final String bzq) {
        this.version = version;
        this.bzq = bzq;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        l.a(this, parcel);
    }
}
