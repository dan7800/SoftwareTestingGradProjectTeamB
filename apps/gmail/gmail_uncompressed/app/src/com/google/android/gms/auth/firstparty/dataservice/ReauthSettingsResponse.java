package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class ReauthSettingsResponse implements SafeParcelable
{
    public static final f CREATOR;
    public final PasswordSettings byT;
    public final PinSettings byU;
    public final int status;
    final int version;
    
    static {
        CREATOR = new f();
    }
    
    ReauthSettingsResponse(final int version, final int status, final PasswordSettings byT, final PinSettings byU) {
        this.version = version;
        this.status = status;
        this.byT = byT;
        this.byU = byU;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.a(this, parcel, n);
    }
}
