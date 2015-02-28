package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.metadata.internal.*;
import com.google.android.gms.drive.*;
import android.os.*;

public class CloseContentsAndUpdateMetadataRequest implements SafeParcelable
{
    public static final Parcelable$Creator<CloseContentsAndUpdateMetadataRequest> CREATOR;
    final DriveId bHd;
    final MetadataBundle bHe;
    final Contents bHf;
    final boolean bHg;
    final String bHh;
    final int bHi;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new L();
    }
    
    CloseContentsAndUpdateMetadataRequest(final int btV, final DriveId bHd, final MetadataBundle bHe, final Contents bHf, final boolean bHg, final String bHh, final int bHi) {
        this.btV = btV;
        this.bHd = bHd;
        this.bHe = bHe;
        this.bHf = bHf;
        this.bHg = bHg;
        this.bHh = bHh;
        this.bHi = bHi;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        L.a(this, parcel, n);
    }
}
