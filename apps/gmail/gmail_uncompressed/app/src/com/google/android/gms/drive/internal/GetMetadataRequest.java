package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.*;
import android.os.*;

public class GetMetadataRequest implements SafeParcelable
{
    public static final Parcelable$Creator<GetMetadataRequest> CREATOR;
    final DriveId bHd;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    GetMetadataRequest(final int btV, final DriveId bHd) {
        this.btV = btV;
        this.bHd = bHd;
    }
    
    public GetMetadataRequest(final DriveId driveId) {
        this(1, driveId);
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel, n);
    }
}
