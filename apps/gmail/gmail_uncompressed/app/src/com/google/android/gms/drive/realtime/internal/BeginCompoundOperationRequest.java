package com.google.android.gms.drive.realtime.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class BeginCompoundOperationRequest implements SafeParcelable
{
    public static final Parcelable$Creator<BeginCompoundOperationRequest> CREATOR;
    final boolean bIP;
    final boolean bIQ;
    final int btV;
    final String mName;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    BeginCompoundOperationRequest(final int btV, final boolean bip, final String mName, final boolean biq) {
        this.btV = btV;
        this.bIP = bip;
        this.mName = mName;
        this.bIQ = biq;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
