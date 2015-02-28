package com.google.android.gms.drive.query.internal;

import com.google.android.gms.drive.metadata.internal.*;
import android.os.*;

public class ComparisonFilter<T> extends AbstractFilter
{
    public static final a CREATOR;
    final Operator bIr;
    final MetadataBundle bIs;
    final com.google.android.gms.drive.metadata.a<T> bIt;
    final int btV;
    
    static {
        CREATOR = new a();
    }
    
    ComparisonFilter(final int btV, final Operator bIr, final MetadataBundle bIs) {
        this.btV = btV;
        this.bIr = bIr;
        this.bIs = bIs;
        this.bIt = (com.google.android.gms.drive.metadata.a<T>)e.b(bIs);
    }
    
    @Override
    public final <F> F a(final f<F> f) {
        return f.a(this.bIr, this.bIt, (T)this.bIs.a((com.google.android.gms.drive.metadata.a<T>)this.bIt));
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel, n);
    }
}
