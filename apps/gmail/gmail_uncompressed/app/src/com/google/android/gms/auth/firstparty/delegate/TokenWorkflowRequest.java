package com.google.android.gms.auth.firstparty.delegate;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.auth.firstparty.shared.*;
import android.os.*;

public class TokenWorkflowRequest implements SafeParcelable
{
    public static final c CREATOR;
    volatile String acw;
    volatile AppDescription bxQ;
    volatile String byV;
    volatile FACLConfig byW;
    volatile PACLConfig byX;
    volatile Bundle byv;
    volatile boolean bzw;
    final int version;
    
    static {
        CREATOR = new c();
    }
    
    public TokenWorkflowRequest() {
        this.version = 1;
        this.byv = new Bundle();
    }
    
    TokenWorkflowRequest(final int version, final String byV, final String acw, final Bundle byv, final FACLConfig byW, final PACLConfig byX, final boolean bzw, final AppDescription bxQ) {
        this.version = version;
        this.byV = byV;
        this.acw = acw;
        this.byv = byv;
        this.byW = byW;
        this.byX = byX;
        this.bzw = bzw;
        this.bxQ = bxQ;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel, n);
    }
}
