package com.google.android.gms.search.queries;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.appdatasearch.*;
import android.os.*;

public class QueryCall$b implements SafeParcelable
{
    public static final g CREATOR;
    public String Tt;
    public int bZQ;
    final int btV;
    public String[] ckA;
    public QuerySpecification cku;
    public String packageName;
    public int start;
    
    static {
        CREATOR = new g();
    }
    
    public QueryCall$b() {
        this.btV = 1;
    }
    
    QueryCall$b(final int btV, final String tt, final String packageName, final String[] ckA, final int start, final int bzq, final QuerySpecification cku) {
        this.btV = btV;
        this.Tt = tt;
        this.packageName = packageName;
        this.ckA = ckA;
        this.start = start;
        this.bZQ = bzq;
        this.cku = cku;
    }
    
    public int describeContents() {
        final g creator = QueryCall$b.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final g creator = QueryCall$b.CREATOR;
        g.a(this, parcel, n);
    }
}
