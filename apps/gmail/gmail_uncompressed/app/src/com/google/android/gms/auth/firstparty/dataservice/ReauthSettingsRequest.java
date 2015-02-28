package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class ReauthSettingsRequest implements SafeParcelable
{
    public static final e CREATOR;
    public final String acw;
    public final boolean byS;
    final int version;
    
    static {
        CREATOR = new e();
    }
    
    ReauthSettingsRequest(final int version, final String acw, final boolean byS) {
        this.version = version;
        this.acw = acw;
        this.byS = byS;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.a(this, parcel);
    }
}
