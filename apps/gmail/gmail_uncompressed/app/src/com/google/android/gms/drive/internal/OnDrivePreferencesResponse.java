package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.*;
import android.os.*;

public class OnDrivePreferencesResponse implements SafeParcelable
{
    public static final Parcelable$Creator<OnDrivePreferencesResponse> CREATOR;
    DrivePreferences bHy;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new r();
    }
    
    OnDrivePreferencesResponse(final int btV, final DrivePreferences bHy) {
        this.btV = btV;
        this.bHy = bHy;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        r.a(this, parcel, n);
    }
}
