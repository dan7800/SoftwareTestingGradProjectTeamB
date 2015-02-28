package com.google.android.gms.drive.query.internal;

import com.google.android.gms.drive.metadata.internal.*;
import com.google.android.gms.drive.metadata.*;
import android.os.*;

public class FieldOnlyFilter extends AbstractFilter
{
    public static final Parcelable$Creator<FieldOnlyFilter> CREATOR;
    final MetadataBundle bIs;
    private final a<?> bIt;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    FieldOnlyFilter(final int btV, final MetadataBundle bIs) {
        this.btV = btV;
        this.bIs = bIs;
        this.bIt = e.b(bIs);
    }
    
    @Override
    public final <T> T a(final f<T> f) {
        return f.c(this.bIt);
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel, n);
    }
}
