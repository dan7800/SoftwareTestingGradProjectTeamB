package com.google.android.gms.auth.firstparty.delegate;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.auth.firstparty.shared.*;
import android.os.*;

public class ConfirmCredentialsWorkflowRequest implements SafeParcelable
{
    public static final a CREATOR;
    String acw;
    AppDescription bxQ;
    Bundle byv;
    final int version;
    
    static {
        CREATOR = new a();
    }
    
    public ConfirmCredentialsWorkflowRequest() {
        this.version = 1;
        this.byv = new Bundle();
    }
    
    ConfirmCredentialsWorkflowRequest(final int version, final String acw, final AppDescription bxQ, final Bundle byv) {
        this.version = version;
        this.acw = acw;
        this.bxQ = bxQ;
        this.byv = byv;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel, n);
    }
}
