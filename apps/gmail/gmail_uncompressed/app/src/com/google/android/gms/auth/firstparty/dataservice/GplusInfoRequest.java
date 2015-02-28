package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.auth.firstparty.shared.*;
import android.os.*;

public class GplusInfoRequest implements SafeParcelable
{
    public static final E CREATOR;
    String acw;
    CaptchaSolution bxR;
    final int version;
    
    static {
        CREATOR = new E();
    }
    
    public GplusInfoRequest() {
        this.version = 1;
    }
    
    GplusInfoRequest(final int version, final String acw, final CaptchaSolution bxR) {
        this.version = version;
        this.acw = acw;
        this.bxR = bxR;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        E.a(this, parcel, n);
    }
}
