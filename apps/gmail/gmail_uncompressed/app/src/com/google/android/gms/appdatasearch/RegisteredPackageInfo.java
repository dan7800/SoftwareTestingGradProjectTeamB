package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class RegisteredPackageInfo implements SafeParcelable
{
    public static final p CREATOR;
    final int btV;
    public final long bvX;
    public final boolean bvY;
    public final long bvZ;
    public final String packageName;
    
    static {
        CREATOR = new p();
    }
    
    RegisteredPackageInfo(final int btV, final String packageName, final long bvX, final boolean bvY, final long bvZ) {
        this.btV = btV;
        this.packageName = packageName;
        this.bvX = bvX;
        this.bvY = bvY;
        this.bvZ = bvZ;
    }
    
    public int describeContents() {
        final p creator = RegisteredPackageInfo.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final p creator = RegisteredPackageInfo.CREATOR;
        p.a(this, parcel);
    }
}
