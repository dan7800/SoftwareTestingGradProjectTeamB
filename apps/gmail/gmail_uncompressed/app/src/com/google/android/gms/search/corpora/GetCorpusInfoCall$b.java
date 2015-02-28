package com.google.android.gms.search.corpora;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class GetCorpusInfoCall$b implements SafeParcelable
{
    public static final c CREATOR;
    final int btV;
    public String btW;
    public String packageName;
    
    static {
        CREATOR = new c();
    }
    
    public GetCorpusInfoCall$b() {
        this.btV = 1;
    }
    
    GetCorpusInfoCall$b(final int btV, final String packageName, final String btW) {
        this.btV = btV;
        this.packageName = packageName;
        this.btW = btW;
    }
    
    public int describeContents() {
        final c creator = GetCorpusInfoCall$b.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final c creator = GetCorpusInfoCall$b.CREATOR;
        c.a(this, parcel);
    }
}
