package com.google.android.gms.search.global;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import android.os.*;

public class GetCurrentExperimentIdsCall$Response implements t, SafeParcelable
{
    public static final b CREATOR;
    final int btV;
    public Status buu;
    public int[] ckk;
    
    static {
        CREATOR = new b();
    }
    
    public GetCurrentExperimentIdsCall$Response() {
        this.btV = 1;
    }
    
    GetCurrentExperimentIdsCall$Response(final int btV, final Status buu, final int[] ckk) {
        this.btV = btV;
        this.buu = buu;
        this.ckk = ckk;
    }
    
    @Override
    public final Status Jk() {
        return this.buu;
    }
    
    public int describeContents() {
        final b creator = GetCurrentExperimentIdsCall$Response.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final b creator = GetCurrentExperimentIdsCall$Response.CREATOR;
        b.a(this, parcel, n);
    }
}
