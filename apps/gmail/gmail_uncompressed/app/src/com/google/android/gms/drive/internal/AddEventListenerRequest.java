package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.*;
import android.os.*;

public class AddEventListenerRequest implements SafeParcelable
{
    public static final Parcelable$Creator<AddEventListenerRequest> CREATOR;
    final DriveId bGk;
    final int bHa;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    AddEventListenerRequest(final int btV, final DriveId bGk, final int bHa) {
        this.btV = btV;
        this.bGk = bGk;
        this.bHa = bHa;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel, n);
    }
}
