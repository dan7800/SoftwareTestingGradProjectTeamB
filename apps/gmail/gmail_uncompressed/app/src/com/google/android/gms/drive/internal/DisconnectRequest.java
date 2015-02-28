package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class DisconnectRequest implements SafeParcelable
{
    public static final Parcelable$Creator<DisconnectRequest> CREATOR;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new T();
    }
    
    public DisconnectRequest() {
        this(1);
    }
    
    DisconnectRequest(final int btV) {
        this.btV = btV;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        T.a(this, parcel);
    }
}
