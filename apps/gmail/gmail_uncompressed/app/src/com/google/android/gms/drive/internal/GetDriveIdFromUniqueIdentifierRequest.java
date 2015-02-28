package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class GetDriveIdFromUniqueIdentifierRequest implements SafeParcelable
{
    public static final Parcelable$Creator<GetDriveIdFromUniqueIdentifierRequest> CREATOR;
    final String bHq;
    final boolean bHr;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new ag();
    }
    
    GetDriveIdFromUniqueIdentifierRequest(final int btV, final String bHq, final boolean bHr) {
        this.btV = btV;
        this.bHq = bHq;
        this.bHr = bHr;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        ag.a(this, parcel);
    }
}
