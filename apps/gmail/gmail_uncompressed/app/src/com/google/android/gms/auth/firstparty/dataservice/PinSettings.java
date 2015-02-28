package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class PinSettings implements SafeParcelable
{
    public static final d CREATOR;
    public final String byO;
    public final String byQ;
    public final String byR;
    public final int length;
    final int version;
    
    static {
        CREATOR = new d();
    }
    
    PinSettings(final int version, final String byO, final String byQ, final String byR, final int length) {
        this.version = version;
        this.byO = byO;
        this.byQ = byQ;
        this.byR = byR;
        this.length = length;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.a(this, parcel);
    }
}
