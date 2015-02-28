package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class OnLoadRealtimeResponse implements SafeParcelable
{
    public static final Parcelable$Creator<OnLoadRealtimeResponse> CREATOR;
    final boolean bHE;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new w();
    }
    
    OnLoadRealtimeResponse(final int btV, final boolean bhe) {
        this.btV = btV;
        this.bHE = bhe;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        w.a(this, parcel);
    }
}
