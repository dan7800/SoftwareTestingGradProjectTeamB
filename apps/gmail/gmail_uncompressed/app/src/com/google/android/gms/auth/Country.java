package com.google.android.gms.auth;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class Country implements SafeParcelable
{
    public static final f CREATOR;
    public String PP;
    final int btV;
    public String mName;
    
    static {
        CREATOR = new f();
    }
    
    public Country() {
        this.btV = 1;
    }
    
    Country(final int btV, final String mName, final String pp) {
        this.btV = btV;
        this.mName = mName;
        this.PP = pp;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.a(this, parcel);
    }
}
