package com.google.android.gms.search.corpora;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.appdatasearch.*;
import android.os.*;

public class GetCorpusStatusCall$Response implements t, SafeParcelable
{
    public static final f CREATOR;
    final int btV;
    public Status buu;
    public CorpusStatus ckh;
    
    static {
        CREATOR = new f();
    }
    
    public GetCorpusStatusCall$Response() {
        this.btV = 1;
    }
    
    GetCorpusStatusCall$Response(final int btV, final Status buu, final CorpusStatus ckh) {
        this.btV = btV;
        this.buu = buu;
        this.ckh = ckh;
    }
    
    @Override
    public final Status Jk() {
        return this.buu;
    }
    
    public int describeContents() {
        final f creator = GetCorpusStatusCall$Response.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final f creator = GetCorpusStatusCall$Response.CREATOR;
        f.a(this, parcel, n);
    }
}
