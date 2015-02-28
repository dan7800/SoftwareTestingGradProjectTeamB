package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class x implements SafeParcelable
{
    public static final Parcelable$Creator<x> CREATOR;
    public final m cmZ;
    public final int statusCode;
    public final int versionCode;
    
    static {
        CREATOR = (Parcelable$Creator)new B();
    }
    
    x(final int versionCode, final int statusCode, final m cmZ) {
        this.versionCode = versionCode;
        this.statusCode = statusCode;
        this.cmZ = cmZ;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        B.a(this, parcel, n);
    }
}
