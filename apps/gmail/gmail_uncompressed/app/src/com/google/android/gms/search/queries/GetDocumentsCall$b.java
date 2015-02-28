package com.google.android.gms.search.queries;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.appdatasearch.*;
import android.os.*;

public class GetDocumentsCall$b implements SafeParcelable
{
    public static final a CREATOR;
    final int btV;
    public String btW;
    public String[] ckt;
    public QuerySpecification cku;
    public String packageName;
    
    static {
        CREATOR = new a();
    }
    
    public GetDocumentsCall$b() {
        this.btV = 1;
    }
    
    GetDocumentsCall$b(final int btV, final String packageName, final String btW, final String[] ckt, final QuerySpecification cku) {
        this.btV = btV;
        this.packageName = packageName;
        this.btW = btW;
        this.ckt = ckt;
        this.cku = cku;
    }
    
    public int describeContents() {
        final a creator = GetDocumentsCall$b.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final a creator = GetDocumentsCall$b.CREATOR;
        a.a(this, parcel, n);
    }
}
