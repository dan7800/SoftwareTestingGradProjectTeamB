package com.google.android.gms.search.corpora;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class GetCorpusStatusCall$b implements SafeParcelable
{
    public static final e CREATOR;
    final int btV;
    public String btW;
    public String packageName;
    
    static {
        CREATOR = new e();
    }
    
    public GetCorpusStatusCall$b() {
        this.btV = 1;
    }
    
    GetCorpusStatusCall$b(final int btV, final String packageName, final String btW) {
        this.btV = btV;
        this.packageName = packageName;
        this.btW = btW;
    }
    
    public int describeContents() {
        final e creator = GetCorpusStatusCall$b.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final e creator = GetCorpusStatusCall$b.CREATOR;
        e.a(this, parcel);
    }
}
