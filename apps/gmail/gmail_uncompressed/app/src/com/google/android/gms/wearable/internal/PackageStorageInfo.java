package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class PackageStorageInfo implements SafeParcelable
{
    public static final Parcelable$Creator<PackageStorageInfo> CREATOR;
    public final long cmU;
    public final String label;
    public final String packageName;
    public final int versionCode;
    
    static {
        CREATOR = (Parcelable$Creator)new i();
    }
    
    PackageStorageInfo(final int versionCode, final String packageName, final String label, final long cmU) {
        this.versionCode = versionCode;
        this.packageName = packageName;
        this.label = label;
        this.cmU = cmU;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        i.a(this, parcel);
    }
}
