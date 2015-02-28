package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.*;
import android.os.*;

public class ListParentsRequest implements SafeParcelable
{
    public static final Parcelable$Creator<ListParentsRequest> CREATOR;
    final DriveId bHs;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new l();
    }
    
    ListParentsRequest(final int btV, final DriveId bHs) {
        this.btV = btV;
        this.bHs = bHs;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        l.a(this, parcel, n);
    }
}
