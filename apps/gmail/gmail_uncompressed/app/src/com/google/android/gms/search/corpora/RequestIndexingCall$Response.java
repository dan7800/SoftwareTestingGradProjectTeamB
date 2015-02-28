package com.google.android.gms.search.corpora;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import android.os.*;

public class RequestIndexingCall$Response implements t, SafeParcelable
{
    public static final h CREATOR;
    final int btV;
    public Status buu;
    public boolean cki;
    
    static {
        CREATOR = new h();
    }
    
    public RequestIndexingCall$Response() {
        this.btV = 1;
    }
    
    RequestIndexingCall$Response(final int btV, final Status buu, final boolean cki) {
        this.btV = btV;
        this.buu = buu;
        this.cki = cki;
    }
    
    @Override
    public final Status Jk() {
        return this.buu;
    }
    
    public int describeContents() {
        final h creator = RequestIndexingCall$Response.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final h creator = RequestIndexingCall$Response.CREATOR;
        h.a(this, parcel, n);
    }
}
