package com.google.android.gms.search.corpora;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.appdatasearch.*;
import android.os.*;

public class GetCorpusInfoCall$Response implements t, SafeParcelable
{
    public static final d CREATOR;
    final int btV;
    public Status buu;
    public RegisterCorpusInfo ckg;
    
    static {
        CREATOR = new d();
    }
    
    public GetCorpusInfoCall$Response() {
        this.btV = 1;
    }
    
    GetCorpusInfoCall$Response(final int btV, final Status buu, final RegisterCorpusInfo ckg) {
        this.btV = btV;
        this.buu = buu;
        this.ckg = ckg;
    }
    
    @Override
    public final Status Jk() {
        return this.buu;
    }
    
    public int describeContents() {
        final d creator = GetCorpusInfoCall$Response.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final d creator = GetCorpusInfoCall$Response.CREATOR;
        d.a(this, parcel, n);
    }
}
