package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.*;
import java.util.*;
import android.os.*;

public class SetResourceParentsRequest implements SafeParcelable
{
    public static final Parcelable$Creator<SetResourceParentsRequest> CREATOR;
    final DriveId bHI;
    final List<DriveId> bHJ;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new G();
    }
    
    SetResourceParentsRequest(final int btV, final DriveId bhi, final List<DriveId> bhj) {
        this.btV = btV;
        this.bHI = bhi;
        this.bHJ = bhj;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        G.a(this, parcel, n);
    }
}
