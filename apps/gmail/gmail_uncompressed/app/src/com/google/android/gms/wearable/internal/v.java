package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class v implements SafeParcelable
{
    public static final Parcelable$Creator<v> CREATOR;
    public final List<ak> cnh;
    public final int statusCode;
    public final int versionCode;
    
    static {
        CREATOR = (Parcelable$Creator)new A();
    }
    
    v(final int versionCode, final int statusCode, final List<ak> cnh) {
        this.versionCode = versionCode;
        this.statusCode = statusCode;
        this.cnh = cnh;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        A.a(this, parcel);
    }
}
