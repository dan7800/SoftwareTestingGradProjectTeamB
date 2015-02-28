package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class VerifyPinResponse implements SafeParcelable
{
    public static final k CREATOR;
    public final String bzp;
    public final int status;
    final int version;
    
    static {
        CREATOR = new k();
    }
    
    VerifyPinResponse(final int version, final int status, final String bzp) {
        this.version = version;
        this.status = status;
        this.bzp = bzp;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        k.a(this, parcel);
    }
}
