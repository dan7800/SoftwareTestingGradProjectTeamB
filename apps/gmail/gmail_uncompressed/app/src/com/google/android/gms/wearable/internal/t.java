package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.wearable.*;
import android.os.*;

public class t implements SafeParcelable
{
    public static final Parcelable$Creator<t> CREATOR;
    public final ConnectionConfiguration[] cng;
    public final int statusCode;
    public final int versionCode;
    
    static {
        CREATOR = (Parcelable$Creator)new y();
    }
    
    t(final int versionCode, final int statusCode, final ConnectionConfiguration[] cng) {
        this.versionCode = versionCode;
        this.statusCode = statusCode;
        this.cng = cng;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        y.a(this, parcel, n);
    }
}
