package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.wearable.*;
import android.os.*;

@Deprecated
public class r implements SafeParcelable
{
    public static final Parcelable$Creator<r> CREATOR;
    public final ConnectionConfiguration cnf;
    public final int statusCode;
    public final int versionCode;
    
    static {
        CREATOR = (Parcelable$Creator)new w();
    }
    
    r(final int versionCode, final int statusCode, final ConnectionConfiguration cnf) {
        this.versionCode = versionCode;
        this.statusCode = statusCode;
        this.cnf = cnf;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        w.a(this, parcel, n);
    }
}
