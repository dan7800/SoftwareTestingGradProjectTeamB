package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class PasswordSettings implements SafeParcelable
{
    public static final N CREATOR;
    public final String byO;
    final int version;
    
    static {
        CREATOR = new N();
    }
    
    PasswordSettings(final int version, final String byO) {
        this.version = version;
        this.byO = byO;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        N.a(this, parcel);
    }
}
