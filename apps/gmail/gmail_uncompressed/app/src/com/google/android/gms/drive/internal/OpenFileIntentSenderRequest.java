package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.*;
import android.os.*;

public class OpenFileIntentSenderRequest implements SafeParcelable
{
    public static final Parcelable$Creator<OpenFileIntentSenderRequest> CREATOR;
    final String bGC;
    final String[] bGD;
    final DriveId bGE;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new B();
    }
    
    OpenFileIntentSenderRequest(final int btV, final String bgc, final String[] bgd, final DriveId bge) {
        this.btV = btV;
        this.bGC = bgc;
        this.bGD = bgd;
        this.bGE = bge;
    }
    
    public OpenFileIntentSenderRequest(final String s, final String[] array, final DriveId driveId) {
        this(1, s, array, driveId);
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        B.a(this, parcel, n);
    }
}
