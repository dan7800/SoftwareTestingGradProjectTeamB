package com.google.android.gms.search.global;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import android.os.*;

public class GetGlobalSearchSourcesCall$Response implements t, SafeParcelable
{
    public static final f CREATOR;
    final int btV;
    public Status buu;
    public GetGlobalSearchSourcesCall$GlobalSearchSource[] cko;
    
    static {
        CREATOR = new f();
    }
    
    public GetGlobalSearchSourcesCall$Response() {
        this.btV = 1;
    }
    
    GetGlobalSearchSourcesCall$Response(final int btV, final Status buu, final GetGlobalSearchSourcesCall$GlobalSearchSource[] cko) {
        this.btV = btV;
        this.buu = buu;
        this.cko = cko;
    }
    
    @Override
    public final Status Jk() {
        return this.buu;
    }
    
    public int describeContents() {
        final f creator = GetGlobalSearchSourcesCall$Response.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final f creator = GetGlobalSearchSourcesCall$Response.CREATOR;
        f.a(this, parcel, n);
    }
}
