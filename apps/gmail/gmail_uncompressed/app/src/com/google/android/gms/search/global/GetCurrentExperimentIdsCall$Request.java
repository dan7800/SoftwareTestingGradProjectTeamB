package com.google.android.gms.search.global;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class GetCurrentExperimentIdsCall$Request implements SafeParcelable
{
    public static final a CREATOR;
    final int btV;
    
    static {
        CREATOR = new a();
    }
    
    public GetCurrentExperimentIdsCall$Request() {
        this.btV = 1;
    }
    
    GetCurrentExperimentIdsCall$Request(final int btV) {
        this.btV = btV;
    }
    
    public int describeContents() {
        final a creator = GetCurrentExperimentIdsCall$Request.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final a creator = GetCurrentExperimentIdsCall$Request.CREATOR;
        a.a(this, parcel);
    }
}
