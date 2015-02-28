package com.google.android.gms.auth.firstparty.shared;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class PlusProfileCreationResponse implements SafeParcelable
{
    public static final i CREATOR;
    String bAi;
    final int version;
    
    static {
        CREATOR = new i();
    }
    
    PlusProfileCreationResponse(final int version, final String bAi) {
        this.version = version;
        this.bAi = bAi;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        i.a(this, parcel);
    }
}
