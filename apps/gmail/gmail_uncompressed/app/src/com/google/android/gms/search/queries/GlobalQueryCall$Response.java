package com.google.android.gms.search.queries;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.appdatasearch.*;
import android.os.*;

public class GlobalQueryCall$Response implements t, SafeParcelable
{
    public static final f CREATOR;
    final int btV;
    public Status buu;
    public SearchResults cky;
    
    static {
        CREATOR = new f();
    }
    
    public GlobalQueryCall$Response() {
        this.btV = 1;
    }
    
    GlobalQueryCall$Response(final int btV, final Status buu, final SearchResults cky) {
        this.btV = btV;
        this.buu = buu;
        this.cky = cky;
    }
    
    @Override
    public final Status Jk() {
        return this.buu;
    }
    
    public int describeContents() {
        final f creator = GlobalQueryCall$Response.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final f creator = GlobalQueryCall$Response.CREATOR;
        f.a(this, parcel, n);
    }
}
