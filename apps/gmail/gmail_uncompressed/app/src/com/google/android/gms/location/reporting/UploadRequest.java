package com.google.android.gms.location.reporting;

import com.google.android.gms.common.internal.safeparcel.*;
import android.accounts.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import com.google.android.gms.internal.*;
import android.os.*;

public class UploadRequest implements SafeParcelable
{
    public static final e CREATOR;
    private final int btV;
    private final Account bvG;
    private final String ceD;
    private final long ceE;
    private final long ceF;
    private final long ceG;
    private final String ceH;
    
    static {
        CREATOR = new e();
    }
    
    public UploadRequest(final int btV, final Account bvG, final String ceD, final long ceE, final long ceF, final long ceG, final String ceH) {
        this.btV = btV;
        this.bvG = bvG;
        this.ceD = ceD;
        this.ceE = ceE;
        this.ceF = ceF;
        this.ceG = ceG;
        this.ceH = ceH;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final long TP() {
        return this.ceE;
    }
    
    public final long TQ() {
        return this.ceF;
    }
    
    public final long TR() {
        return this.ceG;
    }
    
    public final String TS() {
        return this.ceH;
    }
    
    public int describeContents() {
        final e creator = UploadRequest.CREATOR;
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof UploadRequest)) {
                return false;
            }
            final UploadRequest uploadRequest = (UploadRequest)o;
            if (!this.bvG.equals((Object)uploadRequest.bvG) || !this.ceD.equals(uploadRequest.ceD) || !E.b(this.ceE, uploadRequest.ceE) || this.ceF != uploadRequest.ceF || this.ceG != uploadRequest.ceG || !E.b(this.ceH, uploadRequest.ceH)) {
                return false;
            }
        }
        return true;
    }
    
    public final String getReason() {
        return this.ceD;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bvG, this.ceD, this.ceE, this.ceF, this.ceG, this.ceH });
    }
    
    public final Account mr() {
        return this.bvG;
    }
    
    @Override
    public String toString() {
        return "UploadRequest{mVersionCode=" + this.btV + ", mAccount=" + aZ.e(this.bvG) + ", mReason='" + this.ceD + '\'' + ", mDurationMillis=" + this.ceE + ", mMovingLatencyMillis=" + this.ceF + ", mStationaryLatencyMillis=" + this.ceG + ", mAppSpecificKey='" + this.ceH + '\'' + '}';
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final e creator = UploadRequest.CREATOR;
        e.a(this, parcel, n);
    }
}
