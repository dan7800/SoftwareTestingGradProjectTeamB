package com.google.android.gms.usagereporting;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class UsageReportingOptInOptions implements SafeParcelable
{
    public static final a CREATOR;
    final int btV;
    int ckI;
    
    static {
        CREATOR = new a();
    }
    
    UsageReportingOptInOptions(final int btV, final int ckI) {
        this.btV = btV;
        this.ckI = ckI;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
