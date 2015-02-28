package com.google.android.gms.search.global;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.appdatasearch.*;
import android.os.*;

public class GetGlobalSearchSourcesCall$CorpusInfo implements SafeParcelable
{
    public static final c CREATOR;
    final int btV;
    public String btW;
    public Feature[] buD;
    public boolean ckl;
    
    static {
        CREATOR = new c();
    }
    
    public GetGlobalSearchSourcesCall$CorpusInfo() {
        this.btV = 1;
    }
    
    GetGlobalSearchSourcesCall$CorpusInfo(final int btV, final String btW, final Feature[] buD, final boolean ckl) {
        this.btV = btV;
        this.btW = btW;
        this.buD = buD;
        this.ckl = ckl;
    }
    
    public int describeContents() {
        final c creator = GetGlobalSearchSourcesCall$CorpusInfo.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final c creator = GetGlobalSearchSourcesCall$CorpusInfo.CREATOR;
        c.a(this, parcel, n);
    }
}
