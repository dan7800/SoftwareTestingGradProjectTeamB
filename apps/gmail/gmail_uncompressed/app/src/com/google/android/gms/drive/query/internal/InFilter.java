package com.google.android.gms.drive.query.internal;

import com.google.android.gms.drive.metadata.internal.*;
import java.util.*;
import com.google.android.gms.drive.metadata.*;
import android.os.*;

public class InFilter<T> extends AbstractFilter
{
    public static final h CREATOR;
    private final g<T> bID;
    final MetadataBundle bIs;
    final int btV;
    
    static {
        CREATOR = new h();
    }
    
    InFilter(final int btV, final MetadataBundle bIs) {
        this.btV = btV;
        this.bIs = bIs;
        this.bID = (g<T>)(g)e.b(bIs);
    }
    
    @Override
    public final <F> F a(final f<F> f) {
        return f.a(this.bID, (T)this.bIs.a(this.bID).iterator().next());
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.a(this, parcel, n);
    }
}
