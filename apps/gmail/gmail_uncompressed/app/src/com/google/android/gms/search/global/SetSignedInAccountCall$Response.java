package com.google.android.gms.search.global;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import android.os.*;

public class SetSignedInAccountCall$Response implements t, SafeParcelable
{
    public static final l CREATOR;
    final int btV;
    public Status buu;
    
    static {
        CREATOR = new l();
    }
    
    public SetSignedInAccountCall$Response() {
        this.btV = 1;
    }
    
    SetSignedInAccountCall$Response(final int btV, final Status buu) {
        this.btV = btV;
        this.buu = buu;
    }
    
    @Override
    public final Status Jk() {
        return this.buu;
    }
    
    public int describeContents() {
        final l creator = SetSignedInAccountCall$Response.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final l creator = SetSignedInAccountCall$Response.CREATOR;
        l.a(this, parcel, n);
    }
}
