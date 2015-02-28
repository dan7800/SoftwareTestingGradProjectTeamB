package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class z implements SafeParcelable
{
    public static final Parcelable$Creator<z> CREATOR;
    public final ParcelFileDescriptor cni;
    public final int statusCode;
    public final int versionCode;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    z(final int versionCode, final int statusCode, final ParcelFileDescriptor cni) {
        this.versionCode = versionCode;
        this.statusCode = statusCode;
        this.cni = cni;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel, n | 0x1);
    }
}
