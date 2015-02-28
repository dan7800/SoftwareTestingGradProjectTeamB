package com.google.android.gms.search.global;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class GetGlobalSearchSourcesCall$Request implements SafeParcelable
{
    public static final e CREATOR;
    final int btV;
    public boolean ckn;
    
    static {
        CREATOR = new e();
    }
    
    public GetGlobalSearchSourcesCall$Request() {
        this.btV = 1;
    }
    
    GetGlobalSearchSourcesCall$Request(final int btV, final boolean ckn) {
        this.btV = btV;
        this.ckn = ckn;
    }
    
    public int describeContents() {
        final e creator = GetGlobalSearchSourcesCall$Request.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final e creator = GetGlobalSearchSourcesCall$Request.CREATOR;
        e.a(this, parcel);
    }
}
