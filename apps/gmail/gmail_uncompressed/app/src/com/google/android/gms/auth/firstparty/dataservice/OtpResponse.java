package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class OtpResponse implements SafeParcelable
{
    public static final K CREATOR;
    final int bxf;
    public final String byL;
    
    static {
        CREATOR = new K();
    }
    
    OtpResponse(final int bxf, final String byL) {
        this.bxf = bxf;
        this.byL = byL;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        K.a(this, parcel);
    }
}
