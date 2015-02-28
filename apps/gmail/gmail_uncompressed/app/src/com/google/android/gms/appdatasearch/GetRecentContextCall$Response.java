package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.api.*;
import java.util.*;
import android.os.*;

public class GetRecentContextCall$Response implements t, SafeParcelable
{
    public static final G CREATOR;
    final int btV;
    public Status buu;
    public List<UsageInfo> buv;
    
    static {
        CREATOR = new G();
    }
    
    public GetRecentContextCall$Response() {
        this.btV = 1;
    }
    
    GetRecentContextCall$Response(final int btV, final Status buu, final List<UsageInfo> buv) {
        this.btV = btV;
        this.buu = buu;
        this.buv = buv;
    }
    
    @Override
    public final Status Jk() {
        return this.buu;
    }
    
    public int describeContents() {
        final G creator = GetRecentContextCall$Response.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final G creator = GetRecentContextCall$Response.CREATOR;
        G.a(this, parcel, n);
    }
}
