package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class p implements SafeParcelable
{
    public static final Parcelable$Creator<p> CREATOR;
    public final int cne;
    public final int statusCode;
    public final int versionCode;
    
    static {
        CREATOR = (Parcelable$Creator)new u();
    }
    
    p(final int versionCode, final int statusCode, final int cne) {
        this.versionCode = versionCode;
        this.statusCode = statusCode;
        this.cne = cne;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        u.a(this, parcel);
    }
}
