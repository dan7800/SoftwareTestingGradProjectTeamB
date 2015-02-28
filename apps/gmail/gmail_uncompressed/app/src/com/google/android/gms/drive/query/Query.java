package com.google.android.gms.drive.query;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.query.internal.*;
import java.util.*;
import android.os.*;

public class Query implements SafeParcelable
{
    public static final Parcelable$Creator<Query> CREATOR;
    final LogicalFilter bIl;
    final String bIm;
    final SortOrder bIn;
    final List<String> bIo;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    Query(final int btV, final LogicalFilter bIl, final String bIm, final SortOrder bIn, final List<String> bIo) {
        this.btV = btV;
        this.bIl = bIl;
        this.bIm = bIm;
        this.bIn = bIn;
        this.bIo = bIo;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public String toString() {
        return String.format(Locale.US, "Query[%s,%s,PageToken=%s]", this.bIl, this.bIn, this.bIm);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel, n);
    }
}
