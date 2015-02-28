package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.*;
import android.os.*;

public class OnDriveIdResponse implements SafeParcelable
{
    public static final Parcelable$Creator<OnDriveIdResponse> CREATOR;
    DriveId bHd;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new q();
    }
    
    OnDriveIdResponse(final int btV, final DriveId bHd) {
        this.btV = btV;
        this.bHd = bHd;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        q.a(this, parcel, n);
    }
}
