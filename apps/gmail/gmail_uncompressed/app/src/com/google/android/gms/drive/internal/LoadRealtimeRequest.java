package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.*;
import android.os.*;

public class LoadRealtimeRequest implements SafeParcelable
{
    public static final Parcelable$Creator<LoadRealtimeRequest> CREATOR;
    final DriveId bGk;
    final boolean bHt;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new m();
    }
    
    LoadRealtimeRequest(final int btV, final DriveId bGk, final boolean bHt) {
        this.btV = btV;
        this.bGk = bGk;
        this.bHt = bHt;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        m.a(this, parcel, n);
    }
}
