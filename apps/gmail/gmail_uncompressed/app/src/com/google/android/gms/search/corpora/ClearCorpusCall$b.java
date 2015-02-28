package com.google.android.gms.search.corpora;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class ClearCorpusCall$b implements SafeParcelable
{
    public static final a CREATOR;
    final int btV;
    public String btW;
    public String packageName;
    
    static {
        CREATOR = new a();
    }
    
    public ClearCorpusCall$b() {
        this.btV = 1;
    }
    
    ClearCorpusCall$b(final int btV, final String packageName, final String btW) {
        this.btV = btV;
        this.packageName = packageName;
        this.btW = btW;
    }
    
    public int describeContents() {
        final a creator = ClearCorpusCall$b.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final a creator = ClearCorpusCall$b.CREATOR;
        a.a(this, parcel);
    }
}
