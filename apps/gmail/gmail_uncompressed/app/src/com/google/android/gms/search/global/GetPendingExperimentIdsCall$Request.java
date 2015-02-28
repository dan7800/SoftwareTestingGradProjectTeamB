package com.google.android.gms.search.global;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class GetPendingExperimentIdsCall$Request implements SafeParcelable
{
    public static final g CREATOR;
    final int btV;
    
    static {
        CREATOR = new g();
    }
    
    public GetPendingExperimentIdsCall$Request() {
        this.btV = 1;
    }
    
    GetPendingExperimentIdsCall$Request(final int btV) {
        this.btV = btV;
    }
    
    public int describeContents() {
        final g creator = GetPendingExperimentIdsCall$Request.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final g creator = GetPendingExperimentIdsCall$Request.CREATOR;
        g.a(this, parcel);
    }
}
