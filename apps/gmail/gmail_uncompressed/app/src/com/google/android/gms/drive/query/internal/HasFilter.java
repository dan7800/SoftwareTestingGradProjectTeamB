package com.google.android.gms.drive.query.internal;

import com.google.android.gms.drive.metadata.internal.*;
import com.google.android.gms.drive.metadata.*;
import android.os.*;

public class HasFilter<T> extends AbstractFilter
{
    public static final g CREATOR;
    final MetadataBundle bIs;
    final a<T> bIt;
    final int btV;
    
    static {
        CREATOR = new g();
    }
    
    HasFilter(final int btV, final MetadataBundle bIs) {
        this.btV = btV;
        this.bIs = bIs;
        this.bIt = (a<T>)e.b(bIs);
    }
    
    @Override
    public final <F> F a(final f<F> f) {
        return f.a(this.bIt, (T)this.bIs.a((a<T>)this.bIt));
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.a(this, parcel, n);
    }
}
