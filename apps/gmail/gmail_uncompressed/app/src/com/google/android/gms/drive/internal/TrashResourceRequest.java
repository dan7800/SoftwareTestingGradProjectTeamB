package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.*;
import android.os.*;

public class TrashResourceRequest implements SafeParcelable
{
    public static final Parcelable$Creator<TrashResourceRequest> CREATOR;
    final DriveId bHd;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new H();
    }
    
    TrashResourceRequest(final int btV, final DriveId bHd) {
        this.btV = btV;
        this.bHd = bHd;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        H.a(this, parcel, n);
    }
}
