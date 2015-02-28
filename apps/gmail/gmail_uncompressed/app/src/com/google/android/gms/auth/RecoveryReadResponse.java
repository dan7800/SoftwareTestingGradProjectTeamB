package com.google.android.gms.auth;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class RecoveryReadResponse implements SafeParcelable
{
    public static final h CREATOR;
    public String bmI;
    final int btV;
    public String bxA;
    public String bxB;
    public String bxw;
    public String bxx;
    public String bxy;
    public List<Country> bxz;
    
    static {
        CREATOR = new h();
    }
    
    public RecoveryReadResponse() {
        this.btV = 1;
    }
    
    RecoveryReadResponse(final int btV, final String bxw, final String bxx, final String bxy, final List<Country> bxz, final String bxA, final String bmI, final String bxB) {
        this.btV = btV;
        this.bxw = bxw;
        this.bxx = bxx;
        this.bxy = bxy;
        this.bxz = bxz;
        this.bxA = bxA;
        this.bmI = bmI;
        this.bxB = bxB;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.a(this, parcel);
    }
}
