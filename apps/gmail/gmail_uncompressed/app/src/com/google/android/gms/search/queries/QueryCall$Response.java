package com.google.android.gms.search.queries;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.appdatasearch.*;
import android.os.*;

public class QueryCall$Response implements t, SafeParcelable
{
    public static final h CREATOR;
    final int btV;
    public Status buu;
    public SearchResults cky;
    
    static {
        CREATOR = new h();
    }
    
    public QueryCall$Response() {
        this.btV = 1;
    }
    
    QueryCall$Response(final int btV, final Status buu, final SearchResults cky) {
        this.btV = btV;
        this.buu = buu;
        this.cky = cky;
    }
    
    @Override
    public final Status Jk() {
        return this.buu;
    }
    
    public int describeContents() {
        final h creator = QueryCall$Response.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final h creator = QueryCall$Response.CREATOR;
        h.a(this, parcel, n);
    }
}
