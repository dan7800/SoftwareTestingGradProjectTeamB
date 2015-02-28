package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class OnSyncMoreResponse implements SafeParcelable
{
    public static final Parcelable$Creator<OnSyncMoreResponse> CREATOR;
    final boolean bHC;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new z();
    }
    
    OnSyncMoreResponse(final int btV, final boolean bhc) {
        this.btV = btV;
        this.bHC = bhc;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        z.a(this, parcel);
    }
}
