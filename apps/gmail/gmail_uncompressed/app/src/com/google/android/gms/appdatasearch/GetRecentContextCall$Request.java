package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.accounts.*;
import android.os.*;

public class GetRecentContextCall$Request implements SafeParcelable
{
    public static final F CREATOR;
    final int btV;
    public final Account but;
    
    static {
        CREATOR = new F();
    }
    
    public GetRecentContextCall$Request() {
        this((byte)0);
    }
    
    private GetRecentContextCall$Request(final byte b) {
        this(1, null);
    }
    
    GetRecentContextCall$Request(final int btV, final Account but) {
        this.btV = btV;
        this.but = but;
    }
    
    public int describeContents() {
        final F creator = GetRecentContextCall$Request.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final F creator = GetRecentContextCall$Request.CREATOR;
        F.a(this, parcel, n);
    }
}
