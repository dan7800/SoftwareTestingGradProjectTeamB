package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.metadata.internal.*;
import com.google.android.gms.drive.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class CreateFolderRequest implements SafeParcelable
{
    public static final Parcelable$Creator<CreateFolderRequest> CREATOR;
    final MetadataBundle bHk;
    final DriveId bHm;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new Q();
    }
    
    CreateFolderRequest(final int btV, final DriveId driveId, final MetadataBundle metadataBundle) {
        this.btV = btV;
        this.bHm = G.ae(driveId);
        this.bHk = G.ae(metadataBundle);
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        Q.a(this, parcel, n);
    }
}
