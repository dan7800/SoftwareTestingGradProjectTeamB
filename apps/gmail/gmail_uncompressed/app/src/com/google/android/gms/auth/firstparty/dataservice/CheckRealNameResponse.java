package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class CheckRealNameResponse implements SafeParcelable
{
    public static final y CREATOR;
    String bxS;
    final int version;
    
    static {
        CREATOR = new y();
    }
    
    CheckRealNameResponse(final int version, final String bxS) {
        this.version = version;
        this.bxS = bxS;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        y.a(this, parcel);
    }
}
