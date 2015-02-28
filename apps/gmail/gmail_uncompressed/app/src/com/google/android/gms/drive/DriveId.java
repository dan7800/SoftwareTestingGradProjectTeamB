package com.google.android.gms.drive;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import com.google.android.gms.drive.internal.*;
import com.google.android.gms.internal.*;
import android.util.*;
import android.os.*;

public class DriveId implements SafeParcelable
{
    public static final Parcelable$Creator<DriveId> CREATOR;
    private volatile String bGA;
    final String bGx;
    final long bGy;
    final long bGz;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new p();
    }
    
    DriveId(final int btV, final String bGx, final long bGy, final long bGz) {
        this.bGA = null;
        this.btV = btV;
        this.bGx = bGx;
        G.ce(!"".equals(bGx));
        boolean b = false;
        Label_0058: {
            if (bGx == null) {
                final long n = lcmp(bGy, -1L);
                b = false;
                if (n == 0) {
                    break Label_0058;
                }
            }
            b = true;
        }
        G.ce(b);
        this.bGy = bGy;
        this.bGz = bGz;
    }
    
    public final String LV() {
        return this.bGx;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o instanceof DriveId) {
            final DriveId driveId = (DriveId)o;
            if (driveId.bGz != this.bGz) {
                Z.ak("DriveId", "Attempt to compare invalid DriveId detected. Has local storage been cleared?");
                return false;
            }
            if (driveId.bGy == -1L && this.bGy == -1L) {
                return driveId.bGx.equals(this.bGx);
            }
            if (driveId.bGy == this.bGy) {
                return true;
            }
        }
        return false;
    }
    
    @Override
    public int hashCode() {
        if (this.bGy == -1L) {
            return this.bGx.hashCode();
        }
        return (String.valueOf(this.bGz) + String.valueOf(this.bGy)).hashCode();
    }
    
    @Override
    public String toString() {
        if (this.bGA == null) {
            final n n = new n();
            n.versionCode = this.btV;
            String bGx;
            if (this.bGx == null) {
                bGx = "";
            }
            else {
                bGx = this.bGx;
            }
            n.bHK = bGx;
            n.bHL = this.bGy;
            n.bHM = this.bGz;
            this.bGA = "DriveId:" + Base64.encodeToString(dt.b(n), 10);
        }
        return this.bGA;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        p.a(this, parcel);
    }
}
