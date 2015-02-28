package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class VerifyPinRequest implements SafeParcelable
{
    public static final j CREATOR;
    public final String acw;
    public final String pin;
    final int version;
    
    static {
        CREATOR = new j();
    }
    
    VerifyPinRequest(final int version, final String acw, final String pin) {
        this.version = version;
        this.acw = acw;
        this.pin = pin;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.a(this, parcel);
    }
}
