package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class ab implements SafeParcelable
{
    public static final Parcelable$Creator<ab> CREATOR;
    public final ak cmW;
    public final int statusCode;
    public final int versionCode;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    ab(final int versionCode, final int statusCode, final ak cmW) {
        this.versionCode = versionCode;
        this.statusCode = statusCode;
        this.cmW = cmW;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel, n);
    }
}
