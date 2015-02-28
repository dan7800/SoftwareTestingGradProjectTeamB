package com.google.android.gms.auth.firstparty.shared;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class FACLData implements SafeParcelable
{
    public static final f CREATOR;
    FACLConfig bAa;
    String bAb;
    boolean bAc;
    String bAd;
    final int version;
    
    static {
        CREATOR = new f();
    }
    
    FACLData(final int version, final FACLConfig bAa, final String bAb, final boolean bAc, final String bAd) {
        this.version = version;
        this.bAa = bAa;
        this.bAb = bAb;
        this.bAc = bAc;
        this.bAd = bAd;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.a(this, parcel, n);
    }
}
