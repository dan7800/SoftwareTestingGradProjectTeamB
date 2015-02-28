package com.google.android.gms.auth;

import com.google.android.gms.common.internal.safeparcel.*;
import android.app.*;
import android.os.*;

public class RecoveryDecision implements SafeParcelable
{
    public static final g CREATOR;
    final int btV;
    public PendingIntent bxr;
    public boolean bxs;
    public boolean bxt;
    public boolean bxu;
    public PendingIntent bxv;
    
    static {
        CREATOR = new g();
    }
    
    public RecoveryDecision() {
        this.btV = 1;
    }
    
    RecoveryDecision(final int btV, final PendingIntent bxr, final boolean bxs, final boolean bxt, final boolean bxu, final PendingIntent bxv) {
        this.btV = btV;
        this.bxr = bxr;
        this.bxs = bxs;
        this.bxt = bxt;
        this.bxu = bxu;
        this.bxv = bxv;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.a(this, parcel, n);
    }
}
