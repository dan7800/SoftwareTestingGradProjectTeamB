package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class SuggestSpecification implements SafeParcelable
{
    public static final v CREATOR;
    final int btV;
    
    static {
        CREATOR = new v();
    }
    
    public SuggestSpecification() {
        this(2);
    }
    
    SuggestSpecification(final int btV) {
        this.btV = btV;
    }
    
    public int describeContents() {
        final v creator = SuggestSpecification.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final v creator = SuggestSpecification.CREATOR;
        v.a(this, parcel);
    }
}
