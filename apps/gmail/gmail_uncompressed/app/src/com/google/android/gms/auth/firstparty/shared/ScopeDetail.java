package com.google.android.gms.auth.firstparty.shared;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class ScopeDetail implements SafeParcelable
{
    public static final j CREATOR;
    String bAj;
    String bAk;
    List<String> bAl;
    public FACLData bAm;
    String bxU;
    String byV;
    String description;
    final int version;
    
    static {
        CREATOR = new j();
    }
    
    ScopeDetail(final int version, final String description, final String bxU, final String bAj, final String bAk, final String byV, final List<String> bAl, final FACLData bAm) {
        this.version = version;
        this.description = description;
        this.bxU = bxU;
        this.bAj = bAj;
        this.bAk = bAk;
        this.byV = byV;
        this.bAl = bAl;
        this.bAm = bAm;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.a(this, parcel, n);
    }
}
