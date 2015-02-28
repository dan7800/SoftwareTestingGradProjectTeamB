package com.google.android.gms.lockbox;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class LockboxOptInOptions implements SafeParcelable
{
    public static final a CREATOR;
    final int btV;
    int ceK;
    int ceL;
    
    static {
        CREATOR = new a();
    }
    
    LockboxOptInOptions(final int btV, final int ceK, final int ceL) {
        this.btV = btV;
        this.ceK = ceK;
        this.ceL = ceL;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
