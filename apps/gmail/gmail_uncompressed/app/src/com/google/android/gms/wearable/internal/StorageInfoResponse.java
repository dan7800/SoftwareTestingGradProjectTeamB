package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class StorageInfoResponse implements SafeParcelable
{
    public static final Parcelable$Creator<StorageInfoResponse> CREATOR;
    public final long cmU;
    public final List<PackageStorageInfo> cmV;
    public final int statusCode;
    public final int versionCode;
    
    static {
        CREATOR = (Parcelable$Creator)new n();
    }
    
    StorageInfoResponse(final int versionCode, final int statusCode, final long cmU, final List<PackageStorageInfo> cmV) {
        this.versionCode = versionCode;
        this.statusCode = statusCode;
        this.cmU = cmU;
        this.cmV = cmV;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        n.a(this, parcel);
    }
}
