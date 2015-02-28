package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class CreateContentsRequest implements SafeParcelable
{
    public static final Parcelable$Creator<CreateContentsRequest> CREATOR;
    final int bGj;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new N();
    }
    
    CreateContentsRequest(final int btV, final int bGj) {
        this.btV = btV;
        G.b(bGj == 536870912 || bGj == 805306368, "Cannot create a new read-only contents!");
        this.bGj = bGj;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        N.a(this, parcel);
    }
}
