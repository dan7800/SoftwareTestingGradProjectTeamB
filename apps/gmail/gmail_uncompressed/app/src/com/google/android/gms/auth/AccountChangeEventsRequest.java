package com.google.android.gms.auth;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class AccountChangeEventsRequest implements SafeParcelable
{
    public static final b CREATOR;
    final int bxf;
    String bxh;
    int bxj;
    
    static {
        CREATOR = new b();
    }
    
    public AccountChangeEventsRequest() {
        this.bxf = 1;
    }
    
    AccountChangeEventsRequest(final int bxf, final int bxj, final String bxh) {
        this.bxf = bxf;
        this.bxj = bxj;
        this.bxh = bxh;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final AccountChangeEventsRequest eq(final int n) {
        this.bxj = 0;
        return this;
    }
    
    public final AccountChangeEventsRequest fJ(final String bxh) {
        this.bxh = bxh;
        return this;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel);
    }
}
