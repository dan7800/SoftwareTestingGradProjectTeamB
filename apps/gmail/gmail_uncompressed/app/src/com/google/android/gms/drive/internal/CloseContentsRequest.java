package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.*;
import android.os.*;

public class CloseContentsRequest implements SafeParcelable
{
    public static final Parcelable$Creator<CloseContentsRequest> CREATOR;
    final Contents bHf;
    final Boolean bHj;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new M();
    }
    
    CloseContentsRequest(final int btV, final Contents bHf, final Boolean bHj) {
        this.btV = btV;
        this.bHf = bHf;
        this.bHj = bHj;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        M.a(this, parcel, n);
    }
}
