package com.google.android.gms.search.corpora;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import android.os.*;

public class ClearCorpusCall$Response implements t, SafeParcelable
{
    public static final b CREATOR;
    final int btV;
    public Status buu;
    
    static {
        CREATOR = new b();
    }
    
    public ClearCorpusCall$Response() {
        this.btV = 1;
    }
    
    ClearCorpusCall$Response(final int btV, final Status buu) {
        this.btV = btV;
        this.buu = buu;
    }
    
    @Override
    public final Status Jk() {
        return this.buu;
    }
    
    public int describeContents() {
        final b creator = ClearCorpusCall$Response.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final b creator = ClearCorpusCall$Response.CREATOR;
        b.a(this, parcel, n);
    }
}
