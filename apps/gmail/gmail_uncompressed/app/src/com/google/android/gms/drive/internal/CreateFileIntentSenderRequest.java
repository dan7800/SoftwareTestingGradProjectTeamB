package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.*;
import com.google.android.gms.drive.metadata.internal.*;
import android.os.*;

public class CreateFileIntentSenderRequest implements SafeParcelable
{
    public static final Parcelable$Creator<CreateFileIntentSenderRequest> CREATOR;
    final String bGC;
    final DriveId bGE;
    final int bGi;
    final MetadataBundle bHk;
    final Integer bHl;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new O();
    }
    
    CreateFileIntentSenderRequest(final int btV, final MetadataBundle bHk, final int bGi, final String bgc, final DriveId bge, final Integer bHl) {
        this.btV = btV;
        this.bHk = bHk;
        this.bGi = bGi;
        this.bGC = bgc;
        this.bGE = bge;
        this.bHl = bHl;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        O.a(this, parcel, n);
    }
}
