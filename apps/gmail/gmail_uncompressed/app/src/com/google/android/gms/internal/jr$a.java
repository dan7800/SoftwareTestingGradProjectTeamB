package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class jr$a implements SafeParcelable
{
    public static final U CREATOR;
    final String bTu;
    final int bTv;
    final int versionCode;
    
    static {
        CREATOR = new U();
    }
    
    jr$a(final int versionCode, final String bTu, final int bTv) {
        this.versionCode = versionCode;
        this.bTu = bTu;
        this.bTv = bTv;
    }
    
    jr$a(final String bTu, final int bTv) {
        this.versionCode = 1;
        this.bTu = bTu;
        this.bTv = bTv;
    }
    
    public final int describeContents() {
        final U creator = jr$a.CREATOR;
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        final U creator = jr$a.CREATOR;
        U.a(this, parcel);
    }
}
