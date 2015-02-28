package com.google.android.gms.search.global;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import android.os.*;

public class SetExperimentIdsCall$Response implements t, SafeParcelable
{
    public static final j CREATOR;
    final int btV;
    public Status buu;
    
    static {
        CREATOR = new j();
    }
    
    public SetExperimentIdsCall$Response() {
        this.btV = 1;
    }
    
    SetExperimentIdsCall$Response(final int btV, final Status buu) {
        this.btV = btV;
        this.buu = buu;
    }
    
    @Override
    public final Status Jk() {
        return this.buu;
    }
    
    public int describeContents() {
        final j creator = SetExperimentIdsCall$Response.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final j creator = SetExperimentIdsCall$Response.CREATOR;
        j.a(this, parcel, n);
    }
}
