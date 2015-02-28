package com.google.android.gms.wallet;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class NotifyTransactionStatusRequest implements SafeParcelable
{
    public static final Parcelable$Creator<NotifyTransactionStatusRequest> CREATOR;
    final int btV;
    String ckQ;
    String clR;
    int status;
    
    static {
        CREATOR = (Parcelable$Creator)new m();
    }
    
    NotifyTransactionStatusRequest() {
        this.btV = 1;
    }
    
    NotifyTransactionStatusRequest(final int btV, final String ckQ, final int status, final String clR) {
        this.btV = btV;
        this.ckQ = ckQ;
        this.status = status;
        this.clR = clR;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        m.a(this, parcel);
    }
}
