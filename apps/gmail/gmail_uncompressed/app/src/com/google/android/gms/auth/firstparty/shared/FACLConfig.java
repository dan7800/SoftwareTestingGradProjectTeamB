package com.google.android.gms.auth.firstparty.shared;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class FACLConfig implements SafeParcelable
{
    public static final e CREATOR;
    private static final String bye;
    boolean bzU;
    String bzV;
    boolean bzW;
    boolean bzX;
    boolean bzY;
    boolean bzZ;
    final int version;
    
    static {
        bye = "[" + FACLConfig.class.getSimpleName() + "]";
        CREATOR = new e();
    }
    
    FACLConfig(final int version, final boolean bzU, final String bzV, final boolean bzW, final boolean bzX, final boolean bzY, final boolean bzZ) {
        this.version = version;
        this.bzU = bzU;
        this.bzV = bzV;
        this.bzW = bzW;
        this.bzX = bzX;
        this.bzY = bzY;
        this.bzZ = bzZ;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.a(this, parcel);
    }
}
