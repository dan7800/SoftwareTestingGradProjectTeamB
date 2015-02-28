package com.google.android.gms.auth;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class AccountChangeEventsResponse implements SafeParcelable
{
    public static final c CREATOR;
    final int bxf;
    final List<AccountChangeEvent> bxl;
    
    static {
        CREATOR = new c();
    }
    
    AccountChangeEventsResponse(final int bxf, final List<AccountChangeEvent> list) {
        this.bxf = bxf;
        this.bxl = G.ae(list);
    }
    
    public final List<AccountChangeEvent> JQ() {
        return this.bxl;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel);
    }
}
