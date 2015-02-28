package com.google.android.gms.location.reporting;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public final class UploadRequestResult implements SafeParcelable
{
    public static final f CREATOR;
    private final int btV;
    private final int ceI;
    private final long ceJ;
    
    static {
        CREATOR = new f();
    }
    
    UploadRequestResult(final int btV, final int ceI, final long ceJ) {
        this.btV = btV;
        this.ceI = ceI;
        this.ceJ = ceJ;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final long TT() {
        return this.ceJ;
    }
    
    public final int describeContents() {
        final f creator = UploadRequestResult.CREATOR;
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o instanceof UploadRequestResult) {
            final UploadRequestResult uploadRequestResult = (UploadRequestResult)o;
            if (this.ceJ == uploadRequestResult.ceJ && this.ceI == uploadRequestResult.ceI) {
                return true;
            }
        }
        return false;
    }
    
    public final int getResultCode() {
        return this.ceI;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.ceI, this.ceJ });
    }
    
    @Override
    public final String toString() {
        return "Result{mVersionCode=" + this.btV + ", mResultCode=" + this.ceI + ", mRequestId=" + this.ceJ + '}';
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        final f creator = UploadRequestResult.CREATOR;
        f.a(this, parcel);
    }
}
