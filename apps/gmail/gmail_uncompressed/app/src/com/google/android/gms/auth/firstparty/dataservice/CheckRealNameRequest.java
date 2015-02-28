package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.auth.firstparty.shared.*;
import android.os.*;

public class CheckRealNameRequest implements SafeParcelable
{
    public static final x CREATOR;
    AppDescription bxQ;
    String byo;
    String byp;
    final int version;
    
    static {
        CREATOR = new x();
    }
    
    public CheckRealNameRequest() {
        this.version = 1;
    }
    
    CheckRealNameRequest(final int version, final AppDescription bxQ, final String byo, final String byp) {
        this.version = version;
        this.bxQ = bxQ;
        this.byo = byo;
        this.byp = byp;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        x.a(this, parcel, n);
    }
}
