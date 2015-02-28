package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class ar implements SafeParcelable
{
    public static final Parcelable$Creator<ar> CREATOR;
    public final int cnb;
    public final int statusCode;
    public final int versionCode;
    
    static {
        CREATOR = (Parcelable$Creator)new l();
    }
    
    ar(final int versionCode, final int statusCode, final int cnb) {
        this.versionCode = versionCode;
        this.statusCode = statusCode;
        this.cnb = cnb;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        l.a(this, parcel);
    }
}
