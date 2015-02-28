package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.*;
import android.os.*;

public class AuthorizeAccessRequest implements SafeParcelable
{
    public static final Parcelable$Creator<AuthorizeAccessRequest> CREATOR;
    final DriveId bGk;
    final long bHb;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new F();
    }
    
    AuthorizeAccessRequest(final int btV, final long bHb, final DriveId bGk) {
        this.btV = btV;
        this.bHb = bHb;
        this.bGk = bGk;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        F.a(this, parcel, n);
    }
}
