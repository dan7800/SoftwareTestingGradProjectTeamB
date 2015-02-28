package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class AccountRecoveryGuidance implements SafeParcelable
{
    public static final q CREATOR;
    public final String acw;
    public final boolean bxt;
    public final boolean byh;
    public final boolean byi;
    final int version;
    
    static {
        CREATOR = new q();
    }
    
    AccountRecoveryGuidance(final int version, final String acw, final boolean bxt, final boolean byh, final boolean byi) {
        this.version = version;
        this.acw = acw;
        this.bxt = bxt;
        this.byh = byh;
        this.byi = byi;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        q.a(this, parcel);
    }
}
