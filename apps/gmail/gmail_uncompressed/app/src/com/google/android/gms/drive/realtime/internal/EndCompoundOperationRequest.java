package com.google.android.gms.drive.realtime.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class EndCompoundOperationRequest implements SafeParcelable
{
    public static final Parcelable$Creator<EndCompoundOperationRequest> CREATOR;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    public EndCompoundOperationRequest() {
        this(1);
    }
    
    EndCompoundOperationRequest(final int btV) {
        this.btV = btV;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.a(this, parcel);
    }
}
