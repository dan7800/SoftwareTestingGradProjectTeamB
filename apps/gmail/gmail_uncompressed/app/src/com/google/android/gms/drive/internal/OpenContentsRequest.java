package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.*;
import android.os.*;

public class OpenContentsRequest implements SafeParcelable
{
    public static final Parcelable$Creator<OpenContentsRequest> CREATOR;
    final int bGj;
    final int bHG;
    final DriveId bHd;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new A();
    }
    
    OpenContentsRequest(final int btV, final DriveId bHd, final int bGj, final int bhg) {
        this.btV = btV;
        this.bHd = bHd;
        this.bGj = bGj;
        this.bHG = bhg;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        A.a(this, parcel, n);
    }
}
