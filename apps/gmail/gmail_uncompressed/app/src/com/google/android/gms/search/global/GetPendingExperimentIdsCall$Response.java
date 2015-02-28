package com.google.android.gms.search.global;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import android.os.*;

public class GetPendingExperimentIdsCall$Response implements t, SafeParcelable
{
    public static final h CREATOR;
    final int btV;
    public Status buu;
    public int[] ckk;
    
    static {
        CREATOR = new h();
    }
    
    public GetPendingExperimentIdsCall$Response() {
        this.btV = 1;
    }
    
    GetPendingExperimentIdsCall$Response(final int btV, final Status buu, final int[] ckk) {
        this.btV = btV;
        this.buu = buu;
        this.ckk = ckk;
    }
    
    @Override
    public final Status Jk() {
        return this.buu;
    }
    
    public int describeContents() {
        final h creator = GetPendingExperimentIdsCall$Response.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final h creator = GetPendingExperimentIdsCall$Response.CREATOR;
        h.a(this, parcel, n);
    }
}
