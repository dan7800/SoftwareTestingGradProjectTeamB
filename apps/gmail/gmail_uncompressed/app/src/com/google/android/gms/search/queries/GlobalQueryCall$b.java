package com.google.android.gms.search.queries;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.appdatasearch.*;
import android.os.*;

public class GlobalQueryCall$b implements SafeParcelable
{
    public static final e CREATOR;
    public String Tt;
    public int bZQ;
    final int btV;
    public GlobalSearchQuerySpecification ckz;
    public int start;
    
    static {
        CREATOR = new e();
    }
    
    public GlobalQueryCall$b() {
        this.btV = 1;
    }
    
    GlobalQueryCall$b(final int btV, final String tt, final int start, final int bzq, final GlobalSearchQuerySpecification ckz) {
        this.btV = btV;
        this.Tt = tt;
        this.start = start;
        this.bZQ = bzq;
        this.ckz = ckz;
    }
    
    public int describeContents() {
        final e creator = GlobalQueryCall$b.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final e creator = GlobalQueryCall$b.CREATOR;
        e.a(this, parcel, n);
    }
}
