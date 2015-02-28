package com.google.android.gms.search.global;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class SetSignedInAccountCall$Request implements SafeParcelable
{
    public static final k CREATOR;
    public String acw;
    final int btV;
    public String ckr;
    public int flags;
    
    static {
        CREATOR = new k();
    }
    
    public SetSignedInAccountCall$Request() {
        this.btV = 1;
    }
    
    SetSignedInAccountCall$Request(final int btV, final String acw, final String ckr, final int flags) {
        this.btV = btV;
        this.acw = acw;
        this.ckr = ckr;
        this.flags = flags;
    }
    
    public int describeContents() {
        final k creator = SetSignedInAccountCall$Request.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final k creator = SetSignedInAccountCall$Request.CREATOR;
        k.a(this, parcel);
    }
}
