package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class an implements SafeParcelable
{
    public static final Parcelable$Creator<an> CREATOR;
    public final m cmZ;
    public final int statusCode;
    public final int versionCode;
    
    static {
        CREATOR = (Parcelable$Creator)new j();
    }
    
    an(final int versionCode, final int statusCode, final m cmZ) {
        this.versionCode = versionCode;
        this.statusCode = statusCode;
        this.cmZ = cmZ;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.a(this, parcel, n);
    }
}
