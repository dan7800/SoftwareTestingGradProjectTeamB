package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.*;
import com.google.android.gms.drive.metadata.internal.*;
import android.os.*;

public class UpdateMetadataRequest implements SafeParcelable
{
    public static final Parcelable$Creator<UpdateMetadataRequest> CREATOR;
    final DriveId bHd;
    final MetadataBundle bHe;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new I();
    }
    
    UpdateMetadataRequest(final int btV, final DriveId bHd, final MetadataBundle bHe) {
        this.btV = btV;
        this.bHd = bHd;
        this.bHe = bHe;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        I.a(this, parcel, n);
    }
}
