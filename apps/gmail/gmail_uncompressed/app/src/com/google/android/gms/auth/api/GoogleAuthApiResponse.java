package com.google.android.gms.auth.api;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class GoogleAuthApiResponse implements SafeParcelable
{
    public static final b CREATOR;
    final Bundle bxK;
    final byte[] bxL;
    final int responseCode;
    final int versionCode;
    
    static {
        CREATOR = new b();
    }
    
    public GoogleAuthApiResponse(final int versionCode, final int responseCode, final Bundle bxK, final byte[] bxL) {
        this.versionCode = versionCode;
        this.responseCode = responseCode;
        this.bxK = bxK;
        this.bxL = bxL;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel);
    }
}
