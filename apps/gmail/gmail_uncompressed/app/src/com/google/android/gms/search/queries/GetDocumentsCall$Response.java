package com.google.android.gms.search.queries;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.appdatasearch.*;
import android.os.*;

public class GetDocumentsCall$Response implements t, SafeParcelable
{
    public static final b CREATOR;
    final int btV;
    public Status buu;
    public DocumentResults cks;
    
    static {
        CREATOR = new b();
    }
    
    public GetDocumentsCall$Response() {
        this.btV = 1;
    }
    
    GetDocumentsCall$Response(final int btV, final Status buu, final DocumentResults cks) {
        this.btV = btV;
        this.buu = buu;
        this.cks = cks;
    }
    
    @Override
    public final Status Jk() {
        return this.buu;
    }
    
    public int describeContents() {
        final b creator = GetDocumentsCall$Response.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final b creator = GetDocumentsCall$Response.CREATOR;
        b.a(this, parcel, n);
    }
}
