package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.*;
import android.os.*;

public class OnContentsResponse implements SafeParcelable
{
    public static final Parcelable$Creator<OnContentsResponse> CREATOR;
    final Contents bHu;
    final boolean bHv;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new o();
    }
    
    OnContentsResponse(final int btV, final Contents bHu, final boolean bHv) {
        this.btV = btV;
        this.bHu = bHu;
        this.bHv = bHv;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        o.a(this, parcel, n);
    }
}
