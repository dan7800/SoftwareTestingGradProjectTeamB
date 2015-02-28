package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.*;
import android.os.*;

public class OnStorageStatsResponse implements SafeParcelable
{
    public static final Parcelable$Creator<OnStorageStatsResponse> CREATOR;
    StorageStats bHF;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new y();
    }
    
    OnStorageStatsResponse(final int btV, final StorageStats bhf) {
        this.btV = btV;
        this.bHF = bhf;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        y.a(this, parcel, n);
    }
}
