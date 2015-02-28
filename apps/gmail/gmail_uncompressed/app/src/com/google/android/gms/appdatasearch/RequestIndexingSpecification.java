package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class RequestIndexingSpecification implements SafeParcelable
{
    public static final q CREATOR;
    final int btV;
    
    static {
        CREATOR = new q();
    }
    
    RequestIndexingSpecification(final int btV) {
        this.btV = btV;
    }
    
    public int describeContents() {
        final q creator = RequestIndexingSpecification.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final q creator = RequestIndexingSpecification.CREATOR;
        q.a(this, parcel);
    }
}
