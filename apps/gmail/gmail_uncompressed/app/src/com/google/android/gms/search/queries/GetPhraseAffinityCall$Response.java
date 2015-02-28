package com.google.android.gms.search.queries;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.appdatasearch.*;
import android.os.*;

public class GetPhraseAffinityCall$Response implements t, SafeParcelable
{
    public static final d CREATOR;
    final int btV;
    public Status buu;
    public PhraseAffinityResponse ckv;
    
    static {
        CREATOR = new d();
    }
    
    public GetPhraseAffinityCall$Response() {
        this.btV = 1;
    }
    
    GetPhraseAffinityCall$Response(final int btV, final Status buu, final PhraseAffinityResponse ckv) {
        this.btV = btV;
        this.buu = buu;
        this.ckv = ckv;
    }
    
    @Override
    public final Status Jk() {
        return this.buu;
    }
    
    public int describeContents() {
        final d creator = GetPhraseAffinityCall$Response.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final d creator = GetPhraseAffinityCall$Response.CREATOR;
        d.a(this, parcel, n);
    }
}
